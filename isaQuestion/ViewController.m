//
//  ViewController.m
//  isaQuestion
//
//  Created by zzy on 2023/7/19.
//

#import "ViewController.h"
#import "Person.h"
#import "Son.h"
#import "Person+teacher.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
//    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    [self isKindAndMemberTest];
//    Son *son = [[Son alloc] init];
    id cls = [Person class];
    void *obj = &cls;
    [(__bridge id)obj printMyPro];
    
    Person *p = [Person new];
    [p printMyPro];
    Person *p1 = [[Person alloc] init];
    p1.sexual = @"man";
    NSLog(@"%@", p1.sexual);
    NSLog(@"qwe");
}
- (void)isKindAndMemberTest {
    bool re1 = [(id)[NSObject class] isKindOfClass:[NSObject class]];
    //nsobject->superclass = nsobject元类; nsobject->superclass = nsobject类
    bool re2 = [(id)[NSObject class] isMemberOfClass:[NSObject class]];
    //nsobject元类 比较 nsobject
    bool re3 = [(id)[Person class] isKindOfClass:[Person class]];
    //person元类的父类为nsobject元类 比较 person
    bool re4 = [(id)[Person class] isMemberOfClass:[Person class]];
    //person元类 比较 person
    NSLog(@"%hhd,%hhd,%hhd,%hhd", re1, re2, re3, re4);
    //用实例比较，实例object_getClass为类对象
    bool re5 = [(id)[NSObject alloc] isKindOfClass:[NSObject class]];
    //类对象和类对象比较
    bool re6 = [(id)[NSObject alloc] isMemberOfClass:[NSObject class]];
    //类对象和类对象比较
    bool re7 = [(id)[Person alloc] isKindOfClass:[Person class]];
    //类对象和类对象比较
    bool re8 = [(id)[Person alloc] isMemberOfClass:[Person class]];
    //类对象和类对象比较
    NSLog(@"%hhd,%hhd,%hhd,%hhd", re5, re6, re7, re8);
    
}


@end
