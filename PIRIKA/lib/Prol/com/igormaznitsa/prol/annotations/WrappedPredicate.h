//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: com/igormaznitsa/prol/annotations/WrappedPredicate.java
//
//  Created by katsura on 14/04/13.
//

#ifndef _ComIgormaznitsaProlAnnotationsWrappedPredicate_H_
#define _ComIgormaznitsaProlAnnotationsWrappedPredicate_H_

#import "JreEmulation.h"
#include "java/lang/annotation/Annotation.h"

@protocol ComIgormaznitsaProlAnnotationsWrappedPredicate < JavaLangAnnotationAnnotation >

@property (readonly) NSString *Name;

@end

@interface ComIgormaznitsaProlAnnotationsWrappedPredicate : NSObject < ComIgormaznitsaProlAnnotationsWrappedPredicate > {
 @private
  NSString *Name;
}

- (id)initWithName:(NSString *)Name_;

+ (NSString *)NameDefault;

@end

#endif // _ComIgormaznitsaProlAnnotationsWrappedPredicate_H_
