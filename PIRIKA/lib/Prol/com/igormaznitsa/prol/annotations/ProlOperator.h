//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: com/igormaznitsa/prol/annotations/ProlOperator.java
//
//  Created by katsura on 14/04/13.
//

#ifndef _ComIgormaznitsaProlAnnotationsProlOperator_H_
#define _ComIgormaznitsaProlAnnotationsProlOperator_H_

#import "JreEmulation.h"

@interface ComIgormaznitsaProlAnnotationsProlOperator : NSObject {
 @public
  int Priority__;
  int Type__;
  NSString *Name__;
}

- (id)initWithInt:(int)Priority
          withInt:(int)Type
     withNSString:(NSString *)Name;
- (void)setPriorityWithInt:(int)p;
- (int)Priority;
- (void)setTypeWithInt:(int)s;
- (int)Type;
- (void)setNameWithNSString:(NSString *)n;
- (NSString *)Name;
- (void)copyAllFieldsTo:(ComIgormaznitsaProlAnnotationsProlOperator *)other;
@end

J2OBJC_FIELD_SETTER(ComIgormaznitsaProlAnnotationsProlOperator, Name__, NSString *)

#endif // _ComIgormaznitsaProlAnnotationsProlOperator_H_
