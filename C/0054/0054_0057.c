#include<stdio.h>
int func12();
int func11();
int func10();
int func9();
int func8();
int func7();
int func6();
int func5();
int func4();
int func3();
int func2();
int func1();
 

int main()
{
  printf("01 START\n");
  func1();    
  func2();    
  func3();    
  func4();    
  func5();    
  func6();    
  func7();    
  func8();    
  func9();    
  func10();   
  func11();   
  func12();   
  printf("01 END\n");
}

int func1()
{
{char a = (char)(char)0xff;
    if (a!=-1)
    printf("CHAR -> CHAR   HEX=%x\n",a); }
{short int a = (short int)(char)0xff;
    if (a!=-1)
    printf("CHAR -> SHORT INT   HEX=%x\n",a); }
{int  a = (int)(char)0xff ;
    if (a!=-1)
    printf("CHAR -> INT  HEX=%x\n",a); }
{long int a = (long int)(char)0xff ;
    if (a!=-1)
    printf("CHAR -> LONG INT  HEX=%x\n",a);}
{unsigned char a = (unsigned char)(char)0xff ;
    if (a!=0xff)
    printf("CHAR -> UNSIGNED CHAR HEX=%x\n",a);}
{unsigned int a = (unsigned int)(char)0xff ;
#if INT64
    if (a!=0xffffffffffffffff)
#else
    if (a!=0xffffffff)
#endif
    printf("CHAR -> UNSIGNED INT HEX=%x\n",a);}
{unsigned short int a = (unsigned short int)(char)0xff ;
    if (a!=0xffff)
    printf("CHAR -> UNSIGNED SHORT INT HEX=%x\n",a);}
{unsigned long int a = (unsigned long int)(char)0xff ;
#if INT64 || LONG64 || __x86_64__ || __aarch64__
    if (a!=0xffffffffffffffff)
#else
    if (a!=0xffffffff)
#endif
    printf("CHAR -> UNSIGNED LONG INT HEX=%x\n",a);}
{signed char a = (signed char)(char)0xff  ;
    if (a!=-1)
    printf("CHAR -> SIGNED CHAR HEX=%x\n",a); }
{signed short int a = (signed short int)(char)0xff  ;
    if (a!=-1)
    printf("CHAR -> SIGNED SHORT INT HEX=%x\n",a); }
{signed int  a = (signed  int)(char)0xff  ;
    if (a!=-1)
    printf("CHAR -> SIGNED INT HEX=%x\n",a); }
{signed long int a = (signed long int)(char)0xff  ;
    if (a!=-1)
    printf("CHAR -> SIGNED LONG INT HEX=%x\n",a); }
}

int func2()
{
{char a = (char)(int)0xffffffff;
    if (a!=-1)
    printf("INT  -> CHAR   HEX=%x\n",a); }
{
#if INT64
int  a = (int)(int)0xffffffffffffffff ;
#else
int  a = (int)(int)0xffffffff ;
#endif
    if (a!=-1)
    printf("INT  -> INT    HEX=%x\n",a); }
{short int  a = (short int)(int)0xffffffff ;
    if (a!=-1)
    printf("INT ->SHORT INT    HEX=%x\n",a); }
{
#if INT64
long int a = (long int)(int)0xffffffffffffffff ;
#else
long int a = (long int)(int)0xffffffff ;
#endif
    if (a!=-1)
    printf("INT  -> LONG INT  HEX=%x\n",a); }
{unsigned char a = (unsigned char)(int)0xffffffff ;
    if (a!=0xff)
    printf("INT  -> UNSIGNED CHAR HEX=%x\n",a);}
{unsigned int a = (unsigned int)(int)0xffffffff ;
    if (a!=0xffffffff)
    printf("INT  -> UNSIGNED INT HEX=%x\n",a); }
{unsigned short int a = (unsigned short int)(int)0xffffffff ;
    if (a!=0xffff)
    printf("INT  -> UNSIGNED SHORT INT HEX=%x\n",a); }
{unsigned long int a = (unsigned long int)(int)0xffffffff ;
#if LONG64 || __x86_64__ || __aarch64__
    if (a!=0xffffffffffffffff)
#else
    if (a!=0xffffffff)
#endif
    printf("INT  -> UNSIGNED LONG INT HEX=%x\n",a);}
{signed char a = (signed char)(int)0xffffffff ;
    if (a!=-1)
    printf("INT  -> SIGNED CHAR HEX=%x\n",a); }
{
#if INT64
signed int  a = (signed  int)(int)0xffffffffffffffff ;
#else
signed int  a = (signed  int)(int)0xffffffff ;
#endif
    if (a!=-1)
    printf("INT  -> SIGNED INT HEX=%x\n",a); }
{signed short int  a = (signed short int)(int)0xffffffff ;
    if (a!=-1)
    printf("INT  -> SIGNED SHORT INT HEX=%x\n",a); }
{
#if INT64
signed long int a = (signed long int)(int)0xffffffffffffffff    ;
#else
signed long int a = (signed long int)(int)0xffffffff    ;
#endif
    if (a!=-1)
    printf("INT  -> SIGNED LONG INT HEX=%x\n",a); }
}

int func3()
{
{char a = (char)(short int)0xffff;
    if (a!=-1)
    printf("SHORT INT  -> CHAR   HEX=%x\n",a); }
{ int  a = (int)(short int)0xffff ;
    if (a!=-1)
    printf("SHORT INT  -> INT    HEX=%x\n",a); }
{short int  a = (short int)(short int)0xffff ;
    if (a!=-1)
    printf("SHORT INT  -> SHORT INT  HEX=%x\n",a); }
{long int a = (long int)(short int)0xffff ;
    if (a!=-1)
    printf("SHORT INT  -> LONG INT  HEX=%x\n",a); }
{unsigned char a = (unsigned char)(short int)0xffff ;
    if (a!=0xff)
    printf("SHORT INT  -> UNSIGNED CHAR HEX=%x\n",a);}
{unsigned int a = (unsigned int)(short int)0xffff ;
#if INT64
    if (a!=0xffffffffffffffff)
#else
    if (a!=0xffffffff)
#endif
    printf("SHORT INT  -> UNSIGNED INT HEX=%x\n",a);}
{unsigned short int a = (unsigned short int)(short int)0xffff ;
    if (a!=0xffff)
    printf("SHORT INT  -> UNSIGNED SHORT INT HEX=%x\n",a);}
{unsigned long int a = (unsigned long int)(short int)0xffff ;
#if INT64 || LONG64 || __x86_64__ || __aarch64__
    if (a!=0xffffffffffffffff)
#else
    if (a!=0xffffffff)
#endif
  printf("SHORT INT  -> UNSIGNED LONG INT HEX=%x\n",a); }
{signed char a = (signed char)(short int)0xffff ;
    if (a!=-1)
    printf("SHORT INT  -> SIGNED CHAR HEX=%x\n",a); }
{signed int  a = (signed  int)(short int)0xffff ;
    if (a!=-1)
    printf("SHORT INT  -> SIGNED INT HEX=%x\n",a); }
{signed short int  a = (signed short int)(short int)0xffff ;
    if (a!=-1)
    printf("SHORT INT  -> SIGNED SHORT INT HEX=%x\n",a); }
{signed long int a = (signed long int)(short int)0xffff    ;
    if (a!=-1)
    printf("SHORT INT  -> SIGNED LONG INT HEX=%x\n",a);}
}

int func4()
{
{char a = (char)(long int)0xffffffff;
    if (a!=-1)
    printf("LONG INT  -> CHAR   HEX=%x\n",a); }
{
#if INT64
int  a = (int)(long int)0xffffffffffffffff ;
#else
int  a = (int)(long int)0xffffffff ;
#endif
    if (a!=-1)
    printf("LONG INT  -> INT    HEX=%x\n",a); }
{short int  a = (short int)(long int)0xffffffff ;
    if (a!=-1)
    printf("LONG INT  -> SHORT INT  HEX=%x\n",a); }
{
#if INT64 || LONG64 || __x86_64__ || __aarch64__
long int a = (long int)(long int)0xffffffffffffffff ;
#else
long int a = (long int)(long int)0xffffffff ;
#endif
    if (a!=-1)
    printf("LONG INT  -> LONG INT  HEX=%x\n",a);}
{unsigned char a = (unsigned char)(long int)0xffffffff ;
    if (a!=0xff)
    printf("LONG INT  -> UNSIGNED CHAR HEX=%x\n",a);}
{unsigned int a = (unsigned int)(long int)0xffffffff ;
    if (a!=0xffffffff)
    printf("LONG INT  -> UNSIGNED INT HEX=%x\n",a); }
{unsigned short int a = (unsigned short int)(long int)0xffffffff ;
    if (a!=0xffff)
    printf("LONG INT  -> UNSIGNED SHORT INT HEX=%x\n",a); }
{unsigned long int a = (unsigned long int)(long int)0xffffffff ;
    if (a!=0xffffffff)
  printf("LONG INT  -> UNSIGNED LONG INT HEX=%x\n",a);}
{signed char a = (signed char)(long int)0xffffffff ;
    if (a!=-1)
    printf("LONG INT  -> SIGNED CHAR HEX=%x\n",a); }
{
#if INT64
signed int  a = (signed  int)(long int)0xffffffffffffffff ;
#else
signed int  a = (signed  int)(long int)0xffffffff ;
#endif
    if (a!=-1)
    printf("LONG  INT  -> SIGNED INT HEX=%x\n",a); }
{signed short int  a = (signed short int)(long int)0xffffffff ;
    if (a!=-1)
    printf("LONG  INT  -> SIGNED SHORT INT HEX=%x\n",a); }
{
#if INT64 || LONG64 || __x86_64__ || __aarch64__
signed long int a = (signed long int)(long int)0xffffffffffffffff ;
#else
signed long int a = (signed long int)(long int)0xffffffff ;
#endif
    if (a!=-1)
    printf("LONG INT  -> SIGNED LONG INT HEX=%x\n",a); }
}

int func5()
{
{char a = (char)(unsigned char)0xff;
    if (a!=-1)
    printf("UNSIGNED CHAR -> CHAR   HEX=%x\n",a); }
{short int a = (short int)(unsigned char)0xff;
    if (a!=0xff)
    printf("UNSIGNED CHAR -> SHORT INT   HEX=%x\n",a); }
{int  a = (int)(unsigned char)0xff ;
    if (a!=0xff)
    printf("UNSIGNED CHAR -> INT  HEX=%x\n",a); }
{long int a = (long int)(unsigned char)0xff ;
    if (a!=0xff)
    printf("UNSIGNED CHAR -> LONG INT  HEX=%x\n",a); }
{unsigned char a = (unsigned char)(unsigned char)0xff ;
    if (a!=0xff)
    printf("UNSIGNED CHAR -> UNSIGNED CHAR HEX=%x\n",a);}
{unsigned int a = (unsigned int)(unsigned char)0xff ;
    if (a!=0x000000ff)
    printf("UNSIGNED CHAR -> UNSIGNED INT HEX=%x\n",a); }
{unsigned short int a = (unsigned short int)(unsigned char)0xff ;
    if (a!=0x000000ff)
    printf("UNSIGNED CHAR -> UNSIGNED SHORT INT HEX=%x\n",a); }
{unsigned long int a = (unsigned long int)(unsigned char)0xff ;
    if (a!=0x000000ff)
    printf("UNSIGNED CHAR -> UNSIGNED LONG INT HEX=%x\n",a);}
{signed char a = (signed char)(unsigned char)0xff ;
    if (a!=-1)
    printf("UNSIGNED CHAR -> SIGNED CHAR HEX=%x\n",a); }
{signed int  a = (signed  int)(unsigned char)0xff ;
    if (a!=0xff)
    printf("UNSIGNED CHAR -> SIGNED INT HEX=%x\n",a); }
{signed short int  a = (signed short int)(unsigned char)0xff ;
    if (a!=0xff)
    printf("UNSIGNED CHAR -> SIGNED SHORT INT HEX=%x\n",a); }
{signed long int a = (signed long int)(unsigned char)0xff    ;
    if (a!=0xff)
    printf("UNSIGNED CHAR -> SIGNED LONG INT HEX=%x\n",a);}
}

int func6()
{
{char a = (char)(unsigned int)0xffffffff;
    if (a!=-1)
    printf("UNSIGNED INT  -> CHAR   HEX=%x\n",a);}
{
#if INT64
int  a = (int)(unsigned int)0xffffffffffffffff ;
#else
int  a = (int)(unsigned int)0xffffffff ;
#endif
    if (a!=-1)
    printf("UNSIGNED INT  -> INT    HEX=%x\n",a);}
{short int a = (short int)(unsigned int)0xffffffff ;
    if (a!=-1)
    printf("UNSIGNED INT ->SHORT INT    HEX=%x\n",a);}
{
#if INT64 || LONG64 || __x86_64__ || __aarch64__
long int a = (long int)(unsigned int)0xffffffffffffffff ;
#else
long int a = (long int)(unsigned int)0xffffffff ;
#endif
#if LONG64 || __x86_64__ || __aarch64__
    if (a!=0xffffffff)
#else
    if (a!=-1)
#endif
    printf("UNSIGNED INT  -> LONG INT  HEX=%x\n",a);}
{unsigned char a = (unsigned char)(unsigned int)0xffffffff ;
    if (a!=0xff)
    printf("UNSIGNED INT  -> UNSIGNED CHAR HEX=%x\n",a); }
{unsigned int a = (unsigned int)(unsigned int)0xffffffff ;
    if (a!=0xffffffff)
    printf("UNSIGNED INT  -> UNSIGNED INT HEX=%x\n",a); }
{unsigned short int a = (unsigned short int)(unsigned int)0xffffffff ;
    if (a!=0xffff)
    printf("UNSIGNED INT  -> UNSIGNED SHORT INT HEX=%x\n",a); }
{unsigned long int a = (unsigned long int)(unsigned int)0xffffffff ;
    if (a!=0xffffffff)
    printf("UNSIGNED INT  -> UNSIGNED LONG INT HEX=%x\n",a); }
{signed char a = (signed char)(unsigned int)0xffffffff ;
    if (a!=-1)
    printf("UNSIGNED INT  -> SIGNED CHAR HEX=%x\n",a); }
{
#if INT64
signed int  a = (signed  int)(unsigned int)0xffffffffffffffff ;
#else
signed int  a = (signed  int)(unsigned int)0xffffffff ;
#endif
    if (a!=-1)
    printf("UNSIGNED INT  -> SIGNED INT HEX=%x\n",a); }
{signed short int  a = (signed short int)(unsigned int)0xffffffff ;
    if (a!=-1)
    printf("UNSIGNED INT  -> SIGNED SHORT INT HEX=%x\n",a); }
{
#if INT64 || LONG64 || __x86_64__ || __aarch64__
signed long int a = (signed long int)(unsigned int)0xffffffffffffffff    ;
#else
signed long int a = (signed long int)(unsigned int)0xffffffff    ;
#endif
#if LONG64 || __x86_64__ || __aarch64__
    if (a!=0xffffffff)
#else
    if (a!=-1)
#endif
    printf("UNSIGNED INT  -> SIGNED LONG INT HEX=%x\n",a); }
}

int func7()
{
{char a = (char)(unsigned short int)0xffff;
    if (a!=-1)
    printf("UNSIGNED SHORT INT  -> CHAR   HEX=%x\n",a); }
{int  a = (int)(unsigned short int)0xffff ;
    if (a!=0xffff)
    printf("UNSIGNED SHORT INT  -> INT    HEX=%x\n",a); }
{short int  a = (short int)(unsigned short int)0xffff ;
    if (a!=-1)
    printf("UNSIGNED SHORT INT  -> SHORT INT  HEX=%x\n",a); }
{long int a = (long int)(unsigned short int)0xffff ;
    if (a!=0xffff)
    printf("UNSIGNED SHORT INT  -> LONG INT  HEX=%x\n",a);}
{unsigned char a = (unsigned char)(unsigned short int)0xffff ;
    if (a!=0x000000ff)
    printf("UNSIGNED SHORT INT  -> UNSIGNED CHAR HEX=%x\n",a);}
{unsigned int a = (unsigned int)(unsigned short int)0xffff ;
    if (a!=0x0000ffff)
    printf("UNSIGNED SHORT INT  -> UNSIGNED INT HEX=%x\n",a);}
{unsigned short int
              a = (unsigned short int)(unsigned short int)0xffff ;
    if (a!=0x0000ffff)
    printf("UNSIGNED SHORT INT -> UNSIGNED SHORT INT HEX=%x\n",a);}
{unsigned long int a = (unsigned long int)(unsigned short int)0xffff ;
    if (a!=0x0000ffff)
printf(" UNSIGNED SHORT INT  -> UNSIGNED LONG INT HEX=%x\n",a);}
{signed char a = (signed char)(unsigned short int)0xffff ;
    if (a!=-1)
 printf("UNSIGNED  SHORT INT  -> SIGNED CHAR HEX=%x\n",a); }
{signed int  a = (signed  int)(unsigned short int)0xffff ;
    if (a!=0xffff)
    printf("UNSIGNED  SHORT INT  -> SIGNED INT HEX=%x\n",a); }
{signed short int  a = (signed  short int)(unsigned short int)0xffff ;
    if (a!=-1)
printf("UNSIGNED  SHORT INT  -> SIGNED SHORT INT HEX=%x\n",a); }
{signed long int a = (signed long int)(unsigned short int)0xffff    ;
    if (a!=0xffff)
  printf("UNSIGNED  SHORT INT  -> SIGNED LONG INT HEX=%x\n",a);}
}

int func8()
{
{char a = (char)(unsigned long int)0xffffffff;
    if (a!=-1)
    printf("UNSIGNED LONG INT  -> CHAR   HEX=%x\n",a); }
{
#if INT64
int  a = (int)(unsigned long int)0xffffffffffffffff ;
#else
int  a = (int)(unsigned long int)0xffffffff ;
#endif
    if (a!=-1)
    printf("UNSIGNED LONG INT  -> INT    HEX=%x\n",a); }
{short int  a = (short int)(unsigned long int)0xffffffff ;
    if (a!=-1)
    printf("UNSIGNED LONG INT  -> SHORT INT  HEX=%x\n",a);     }
{
#if INT64 || LONG64 || __x86_64__ || __aarch64__
long int a = (long int)(unsigned long int)0xffffffffffffffff ;
#else
long int a = (long int)(unsigned long int)0xffffffff ;
#endif
    if (a!=-1)
    printf("UNSIGNED LONG INT -> LONG INT HEX=%x\n",a); }
{unsigned char a = (unsigned char)(unsigned long int)0xffffffff ;
    if (a!=0xff)
    printf("UNSIGNED LONG INT  -> UNSIGNED CHAR HEX=%x\n",a);}
{unsigned int a = (unsigned int)(unsigned long int)0xffffffff ;
    if (a!=0xffffffff)
    printf("UNSIGNED LONG INT  -> UNSIGNED INT HEX=%x\n",a);}
{unsigned short int
            a = (unsigned short int)(unsigned long int)0xffffffff ;
    if (a!=0xffff)
    printf("UNSIGNED LONG INT  -> UNSIGNED SHORT INT HEX=%x\n",a);}
{unsigned long int
             a = (unsigned long int)(unsigned long int)0xffffffff ;
    if (a!=0xffffffff)
  printf("UNSIGNED LONG INT  -> UNSIGNED LONG INT HEX=%x\n",a);}
{signed char a = (signed char)(unsigned long int)0xffffffff ;
    if (a!=-1)
    printf("UNSIGNED LONG INT  -> SIGNED CHAR HEX=%x\n",a); }
{
#if INT64
signed int  a = (signed  int)(unsigned long int)0xffffffffffffffff ;
#else
signed int  a = (signed  int)(unsigned long int)0xffffffff ;
#endif
    if (a!=-1)
    printf("UNSIGNED LONG INT  -> SIGNED INT HEX=%x\n",a); }
{signed short int
              a = (signed short int)(unsigned long int)0xffffffff ;
    if (a!=-1)
 printf("UNSIGNED LONG INT  -> SIGNED SHORT INT HEX=%x\n",a); }
{signed long int
#if INT64 || LONG64 || __x86_64__ || __aarch64__
     a = (signed long int)(unsigned long int)0xffffffffffffffff ;
#else
     a = (signed long int)(unsigned long int)0xffffffff ;
#endif
    if (a!=-1)
    printf("UNSIGNED LONG INT  -> SIGNED LONG INT HEX=%x\n",a);}
}

int func9()
{
{char a = (char)(signed char)0xff;
    if (a!=-1)
    printf("01  SIGNED CHAR -> CHAR   HEX=%x\n",a); }
{short int a = (short int)(signed char)0xff;
    if (a!=-1)
    printf("01  SIGNED CHAR -> SHORT INT   HEX=%x\n",a);}
{int  a = (int)(signed char)0xff ;
    if (a!=-1)
    printf("01  SIGNED CHAR -> INT  HEX=%x\n",a); }
{long int a = (long int)(signed char)0xff ;
    if (a!=-1)
    printf("01  SIGNED CHAR -> LONG INT  HEX=%x\n",a); }
{unsigned char a = (unsigned char)(signed char)0xff ;
    if (a!=0xff)
    printf("SIGNED CHAR -> UNSIGNED CHAR HEX=%x\n",a); }
{unsigned int a = (unsigned int)(signed char)0xff ;
#if INT64
    if (a!=0xffffffffffffffff)
#else
    if (a!=0xffffffff)
#endif
    printf("SIGNED CHAR -> UNSIGNED INT HEX=%x\n",a); }
{unsigned short int a = (unsigned short int)(signed char)0xff ;
    if (a!=0xffff)
    printf("SIGNED CHAR -> UNSIGNED SHORT INT HEX=%x\n",a); }
{unsigned long int a = (unsigned long int)(signed char)0xff ;
#if INT64 || LONG64 || __x86_64__ || __aarch64__
    if (a!=0xffffffffffffffff)
#else
    if (a!=0xffffffff)
#endif
    printf("SIGNED CHAR -> UNSIGNED LONG INT HEX=%x\n",a); }
{signed char a = (signed char)(signed char)0xff ;
    if (a!=-1)
    printf("SIGNED CHAR -> SIGNED CHAR HEX=%x\n",a); }
{signed int  a = (signed  int)(signed char)0xff ;
    if (a!=-1)
    printf("SIGNED CHAR -> SIGNED INT HEX=%x\n",a); }
{signed short int  a = (signed short int)(signed char)0xff ;
    if (a!=-1)
    printf("SIGNED CHAR -> SIGNED SHORT INT HEX=%x\n",a); }
{signed long int a = (signed long int)(signed char)0xff    ;
    if (a!=-1)
    printf("SIGNED CHAR -> SIGNED LONG INT HEX=%x\n",a); }
}

int func10()
{
{char a = (char)(signed int)0xffffffff;
    if (a!=-1)
    printf("SIGNED INT  -> CHAR   HEX=%x\n",a); }
{
#if INT64
int  a = (int)(signed int)0xffffffffffffffff ;
#else
int  a = (int)(signed int)0xffffffff ;
#endif
    if (a!=-1)
    printf("SIGNED INT  -> INT    HEX=%x\n",a); }
{short int a = (short int)(signed int)0xffffffff ;
    if (a!=-1)
    printf("SIGNED INT ->SHORT INT    HEX=%x\n",a); }
{
#if INT64
long int a = (long int)(signed int)0xffffffffffffffff ;
#else
long int a = (long int)(signed int)0xffffffff ;
#endif
    if (a!=-1)
    printf("SIGNED INT  -> LONG INT  HEX=%x\n",a); }
{unsigned char a = (unsigned char)(signed int)0xffffffff ;
    if (a!=0xff)
    printf("SIGNED INT  -> UNSIGNED CHAR HEX=%x\n",a); }
{unsigned int a = (unsigned int)(signed int)0xffffffff ;
    if (a!=0xffffffff)
    printf("SIGNED INT  -> UNSIGNED INT HEX=%x\n",a); }
{unsigned short int a = (unsigned short int)(signed int)0xffffffff ;
    if (a!=0xffff)
    printf("SIGNED INT  -> UNSIGNED SHORT INT HEX=%x\n",a); }
{unsigned long int a = (unsigned long int)(signed int)0xffffffff ;
#if LONG64 || __x86_64__ || __aarch64__
    if (a!=0xffffffffffffffff)
#else
    if (a!=0xffffffff)
#endif
    printf("SIGNED INT  -> UNSIGNED LONG INT HEX=%x\n",a); }
{signed char a = (signed char)(signed int)0xffffffff ;
    if (a!=-1)
    printf("SIGNED INT  -> SIGNED CHAR HEX=%x\n",a); }
{
#if INT64
signed int  a = (signed  int)(signed int)0xffffffffffffffff ;
#else
signed int  a = (signed  int)(signed int)0xffffffff ;
#endif
    if (a!=-1)
    printf("SIGNED INT  -> SIGNED INT HEX=%x\n",a); }
{signed short int  a = (signed short  int)(signed int)0xffffffff ;
    if (a!=-1)
    printf("SIGNED INT  -> SIGNED SHORT INT HEX=%x\n",a); }
{
#if INT64
signed long int a = (signed long int)(signed int)0xffffffffffffffff    ;
#else
signed long int a = (signed long int)(signed int)0xffffffff    ;
#endif
    if (a!=-1)
    printf("SIGNED INT  -> SIGNED LONG INT HEX=%x\n",a); }
}

int func11()
{
{char a = (char)(signed short int)0xffff;
    if (a!=-1)
    printf("SIGNED SHORT INT  -> CHAR   HEX=%x\n",a); }
{int  a = (int)(signed short int)0xffff ;
    if (a!=-1)
    printf("SIGNED SHORT INT  -> INT    HEX=%x\n",a); }
{short int  a = (short int)(signed short int)0xffff ;
    if (a!=-1)
    printf("SIGNED SHORT INT  -> SHORT INT  HEX=%x\n",a); }
{long int a = (long int)(signed short int)0xffff ;
    if (a!=-1)
    printf("SIGNED SHORT INT  -> LONG INT  HEX=%x\n",a); }
{unsigned char a = (unsigned char)(signed short int)0xffff ;
    if (a!=0xff)
    printf("SIGNED SHORT INT  -> UNSIGNED CHAR HEX=%x\n",a); }
{unsigned int a = (unsigned int)(signed short int)0xffff ;
#if INT64
    if (a!=0xffffffffffffffff)
#else
    if (a!=0xffffffff)
#endif
    printf("SIGNED SHORT INT  -> UNSIGNED INT HEX=%x\n",a); }
{unsigned short int a = (unsigned short int)(signed short int)0xffff ;
    if (a!=0xffff)
 printf("SIGNED SHORT INT  -> UNSIGNED SHORT INT HEX=%x\n",a); }
{unsigned long int a = (unsigned long int)(signed short int)0xffff ;
#if INT64 || LONG64 || __x86_64__ || __aarch64__
    if (a!=0xffffffffffffffff)
#else
    if (a!=0xffffffff)
#endif
  printf("SIGNED SHORT INT  -> UNSIGNED LONG INT HEX=%x\n",a);}
{signed char a = (signed char)(signed short int)0xffff ;
    if (a!=-1)
    printf("SIGNED  SHORT INT  -> SIGNED CHAR HEX=%x\n",a); }
{signed int  a = (signed  int)(signed short int)0xffff ;
    if (a!=-1)
    printf("SIGNED  SHORT INT  -> SIGNED INT HEX=%x\n",a); }
{signed short int  a = (signed short int)(signed short int)0xffff ;
    if (a!=-1)
  printf("SIGNED  SHORT INT  -> SIGNED SHORT INT HEX=%x\n",a); }
{signed long int a = (signed long int)(signed short int)0xffff    ;
    if (a!=-1)
  printf("SIGNED  SHORT INT  -> SIGNED LONG INT HEX=%x\n",a); }
}

int func12()
{
{
#if INT64
char a = (char)(signed long int)0xffffffffffffffff;
#else
char a = (char)(signed long int)0xffffffff;
#endif
    if (a!=-1)
    printf("SIGNED LONG INT  -> CHAR   HEX=%x\n",a); }
{
#if INT64
int  a = (int)(signed long int)0xffffffffffffffff ;
#else
int  a = (int)(signed long int)0xffffffff ;
#endif
    if (a!=-1)
    printf("SIGNED LONG INT  -> CHAR   HEX=%x\n",a); }
{short int  a = (short int)(signed long int)0xffffffff ;
    if (a!=-1)
    printf("01  SIGNED LONG INT  -> SHORT INT  HEX=%x\n",a);}
{
#if INT64 || LONG64 || __x86_64__ || __aarch64__
long int a = (long int)(signed long int)0xffffffffffffffff ;
#else
long int a = (long int)(signed long int)0xffffffff ;
#endif
    if (a!=-1)
    printf("SIGNED LONG INT -> LONG INT HEX=%x\n",a); }
{unsigned char a = (unsigned char)(signed long int)0xffffffff ;
    if (a!=0xff)
    printf("SIGNED LONG INT  -> UNSIGNED CHAR HEX=%x\n",a); }
{unsigned int a = (unsigned int)(signed long int)0xffffffff ;
    if (a!=0xffffffff)
    printf("SIGNED LONG INT  -> UNSIGNED INT HEX=%x\n",a); }
{unsigned short int a
               = (unsigned short int)(signed long int)0xffffffff ;
    if (a!=0xffff)
    printf("SIGNED LONG INT  -> UNSIGNED INT HEX=%x\n",a); }
{unsigned long int
             a = (unsigned long int)(signed long int)0xffffffff ;
    if (a!=0xffffffff)
  printf("SIGNED LONG INT  -> UNSIGNED LONG INT HEX=%x\n",a);}
{signed char a = (signed char)(signed long int)0xffffffff ;
    if (a!=-1)
    printf("signed long int  -> signed char hex='%x\n",a); }
{
#if INT64
signed int  a = (signed  int)(signed long int)0xffffffffffffffff ;
#else
signed int  a = (signed  int)(signed long int)0xffffffff ;
#endif
    if (a!=-1)
    printf("SIGNED LONG INT  -> SIGNED INT HEX=%x\n",a); }
{signed short int  a = (signed short int)(signed long int)0xffffffff ;
    if (a!=-1)
    printf("SIGNED LONG INT  -> SIGNED SHORT INT HEX=%x\n",a); }
{signed long int
#if INT64 || LONG64 || __x86_64__ || __aarch64__
     a = (signed long int)(signed long int)0xffffffffffffffff ;
#else
     a = (signed long int)(signed long int)0xffffffff ;
#endif
    if (a!=-1)
    printf("SIGNED LONG INT  -> SIGNED LONG INT HEX=%x\n",a);}
}
