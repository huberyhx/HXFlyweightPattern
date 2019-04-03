//
//  HXBookFactory.h
//  HXFlyweightPattern
//
//  Created by haoxu.wang on 2019/4/3.
//  Copyright © 2019年 hubery. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HXBookModel.h"

typedef enum {
    HXBookType_Zero,
    HXBookType_One,
    HXBookType_Two,
    HXBookType_Three,
    HXBookType_Four,
    HXBookType_Five,
    HXBookType_Total // 计数用
}HXBookType;

NS_ASSUME_NONNULL_BEGIN

@interface HXBookFactory : NSObject

// 缓存池, 存放享元对象
@property (nonatomic, strong) NSMutableDictionary *bookPool;

// 创建花的工厂方法
- (HXBookModel *)bookWithType:(HXBookType)type;

@end

NS_ASSUME_NONNULL_END
