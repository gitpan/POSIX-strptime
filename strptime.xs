#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <time.h>

MODULE = POSIX::strptime		PACKAGE = POSIX

void
strptime(input, format)
    const char *input
    const char *format
   PREINIT:
     struct tm tm_t;
   PPCODE:
     strptime(input, format, &tm_t);
     mXPUSHi(tm_t.tm_sec);
     mXPUSHi(tm_t.tm_min);
     mXPUSHi(tm_t.tm_hour);
     mXPUSHi(tm_t.tm_mday);
     mXPUSHi(tm_t.tm_mon);
     mXPUSHi(tm_t.tm_year);
     mXPUSHi(tm_t.tm_wday);
     mXPUSHi(tm_t.tm_yday);
