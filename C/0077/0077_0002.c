#include <stdio.h>

#if (__STDC_VERSION__ + 0 >= 199900L) || defined(__GNUC__)
#define  ALIGNOF(x)  __alignof(x)
#elif defined(__SUNPRO_C)
#define  ALIGNOF(x)  sizeof(x)
#else
#define  ALIGNOF(x)  __builtin_alignof(x)
#endif

int main()
{
   if( ALIGNOF(char)      != 1 )  puts("NG -1 ");
   if( ALIGNOF(short)     != 2 )  puts("NG -2");
   if( ALIGNOF(int)       != 4 )  puts("NG -3");
#if defined(_LP64)
   if( ALIGNOF(long)      != 8 )  puts("NG -4");
#else
   if( ALIGNOF(long)      != 4 )  puts("NG -4");
#endif
   if( ALIGNOF(long long) != 8 )  puts("NG -5");
   if( ALIGNOF(  signed char)   != 1 )  puts("NG -21");
   if( ALIGNOF(unsigned char)   != 1 )  puts("NG -22");
   if( ALIGNOF(  signed short)  != 2 )  puts("NG -23");
   if( ALIGNOF(unsigned short)  != 2 )  puts("NG -24");
   if( ALIGNOF(  signed int)    != 4 )  puts("NG -25");
   if( ALIGNOF(unsigned int)    != 4 )  puts("NG -26");
#if defined(_LP64)
   if( ALIGNOF(  signed long)   != 8 )  puts("NG -27");
   if( ALIGNOF(unsigned long)   != 8 )  puts("NG -28");
#else
   if( ALIGNOF(  signed long)   != 4 )  puts("NG -27");
   if( ALIGNOF(unsigned long)   != 4 )  puts("NG -28");
#endif
   if( ALIGNOF(  signed long long) != 8 )  puts("NG -29");
   if( ALIGNOF(unsigned long long) != 8 )  puts("NG -30");
   if( ALIGNOF(float)       != 4 )  puts("NG -40");
   if( ALIGNOF(double)      != 8 )  puts("NG -41");
#if defined(_LP64)
   if( ALIGNOF(long double) != 16 )  puts("NG -42");
#else
#if defined(__i386)
   if( ALIGNOF(long double) != 4 )  puts("NG -42");
#else
   if( ALIGNOF(long double) != 8 )  puts("NG -42");
#endif
#endif

   puts("OK");
}

