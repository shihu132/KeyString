//
//  ViewController.m
//  钥匙串
//
//  Created by joyshow on 2018/12/10.
//  Copyright © 2018年 石虎. All rights reserved.
//

#import "ViewController.h"
#import "KeychainItemWrapper.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
#pragma mark - keychain读取
- (IBAction)keychainRead:(id)sender {
    
    KeychainItemWrapper *wrapper = [[KeychainItemWrapper alloc]initWithIdentifier:@"Username"accessGroup:nil];
    NSLog(@"pwd = %@,account = %@",[wrapper objectForKey:(__bridge id)kSecValueData],[wrapper objectForKey:(__bridge id)kSecAttrAccount]);
    
}
#pragma mark - keychain存储
- (IBAction)clickJieM:(id)sender {
    
    KeychainItemWrapper *wrapper = [[KeychainItemWrapper alloc]initWithIdentifier:@"Username"accessGroup:nil];
    //保存帐号
    [wrapper setObject:@"张三" forKey:(__bridge id)kSecAttrAccount];
    //保存密码
    [wrapper setObject:@"123456" forKey:(__bridge id)kSecValueData];
}

- (IBAction)clickJieM2:(id)sender {
    
    KeychainItemWrapper *wrapper = [[KeychainItemWrapper alloc]initWithIdentifier:@"Username"accessGroup:nil];
    //保存帐号
    [wrapper setObject:@"李四" forKey:(__bridge id)kSecAttrAccount];
    //保存密码
    [wrapper setObject:@"654321" forKey:(__bridge id)kSecValueData];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [self becomeFirstResponder];
}
@end
