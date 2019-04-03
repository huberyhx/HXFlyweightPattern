//
//  HXBookFactory.m
//  HXFlyweightPattern
//
//  Created by haoxu.wang on 2019/4/3.
//  Copyright © 2019年 hubery. All rights reserved.
//

#import "HXBookFactory.h"

@implementation HXBookFactory

- (HXBookModel *)bookWithType:(HXBookType)type {
    // 去享元池里面取
    HXBookModel *book = [self.bookPool objectForKey:[NSNumber numberWithInteger:type]];
    
    // 如果没取到就创建并加入享元池
    if (!book) {
        NSLog(@"----**-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-");
        book = [[HXBookModel alloc] init];
        switch (type) {
            case HXBookType_Zero:
                book.name = @"0";
                book.imageName = @"0-0";
                break;
                
            case HXBookType_One:
                book.name = @"1";
                book.imageName = @"0-1";
                break;
                
            case HXBookType_Two:
                book.name = @"2";
                book.imageName = @"0-2";
                break;
                
            case HXBookType_Three:
                book.name = @"3";
                book.imageName = @"0-3";
                break;
                
            case HXBookType_Four:
                book.name = @"4";
                book.imageName = @"0-4";
                break;
                
            case HXBookType_Five:
                book.name = @"5";
                book.imageName = @"0-5";
                break;
                
            default:
                break;
        }
        [self.bookPool setObject:book forKey:[NSNumber numberWithInt:type]];
    }
    return book;
}

- (NSMutableDictionary *)bookPool {
    if (!_bookPool) {
        _bookPool = [[NSMutableDictionary alloc]init];
    }
    return _bookPool;
}

@end
