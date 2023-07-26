//
//  Son.m
//  isaQuestion
//
//  Created by zzy on 2023/7/19.
//

#import "Son.h"

@implementation Son
- (instancetype)init {
    self = [super init];
    if(self) {
        NSLog(@"self class = %@", NSStringFromClass([self class]));
        NSLog(@"super class = %@", NSStringFromClass([super class]));
        NSLog(@"self superclass = %@", NSStringFromClass([self superclass]));
        NSLog(@"super superclass = %@", NSStringFromClass([super superclass]));
    }
    return self;
}
@end
