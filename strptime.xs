#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <time.h>

MODULE = POSIX::strptime		PACKAGE = POSIX::strptime

void
strptime(input, format)
    const char *input
    const char *format
   PREINIT:
     struct tm tm_t  = { -1,-1,-1,-1,-1,-1,-1,-1 };
   PPCODE:
     strptime(input, format, &tm_t);
     tm_t.tm_sec  == -1 ? XPUSHs(&PL_sv_undef) : mXPUSHi(tm_t.tm_sec);
     tm_t.tm_min  == -1 ? XPUSHs(&PL_sv_undef) : mXPUSHi(tm_t.tm_min);
     tm_t.tm_hour == -1 ? XPUSHs(&PL_sv_undef) : mXPUSHi(tm_t.tm_hour);
     tm_t.tm_mday == -1 ? XPUSHs(&PL_sv_undef) : mXPUSHi(tm_t.tm_mday);
     tm_t.tm_mon  == -1 ? XPUSHs(&PL_sv_undef) : mXPUSHi(tm_t.tm_mon);
     tm_t.tm_year == -1 ? XPUSHs(&PL_sv_undef) : mXPUSHi(tm_t.tm_year);
     tm_t.tm_wday == -1 ? XPUSHs(&PL_sv_undef) : mXPUSHi(tm_t.tm_wday);
     tm_t.tm_yday == -1 ? XPUSHs(&PL_sv_undef) : mXPUSHi(tm_t.tm_yday);
