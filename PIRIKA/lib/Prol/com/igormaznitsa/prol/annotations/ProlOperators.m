//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: com/igormaznitsa/prol/annotations/ProlOperators.java
//
//  Created by katsura on 14/04/13.
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "com/igormaznitsa/prol/annotations/ProlOperator.h"
#include "com/igormaznitsa/prol/annotations/ProlOperators.h"
#include "com/igormaznitsa/prol/data/Operator.h"

@implementation ComIgormaznitsaProlAnnotationsProlOperators

static IOSObjectArray * ComIgormaznitsaProlAnnotationsProlOperators_Operators_;

+ (IOSObjectArray *)Operators {
  return ComIgormaznitsaProlAnnotationsProlOperators_Operators_;
}

+ (void)setOperators:(IOSObjectArray *)Operators {
  ComIgormaznitsaProlAnnotationsProlOperators_Operators_ = Operators;
}

- (id)init {
  return [super init];
}

+ (void)initialize {
  if (self == [ComIgormaznitsaProlAnnotationsProlOperators class]) {
    ComIgormaznitsaProlAnnotationsProlOperators_Operators_ = [IOSObjectArray arrayWithObjects:(id[]){ [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:0 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_XFX withNSString:@"("], [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:0 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_XFX withNSString:@")"], [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:0 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_XFX withNSString:@"["], [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:0 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_XFX withNSString:@"]"], [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:1200 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_XF withNSString:@"."], [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:1200 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_XFX withNSString:@"|"], [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:700 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_XFX withNSString:@"is"], [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:700 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_XFX withNSString:@"="], [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:700 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_XFX withNSString:@"\\="], [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:1000 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_XFY withNSString:@","], [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:1050 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_XFY withNSString:@"->"], [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:1100 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_XFY withNSString:@";"], [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:1200 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_FX withNSString:@"?-"], [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:1200 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_FX withNSString:@":-"], [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:1200 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_XFX withNSString:@":-"], [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:900 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_FY withNSString:@"\\+"], [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:700 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_XFX withNSString:@">"], [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:700 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_XFX withNSString:@"<"], [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:700 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_XFX withNSString:@"=<"], [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:700 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_XFX withNSString:@">="], [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:700 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_XFX withNSString:@"=="], [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:700 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_XFX withNSString:@"=\\="], [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:700 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_XFX withNSString:@"\\=="], [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:700 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_XFX withNSString:@"@<"], [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:700 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_XFX withNSString:@"@>"], [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:700 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_XFX withNSString:@"@=<"], [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:700 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_XFX withNSString:@"@>="], [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:700 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_XFX withNSString:@"=:="], [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:700 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_XFX withNSString:@"=.."], [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:500 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_YFX withNSString:@"/\\"], [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:500 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_YFX withNSString:@"\\/"], [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:500 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_YFX withNSString:@"+"], [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:500 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_YFX withNSString:@"-"], [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:500 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_FX withNSString:@"not"], [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:500 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_FX withNSString:@"+"], [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:500 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_FX withNSString:@"-"], [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:400 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_YFX withNSString:@"*"], [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:400 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_YFX withNSString:@"/"], [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:400 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_YFX withNSString:@"//"], [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:400 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_YFX withNSString:@"rem"], [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:400 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_YFX withNSString:@"<<"], [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:400 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_YFX withNSString:@">>"], [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:300 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_XFX withNSString:@"mod"], [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:200 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_FY withNSString:@"\\"], [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:200 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_XFX withNSString:@"**"], [[ComIgormaznitsaProlAnnotationsProlOperator alloc] initWithInt:200 withInt:ComIgormaznitsaProlDataOperator_OPTYPE_XFY withNSString:@"^"] } count:46 type:[IOSClass classWithClass:[ComIgormaznitsaProlAnnotationsProlOperator class]]];
  }
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "init", NULL, NULL, 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "Operators_", NULL, 0x9, "[Lcom.igormaznitsa.prol.annotations.ProlOperator;" },
  };
  static J2ObjcClassInfo _ComIgormaznitsaProlAnnotationsProlOperators = { "ProlOperators", "com.igormaznitsa.prol.annotations", NULL, 0x1, 1, methods, 1, fields, 0, NULL};
  return &_ComIgormaznitsaProlAnnotationsProlOperators;
}

@end
