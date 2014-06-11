//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: com/igormaznitsa/prol/logic/triggers/TriggerEvent.java
//
//  Created by katsura on 14/04/13.
//

#include "com/igormaznitsa/prol/logic/ProlContext.h"
#include "com/igormaznitsa/prol/logic/triggers/ProlTriggerType.h"
#include "com/igormaznitsa/prol/logic/triggers/TriggerEvent.h"
#include "java/lang/NullPointerException.h"
#include "java/lang/StringBuilder.h"

@implementation ComIgormaznitsaProlLogicTriggersTriggerEvent

- (id)initWithComIgormaznitsaProlLogicProlContext:(ComIgormaznitsaProlLogicProlContext *)context
                                     withNSString:(NSString *)normalizedSignature
withComIgormaznitsaProlLogicTriggersProlTriggerTypeEnum:(ComIgormaznitsaProlLogicTriggersProlTriggerTypeEnum *)eventType {
  if (self = [super init]) {
    if (context == nil || normalizedSignature == nil || eventType == nil) {
      @throw [[JavaLangNullPointerException alloc] init];
    }
    self->context_ = context;
    self->normalizedSignature_ = normalizedSignature;
    self->eventType_ = eventType;
  }
  return self;
}

- (ComIgormaznitsaProlLogicProlContext *)getContext {
  return self->context_;
}

- (NSString *)getSignature {
  return self->normalizedSignature_;
}

- (ComIgormaznitsaProlLogicTriggersProlTriggerTypeEnum *)getEventType {
  return self->eventType_;
}

- (NSString *)description {
  JavaLangStringBuilder *builder = [[JavaLangStringBuilder alloc] initWithNSString:@"Trigger Event (context="];
  (void) [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([builder appendWithNSString:[((ComIgormaznitsaProlLogicProlContext *) nil_chk(context_)) description]])) appendWithChar:','])) appendWithNSString:@"signature='"])) appendWithNSString:normalizedSignature_])) appendWithNSString:@"',event="])) appendWithNSString:[((ComIgormaznitsaProlLogicTriggersProlTriggerTypeEnum *) nil_chk(eventType_)) name]])) appendWithChar:')'];
  return [builder description];
}

- (void)copyAllFieldsTo:(ComIgormaznitsaProlLogicTriggersTriggerEvent *)other {
  [super copyAllFieldsTo:other];
  other->context_ = context_;
  other->eventType_ = eventType_;
  other->normalizedSignature_ = normalizedSignature_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithComIgormaznitsaProlLogicProlContext:withNSString:withComIgormaznitsaProlLogicTriggersProlTriggerTypeEnum:", "TriggerEvent", NULL, 0x1, NULL },
    { "getContext", NULL, "Lcom.igormaznitsa.prol.logic.ProlContext;", 0x1, NULL },
    { "getSignature", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getEventType", NULL, "Lcom.igormaznitsa.prol.logic.triggers.ProlTriggerType;", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "context_", NULL, 0x12, "Lcom.igormaznitsa.prol.logic.ProlContext;" },
    { "normalizedSignature_", NULL, 0x12, "Ljava.lang.String;" },
    { "eventType_", NULL, 0x12, "Lcom.igormaznitsa.prol.logic.triggers.ProlTriggerType;" },
  };
  static J2ObjcClassInfo _ComIgormaznitsaProlLogicTriggersTriggerEvent = { "TriggerEvent", "com.igormaznitsa.prol.logic.triggers", NULL, 0x1, 5, methods, 3, fields, 0, NULL};
  return &_ComIgormaznitsaProlLogicTriggersTriggerEvent;
}

@end
