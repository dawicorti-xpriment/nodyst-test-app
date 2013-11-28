//
//  main.m
//  nodyst-test-app
//
//  Created by David Corticchiato on 25/11/13.
//  Copyright (c) 2013 David Corticchiato. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"

#import "JavaScriptCore/JSContext.h"
#import "JavaScriptCore/JSExport.h"
#import "JavaScriptCore/JSValue.h"

int main(int argc, char *argv[])
{

  JSContext *context = [[JSContext alloc] init];

  context[@"log"] = ^(NSString * msg)
  {
      NSLog(msg);
      return;
  };

  NSString * jsCode2 =@"log('Hello World !');";
  [context evaluateScript:jsCode2];

  @autoreleasepool {
      return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
  }
}
