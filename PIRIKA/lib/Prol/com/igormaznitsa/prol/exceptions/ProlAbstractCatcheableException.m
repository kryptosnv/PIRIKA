//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: com/igormaznitsa/prol/exceptions/ProlAbstractCatcheableException.java
//
//  Created by katsura on 14/04/13.
//

#include "com/igormaznitsa/prol/data/Term.h"
#include "com/igormaznitsa/prol/data/TermStruct.h"
#include "com/igormaznitsa/prol/exceptions/ProlAbstractCatcheableException.h"
#include "java/lang/Throwable.h"

@implementation ComIgormaznitsaProlExceptionsProlAbstractCatcheableException

static ComIgormaznitsaProlDataTerm * ComIgormaznitsaProlExceptionsProlAbstractCatcheableException_UNDEFINED_;

+ (long long int)serialVersionUID {
  return ComIgormaznitsaProlExceptionsProlAbstractCatcheableException_serialVersionUID;
}

+ (ComIgormaznitsaProlDataTerm *)UNDEFINED {
  return ComIgormaznitsaProlExceptionsProlAbstractCatcheableException_UNDEFINED_;
}

- (ComIgormaznitsaProlDataTerm *)getCulprit {
  return culprit_;
}

- (id)initWithComIgormaznitsaProlDataTerm:(ComIgormaznitsaProlDataTerm *)culprit {
  if (self = [super init]) {
    self->culprit_ = culprit;
  }
  return self;
}

- (id)initWithNSString:(NSString *)message
withComIgormaznitsaProlDataTerm:(ComIgormaznitsaProlDataTerm *)culprit {
  if (self = [super initWithNSString:message]) {
    self->culprit_ = culprit;
  }
  return self;
}

- (id)initWithNSString:(NSString *)message
withComIgormaznitsaProlDataTerm:(ComIgormaznitsaProlDataTerm *)culprit
 withJavaLangThrowable:(JavaLangThrowable *)cause {
  if (self = [super initWithNSString:message withJavaLangThrowable:cause]) {
    self->culprit_ = culprit;
  }
  return self;
}

- (id)initWithComIgormaznitsaProlDataTerm:(ComIgormaznitsaProlDataTerm *)culprit
                    withJavaLangThrowable:(JavaLangThrowable *)cause {
  if (self = [super initWithJavaLangThrowable:cause]) {
    self->culprit_ = culprit;
  }
  return self;
}

- (ComIgormaznitsaProlDataTerm *)getFunctorForErrorStruct {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (ComIgormaznitsaProlDataTermStruct *)getAsStruct {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (void)initialize {
  if (self == [ComIgormaznitsaProlExceptionsProlAbstractCatcheableException class]) {
    ComIgormaznitsaProlExceptionsProlAbstractCatcheableException_UNDEFINED_ = [[ComIgormaznitsaProlDataTerm alloc] initWithNSString:@"<undefined>"];
  }
}

- (void)copyAllFieldsTo:(ComIgormaznitsaProlExceptionsProlAbstractCatcheableException *)other {
  [super copyAllFieldsTo:other];
  other->culprit_ = culprit_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "getCulprit", NULL, "Lcom.igormaznitsa.prol.data.Term;", 0x1, NULL },
    { "initWithComIgormaznitsaProlDataTerm:", "ProlAbstractCatcheableException", NULL, 0x1, NULL },
    { "initWithNSString:withComIgormaznitsaProlDataTerm:", "ProlAbstractCatcheableException", NULL, 0x1, NULL },
    { "initWithNSString:withComIgormaznitsaProlDataTerm:withJavaLangThrowable:", "ProlAbstractCatcheableException", NULL, 0x1, NULL },
    { "initWithComIgormaznitsaProlDataTerm:withJavaLangThrowable:", "ProlAbstractCatcheableException", NULL, 0x1, NULL },
    { "getFunctorForErrorStruct", NULL, "Lcom.igormaznitsa.prol.data.Term;", 0x401, NULL },
    { "getAsStruct", NULL, "Lcom.igormaznitsa.prol.data.TermStruct;", 0x401, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "serialVersionUID_", NULL, 0x1a, "J" },
    { "UNDEFINED_", NULL, 0x19, "Lcom.igormaznitsa.prol.data.Term;" },
    { "culprit_", NULL, 0x12, "Lcom.igormaznitsa.prol.data.Term;" },
  };
  static J2ObjcClassInfo _ComIgormaznitsaProlExceptionsProlAbstractCatcheableException = { "ProlAbstractCatcheableException", "com.igormaznitsa.prol.exceptions", NULL, 0x401, 7, methods, 3, fields, 0, NULL};
  return &_ComIgormaznitsaProlExceptionsProlAbstractCatcheableException;
}

@end