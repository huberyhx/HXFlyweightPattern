//
//  HXFlowerModel.m
//  HXFlyweightPattern
//
//  Created by hubery on 2019/4/1.
//  Copyright © 2019年 hubery. All rights reserved.
//

#import "HXFlowerModel.h"

@implementation HXFlowerModel

- (void)setFlowerName:(NSString *)flowerName {
        _flowerName = flowerName;
        self.imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:_flowerName]];
}

@end
