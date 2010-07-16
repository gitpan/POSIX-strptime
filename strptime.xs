#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <time.h>

#define POSIX_STRPTIME_SET(field) \
  { \
    if (field == -1) { \
        XPUSHs(&PL_sv_undef); \
    } \
    else { \
        mXPUSHi(field); \
    } \
  } \


MODULE = POSIX::strptime		PACKAGE = POSIX::strptime

void
strptime(input, format)
    const char *input
    const char *format
   PREINIT:
     struct tm tm_t  = { -1,-1,-1,-1,-1,-1,-1,-1 };
   PPCODE:
     strptime(input, format, &tm_t);
     POSIX_STRPTIME_SET(tm_t.tm_sec);
     POSIX_STRPTIME_SET(tm_t.tm_min);
     POSIX_STRPTIME_SET(tm_t.tm_hour);
     POSIX_STRPTIME_SET(tm_t.tm_mday);
     POSIX_STRPTIME_SET(tm_t.tm_mon);
     POSIX_STRPTIME_SET(tm_t.tm_year);
     POSIX_STRPTIME_SET(tm_t.tm_wday);
     POSIX_STRPTIME_SET(tm_t.tm_yday);
