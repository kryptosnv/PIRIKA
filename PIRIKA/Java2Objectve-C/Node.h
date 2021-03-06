//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/katsura/Documents/objective-c/PIRIKA/PIRIKA/java/com/katsura/frame/Node.java
//
//  Created by katsura on 14/06/11.
//

#ifndef _ComKatsuraFrameNode_H_
#define _ComKatsuraFrameNode_H_

@class JavaUtilTreeMap;
@protocol JavaUtilList;

#import "JreEmulation.h"

@interface ComKatsuraFrameNode : NSObject {
 @public
  JavaUtilTreeMap *attack_;
  JavaUtilTreeMap *recieve_;
  NSString *arg_;
  NSString *symbol_;
  NSString *name_;
}

- (id)initWithNSString:(NSString *)symbol
          withNSString:(NSString *)arg
          withNSString:(NSString *)name;
- (id)initWithNSString:(NSString *)symbol
          withNSString:(NSString *)arg;
- (void)addAttackRelationWithNSString:(NSString *)sym
              withComKatsuraFrameNode:(ComKatsuraFrameNode *)n;
- (void)addRecieveRelationWithNSString:(NSString *)sym
               withComKatsuraFrameNode:(ComKatsuraFrameNode *)n;
- (NSString *)getArgument;
- (NSString *)getSymbol;
- (NSString *)getName;
- (id<JavaUtilList>)getRecieveList;
- (id<JavaUtilList>)getAttackList;
- (void)copyAllFieldsTo:(ComKatsuraFrameNode *)other;
@end

J2OBJC_FIELD_SETTER(ComKatsuraFrameNode, attack_, JavaUtilTreeMap *)
J2OBJC_FIELD_SETTER(ComKatsuraFrameNode, recieve_, JavaUtilTreeMap *)
J2OBJC_FIELD_SETTER(ComKatsuraFrameNode, arg_, NSString *)
J2OBJC_FIELD_SETTER(ComKatsuraFrameNode, symbol_, NSString *)
J2OBJC_FIELD_SETTER(ComKatsuraFrameNode, name_, NSString *)

#endif // _ComKatsuraFrameNode_H_
