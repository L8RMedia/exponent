/**
 * Copyright (c) 2015-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 */

#import "ABI8_0_0RCTAdditionAnimatedNode.h"

@implementation ABI8_0_0RCTAdditionAnimatedNode

- (void)performUpdate
{
  [super performUpdate];
  NSArray<NSNumber *> *inputNodes = self.config[@"input"];
  if (inputNodes.count > 1) {
    ABI8_0_0RCTValueAnimatedNode *parent1 = (ABI8_0_0RCTValueAnimatedNode *)self.parentNodes[inputNodes[0]];
    ABI8_0_0RCTValueAnimatedNode *parent2 = (ABI8_0_0RCTValueAnimatedNode *)self.parentNodes[inputNodes[1]];
    if ([parent1 isKindOfClass:[ABI8_0_0RCTValueAnimatedNode class]] &&
        [parent2 isKindOfClass:[ABI8_0_0RCTValueAnimatedNode class]]) {
      self.value = parent1.value + parent2.value;
    }
  }
}

@end
