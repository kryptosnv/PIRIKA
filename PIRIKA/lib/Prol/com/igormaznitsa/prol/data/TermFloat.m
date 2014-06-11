//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: com/igormaznitsa/prol/data/TermFloat.java
//
//  Created by katsura on 14/04/13.
//

#include "IOSClass.h"
#include "com/igormaznitsa/prol/data/NumericTerm.h"
#include "com/igormaznitsa/prol/data/Term.h"
#include "com/igormaznitsa/prol/data/TermFloat.h"
#include "com/igormaznitsa/prol/data/Var.h"
#include "java/lang/Character.h"
#include "java/lang/Float.h"
#include "java/lang/Math.h"
#include "java/lang/NumberFormatException.h"

@implementation ComIgormaznitsaProlDataTermFloat

- (id)initWithNSString:(NSString *)name {
  if (self = [super initWithNSString:name]) {
    int len = [((NSString *) nil_chk(name)) length] - 1;
    while (len >= 0) {
      if ([JavaLangCharacter isWhitespaceWithChar:[name charAtWithInt:len--]]) {
        @throw [[JavaLangNumberFormatException alloc] init];
      }
    }
    floatValue_ = [JavaLangFloat parseFloatWithNSString:name];
  }
  return self;
}

- (id)initWithFloat:(float)value {
  if (self = [super initWithNSString:@""]) {
    floatValue_ = value;
  }
  return self;
}

- (NSString *)description {
  return [self getText];
}

- (NSUInteger)hash {
  return (int) floatValue_;
}

- (BOOL)isEqual:(id)obj {
  if (obj == nil) {
    return NO;
  }
  if ([nil_chk(obj) getClass] == [IOSClass classWithClass:[ComIgormaznitsaProlDataTermFloat class]]) {
    return ((ComIgormaznitsaProlDataTermFloat *) check_class_cast(obj, [ComIgormaznitsaProlDataTermFloat class]))->floatValue_ == floatValue_;
  }
  return [super isEqual:obj];
}

- (BOOL)equWithoutSetWithComIgormaznitsaProlDataTerm:(ComIgormaznitsaProlDataTerm *)atom {
  if (self == atom) {
    return YES;
  }
  if ([((ComIgormaznitsaProlDataTerm *) nil_chk(atom)) getTermType] == ComIgormaznitsaProlDataTerm_TYPE_VAR) {
    atom = [((ComIgormaznitsaProlDataVar *) check_class_cast(atom, [ComIgormaznitsaProlDataVar class])) getValue];
  }
  if (atom == nil) {
    return YES;
  }
  if ([((ComIgormaznitsaProlDataTerm *) nil_chk(atom)) getTermType] == ComIgormaznitsaProlDataTerm_TYPE_ATOM) {
    if ([atom conformsToProtocol: @protocol(ComIgormaznitsaProlDataNumericTerm)]) {
      return [self compareWithComIgormaznitsaProlDataNumericTerm:(id<ComIgormaznitsaProlDataNumericTerm>) check_protocol_cast(atom, @protocol(ComIgormaznitsaProlDataNumericTerm))] == 0;
    }
  }
  return NO;
}

- (BOOL)EquWithComIgormaznitsaProlDataTerm:(ComIgormaznitsaProlDataTerm *)atom {
  if (self == atom) {
    return YES;
  }
  switch ([((ComIgormaznitsaProlDataTerm *) nil_chk(atom)) getTermType]) {
    case ComIgormaznitsaProlDataTerm_TYPE_ATOM:
    {
      if ([atom conformsToProtocol: @protocol(ComIgormaznitsaProlDataNumericTerm)]) {
        return [self compareWithComIgormaznitsaProlDataNumericTerm:(id<ComIgormaznitsaProlDataNumericTerm>) check_protocol_cast(atom, @protocol(ComIgormaznitsaProlDataNumericTerm))] == 0;
      }
      else {
        return [((NSString *) nil_chk([self getText])) isEqual:[atom getText]];
      }
    }
    case ComIgormaznitsaProlDataTerm_TYPE_VAR:
    {
      ComIgormaznitsaProlDataVar *var = (ComIgormaznitsaProlDataVar *) check_class_cast(atom, [ComIgormaznitsaProlDataVar class]);
      ComIgormaznitsaProlDataTerm *value = [var getValue];
      if (value == nil) {
        return [((ComIgormaznitsaProlDataVar *) check_class_cast(atom, [ComIgormaznitsaProlDataVar class])) setValueWithComIgormaznitsaProlDataTerm:self];
      }
      else {
        return [self EquWithComIgormaznitsaProlDataTerm:value];
      }
    }
  }
  return NO;
}

- (float)getValue {
  return floatValue_;
}

- (NSNumber *)getNumericValue {
  return [JavaLangFloat valueOfWithFloat:floatValue_];
}

- (NSString *)forWrite {
  return [((NSString *) nil_chk([self getText])) isEmpty] ? [JavaLangFloat toStringWithFloat:floatValue_] : [self getText];
}

- (NSString *)getSourceLikeRepresentation {
  NSString *text = [self getText];
  if ([((NSString *) nil_chk(text)) indexOf:'.'] < 0) {
    text = [NSString stringWithFormat:@"%@.0", text];
  }
  return text;
}

- (NSString *)getText {
  NSString *value = [super getText];
  if ([((NSString *) nil_chk(value)) isEmpty]) {
    return [JavaLangFloat toStringWithFloat:floatValue_];
  }
  else {
    return value;
  }
}

- (int)compareWithComIgormaznitsaProlDataNumericTerm:(id<ComIgormaznitsaProlDataNumericTerm>)atom {
  float value = [((NSNumber *) nil_chk([((id<ComIgormaznitsaProlDataNumericTerm>) nil_chk(atom)) getNumericValue])) floatValue];
  return [JavaLangFloat compareWithFloat:floatValue_ withFloat:value];
}

- (id<ComIgormaznitsaProlDataNumericTerm>)addWithComIgormaznitsaProlDataNumericTerm:(id<ComIgormaznitsaProlDataNumericTerm>)atom {
  float value = [((NSNumber *) nil_chk([((id<ComIgormaznitsaProlDataNumericTerm>) nil_chk(atom)) getNumericValue])) floatValue];
  return [[ComIgormaznitsaProlDataTermFloat alloc] initWithFloat:floatValue_ + value];
}

- (id<ComIgormaznitsaProlDataNumericTerm>)subWithComIgormaznitsaProlDataNumericTerm:(id<ComIgormaznitsaProlDataNumericTerm>)atom {
  float value = [((NSNumber *) nil_chk([((id<ComIgormaznitsaProlDataNumericTerm>) nil_chk(atom)) getNumericValue])) floatValue];
  return [[ComIgormaznitsaProlDataTermFloat alloc] initWithFloat:floatValue_ - value];
}

- (id<ComIgormaznitsaProlDataNumericTerm>)divWithComIgormaznitsaProlDataNumericTerm:(id<ComIgormaznitsaProlDataNumericTerm>)atom {
  float value = [((NSNumber *) nil_chk([((id<ComIgormaznitsaProlDataNumericTerm>) nil_chk(atom)) getNumericValue])) floatValue];
  return [[ComIgormaznitsaProlDataTermFloat alloc] initWithFloat:floatValue_ / value];
}

- (id<ComIgormaznitsaProlDataNumericTerm>)mulWithComIgormaznitsaProlDataNumericTerm:(id<ComIgormaznitsaProlDataNumericTerm>)atom {
  float value = [((NSNumber *) nil_chk([((id<ComIgormaznitsaProlDataNumericTerm>) nil_chk(atom)) getNumericValue])) floatValue];
  return [[ComIgormaznitsaProlDataTermFloat alloc] initWithFloat:floatValue_ * value];
}

- (id<ComIgormaznitsaProlDataNumericTerm>)neg {
  return [[ComIgormaznitsaProlDataTermFloat alloc] initWithFloat:-floatValue_];
}

- (int)getNumberType {
  return ComIgormaznitsaProlDataNumericTerm_NUMBER_FLOAT;
}

- (int)termComparsionWithComIgormaznitsaProlDataTerm:(ComIgormaznitsaProlDataTerm *)atom {
  if (self == atom) {
    return 0;
  }
  if ([((ComIgormaznitsaProlDataTerm *) nil_chk(atom)) getTermType] == ComIgormaznitsaProlDataTerm_TYPE_VAR && ![((ComIgormaznitsaProlDataVar *) check_class_cast(atom, [ComIgormaznitsaProlDataVar class])) isUndefined]) {
    atom = [((ComIgormaznitsaProlDataVar *) check_class_cast(atom, [ComIgormaznitsaProlDataVar class])) getValue];
  }
  switch ([((ComIgormaznitsaProlDataTerm *) nil_chk(atom)) getTermType]) {
    case ComIgormaznitsaProlDataTerm_TYPE_VAR:
    return 1;
    case ComIgormaznitsaProlDataTerm_TYPE_ATOM:
    {
      if ([atom conformsToProtocol: @protocol(ComIgormaznitsaProlDataNumericTerm)]) {
        id<ComIgormaznitsaProlDataNumericTerm> num = (id<ComIgormaznitsaProlDataNumericTerm>) check_protocol_cast(atom, @protocol(ComIgormaznitsaProlDataNumericTerm));
        float value = [((NSNumber *) nil_chk([num getNumericValue])) floatValue];
        if (floatValue_ < value) {
          return -1;
        }
        if (floatValue_ > value) {
          return 1;
        }
        return 0;
      }
      else {
        return -1;
      }
    }
    default:
    return -1;
  }
}

- (BOOL)hasAnyDifferenceWithComIgormaznitsaProlDataTerm:(ComIgormaznitsaProlDataTerm *)atom {
  if (!([atom isKindOfClass:[ComIgormaznitsaProlDataTermFloat class]])) {
    return YES;
  }
  ComIgormaznitsaProlDataTermFloat *thatFloat = (ComIgormaznitsaProlDataTermFloat *) check_class_cast(atom, [ComIgormaznitsaProlDataTermFloat class]);
  return [JavaLangFloat compareWithFloat:floatValue_ withFloat:((ComIgormaznitsaProlDataTermFloat *) nil_chk(thatFloat))->floatValue_] != 0;
}

- (id<ComIgormaznitsaProlDataNumericTerm>)abs {
  if (floatValue_ >= 0) {
    return self;
  }
  return [[ComIgormaznitsaProlDataTermFloat alloc] initWithFloat:[JavaLangMath absWithFloat:floatValue_]];
}

- (id<ComIgormaznitsaProlDataNumericTerm>)sign {
  return [[ComIgormaznitsaProlDataTermFloat alloc] initWithFloat:[JavaLangMath signumWithFloat:floatValue_]];
}

- (void)copyAllFieldsTo:(ComIgormaznitsaProlDataTermFloat *)other {
  [super copyAllFieldsTo:other];
  other->floatValue_ = floatValue_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithNSString:", "TermFloat", NULL, 0x1, NULL },
    { "initWithFloat:", "TermFloat", NULL, 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
    { "hash", "hashCode", "I", 0x1, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL },
    { "equWithoutSetWithComIgormaznitsaProlDataTerm:", "equWithoutSet", "Z", 0x1, NULL },
    { "EquWithComIgormaznitsaProlDataTerm:", "Equ", "Z", 0x1, NULL },
    { "getValue", NULL, "F", 0x1, NULL },
    { "getNumericValue", NULL, "Ljava.lang.Number;", 0x1, NULL },
    { "forWrite", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getSourceLikeRepresentation", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getText", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "compareWithComIgormaznitsaProlDataNumericTerm:", "compare", "I", 0x1, NULL },
    { "addWithComIgormaznitsaProlDataNumericTerm:", "add", "Lcom.igormaznitsa.prol.data.NumericTerm;", 0x1, NULL },
    { "subWithComIgormaznitsaProlDataNumericTerm:", "sub", "Lcom.igormaznitsa.prol.data.NumericTerm;", 0x1, NULL },
    { "divWithComIgormaznitsaProlDataNumericTerm:", "div", "Lcom.igormaznitsa.prol.data.NumericTerm;", 0x1, NULL },
    { "mulWithComIgormaznitsaProlDataNumericTerm:", "mul", "Lcom.igormaznitsa.prol.data.NumericTerm;", 0x1, NULL },
    { "neg", NULL, "Lcom.igormaznitsa.prol.data.NumericTerm;", 0x1, NULL },
    { "getNumberType", NULL, "I", 0x1, NULL },
    { "termComparsionWithComIgormaznitsaProlDataTerm:", "termComparsion", "I", 0x1, NULL },
    { "hasAnyDifferenceWithComIgormaznitsaProlDataTerm:", "hasAnyDifference", "Z", 0x1, NULL },
    { "abs", NULL, "Lcom.igormaznitsa.prol.data.NumericTerm;", 0x1, NULL },
    { "sign", NULL, "Lcom.igormaznitsa.prol.data.NumericTerm;", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "floatValue_", NULL, 0x12, "F" },
  };
  static J2ObjcClassInfo _ComIgormaznitsaProlDataTermFloat = { "TermFloat", "com.igormaznitsa.prol.data", NULL, 0x11, 23, methods, 1, fields, 0, NULL};
  return &_ComIgormaznitsaProlDataTermFloat;
}

@end