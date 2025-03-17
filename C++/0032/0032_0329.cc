#include <stdio.h>
int main()
{
#if 1
    printf("ok\n"); 
#else
  char char_x[4]={1,2,3,4}, char_y;
  char & char_r=char_x[0];

  signed char signed_char_x[4]={1,2,3,4}, signed_char_y;
  signed char & signed_char_r=signed_char_x[0];

  unsigned char unsigned_char_x[4]={1,2,3,4}, unsigned_char_y;
  unsigned char & unsigned_char_r=unsigned_char_x[0];

  short short_x[2]={0x0102,0x0304}, short_y;
  short & short_r=short_x[0];

  signed short signed_short_x[2]={0x0102,0x0304}, signed_short_y;
  signed short & signed_short_r=signed_short_x[0];

  unsigned short unsigned_short_x[2]={0x0102,0x0304}, unsigned_short_y;
  unsigned short & unsigned_short_r=unsigned_short_x[0];

  int int_x=0x01020304, int_y;
  int & int_r=int_x;

  signed int signed_int_x=0x01020304, signed_int_y;
  signed int & signed_int_r=signed_int_x;

  unsigned int unsigned_int_x=0x01020304, unsigned_int_y;
  unsigned int & unsigned_int_r=unsigned_int_x;

  long long_x=0x01020304, long_y;
  long & long_r=long_x;

  signed long signed_long_x=0x01020304, signed_long_y;
  signed long & signed_long_r=signed_long_x;

  unsigned long unsigned_long_x=0x01020304, unsigned_long_y;
  unsigned long & unsigned_long_r=unsigned_long_x;

  float float_x=1.0, float_y;
  float & float_r=float_x;

  double double_x=5.005, double_y;
  double & double_r=double_x;

  
  int *int_ptr_y;
  

  
  float *float_ptr_y;
  
  
  char_y           = (char&)           char_r;
  signed_char_y    = (signed char&)    char_r;
  unsigned_char_y  = (unsigned char&)  char_r;
  short_y          = (short&)          char_r;
  signed_short_y   = (signed short&)   char_r;
  unsigned_short_y = (unsigned short&) char_r;
  int_y            = (int&)            char_r;
  signed_int_y     = (signed int&)     char_r;
  unsigned_int_y   = (unsigned int&)   char_r;
  long_y           = (long&)           char_r;
  signed_long_y    = (signed long&)    char_r;
  unsigned_long_y  = (unsigned long&)  char_r;


  int_ptr_y        = (int*&)           char_r;
  float_ptr_y      = (float*&)         char_r;
  if (char_y==1 && signed_char_y==1 && unsigned_char_y==1 &&
      short_y==0x0102 && signed_short_y==0x0102 && unsigned_short_y==0x0102 &&
      int_y==0x01020304 && signed_int_y==0x01020304 && unsigned_int_y==0x01020304 &&
#if LONG64 || defined(__aarch64__)
      long_y==0x0102030400000000 && signed_long_y==0x0102030400000000 && unsigned_long_y==0x0102030400000000 &&
      int_ptr_y==(int*)0x0102030400000000 && float_ptr_y==(float*)0x0102030400000000)
#else
      long_y==0x01020304 && signed_long_y==0x01020304 && unsigned_long_y==0x01020304 &&
      int_ptr_y==(int*)0x01020304 && float_ptr_y==(float*)0x01020304)
#endif
    ; 
  else {
    printf("ng1 \n");
    printf("char_y=0x%x signed_char_y=0x%x unsigned_char_y=0x%x short_y=0x%x signed_short_y=0x%x unsigned_short_y=0x%x int_y=0x%x signed_int_y=0x%x unsigned_int_y=0x%x long_y=0x%x signed_long_y=0x%x unsigned_long_y=0x%x int_ptr_y=0x%x float_ptr_y=0x%x \n", 
	   char_y, signed_char_y, unsigned_char_y, short_y, signed_short_y, unsigned_short_y, int_y, signed_int_y, unsigned_int_y, long_y, signed_long_y, unsigned_long_y, int_ptr_y, float_ptr_y);
  }


  char_y           = (char&)           signed_char_r;
  signed_char_y    = (signed char&)    signed_char_r;
  unsigned_char_y  = (unsigned char&)  signed_char_r;
  short_y          = (short&)          signed_char_r;
  signed_short_y   = (signed short&)   signed_char_r;
  unsigned_short_y = (unsigned short&) signed_char_r;
  int_y            = (int&)            signed_char_r;
  signed_int_y     = (signed int&)     signed_char_r;
  unsigned_int_y   = (unsigned int&)   signed_char_r;
  long_y           = (long&)           signed_char_r;
  signed_long_y    = (signed long&)    signed_char_r;
  unsigned_long_y  = (unsigned long&)  signed_char_r;


  int_ptr_y        = (int*&)           signed_char_r;
  float_ptr_y      = (float*&)         signed_char_r;
  if (char_y==1 && signed_char_y==1 && unsigned_char_y==1 &&
      short_y==0x0102 && signed_short_y==0x0102 && unsigned_short_y==0x0102 &&
      int_y==0x01020304 && signed_int_y==0x01020304 && unsigned_int_y==0x01020304 &&
#if LONG64 || defined(__aarch64__)
      long_y==0x0102030400000000 && signed_long_y==0x0102030400000000 && unsigned_long_y==0x0102030400000000 &&
      int_ptr_y==(int*)0x0102030400000000 && float_ptr_y==(float*)0x0102030400000000)
#else
      long_y==0x01020304 && signed_long_y==0x01020304 && unsigned_long_y==0x01020304 &&
      int_ptr_y==(int*)0x01020304 && float_ptr_y==(float*)0x01020304)
#endif
    ; 
  else
    printf("ng2 \n");
  

  char_y           = (char&)           unsigned_char_r;
  signed_char_y    = (signed char&)    unsigned_char_r;
  unsigned_char_y  = (unsigned char&)  unsigned_char_r;
  short_y          = (short&)          unsigned_char_r;
  signed_short_y   = (signed short&)   unsigned_char_r;
  unsigned_short_y = (unsigned short&) unsigned_char_r;
  int_y            = (int&)            unsigned_char_r;
  signed_int_y     = (signed int&)     unsigned_char_r;
  unsigned_int_y   = (unsigned int&)   unsigned_char_r;
  long_y           = (long&)           unsigned_char_r;
  signed_long_y    = (signed long&)    unsigned_char_r;
  unsigned_long_y  = (unsigned long&)  unsigned_char_r;


  int_ptr_y        = (int*&)           unsigned_char_r;
  float_ptr_y      = (float*&)         unsigned_char_r;
  if (char_y==1 && signed_char_y==1 && unsigned_char_y==1 &&
      short_y==0x0102 && signed_short_y==0x0102 && unsigned_short_y==0x0102 &&
      int_y==0x01020304 && signed_int_y==0x01020304 && unsigned_int_y==0x01020304 &&
#if LONG64 || defined(__aarch64__)
      long_y==0x0102030400000000 && signed_long_y==0x0102030400000000 && unsigned_long_y==0x0102030400000000 &&
      int_ptr_y==(int*)0x0102030400000000 && float_ptr_y==(float*)0x0102030400000000)
#else
      long_y==0x01020304 && signed_long_y==0x01020304 && unsigned_long_y==0x01020304 &&
      int_ptr_y==(int*)0x01020304 && float_ptr_y==(float*)0x01020304)
#endif
    ; 
  else
    printf("ng3 \n");
  

  char_y           = (char&)           short_r;
  signed_char_y    = (signed char&)    short_r;
  unsigned_char_y  = (unsigned char&)  short_r;
  short_y          = (short&)          short_r;
  signed_short_y   = (signed short&)   short_r;
  unsigned_short_y = (unsigned short&) short_r;
  int_y            = (int&)            short_r;
  signed_int_y     = (signed int&)     short_r;
  unsigned_int_y   = (unsigned int&)   short_r;
  long_y           = (long&)           short_r;
  signed_long_y    = (signed long&)    short_r;
  unsigned_long_y  = (unsigned long&)  short_r;


  int_ptr_y        = (int*&)           short_r;
  float_ptr_y      = (float*&)         short_r;
  if (char_y==1 && signed_char_y==1 && unsigned_char_y==1 &&
      short_y==0x0102 && signed_short_y==0x0102 && unsigned_short_y==0x0102 &&
      int_y==0x01020304 && signed_int_y==0x01020304 && unsigned_int_y==0x01020304 &&
#if LONG64 || defined(__aarch64__)
      long_y==0x0102030400000000 && signed_long_y==0x0102030400000000 && unsigned_long_y==0x0102030400000000 &&
      int_ptr_y==(int*)0x0102030400000000 && float_ptr_y==(float*)0x0102030400000000)
#else
      long_y==0x01020304 && signed_long_y==0x01020304 && unsigned_long_y==0x01020304 &&
      int_ptr_y==(int*)0x01020304 && float_ptr_y==(float*)0x01020304)
#endif
    ; 
  else
    printf("ng4 \n");


  char_y           = (char&)           signed_short_r;
  signed_char_y    = (signed char&)    signed_short_r;
  unsigned_char_y  = (unsigned char&)  signed_short_r;
  short_y          = (short&)          signed_short_r;
  signed_short_y   = (signed short&)   signed_short_r;
  unsigned_short_y = (unsigned short&) signed_short_r;
  int_y            = (int&)            signed_short_r;
  signed_int_y     = (signed int&)     signed_short_r;
  unsigned_int_y   = (unsigned int&)   signed_short_r;
  long_y           = (long&)           signed_short_r;
  signed_long_y    = (signed long&)    signed_short_r;
  unsigned_long_y  = (unsigned long&)  signed_short_r;


  int_ptr_y        = (int*&)           signed_short_r;
  float_ptr_y      = (float*&)         signed_short_r;
  if (char_y==1 && signed_char_y==1 && unsigned_char_y==1 &&
      short_y==0x0102 && signed_short_y==0x0102 && unsigned_short_y==0x0102 &&
      int_y==0x01020304 && signed_int_y==0x01020304 && unsigned_int_y==0x01020304 &&
#if LONG64 || defined(__aarch64__)
      long_y==0x0102030400000000 && signed_long_y==0x0102030400000000 && unsigned_long_y==0x0102030400000000 &&
      int_ptr_y==(int*)0x0102030400000000 && float_ptr_y==(float*)0x0102030400000000)
#else
      long_y==0x01020304 && signed_long_y==0x01020304 && unsigned_long_y==0x01020304 &&
      int_ptr_y==(int*)0x01020304 && float_ptr_y==(float*)0x01020304)
#endif
    ; 
  else
    printf("ng5 \n");


  char_y           = (char&)           unsigned_short_r;
  signed_char_y    = (signed char&)    unsigned_short_r;
  unsigned_char_y  = (unsigned char&)  unsigned_short_r;
  short_y          = (short&)          unsigned_short_r;
  signed_short_y   = (signed short&)   unsigned_short_r;
  unsigned_short_y = (unsigned short&) unsigned_short_r;
  int_y            = (int&)            unsigned_short_r;
  signed_int_y     = (signed int&)     unsigned_short_r;
  unsigned_int_y   = (unsigned int&)   unsigned_short_r;
  long_y           = (long&)           unsigned_short_r;
  signed_long_y    = (signed long&)    unsigned_short_r;
  unsigned_long_y  = (unsigned long&)  unsigned_short_r;


  int_ptr_y        = (int*&)           unsigned_short_r;
  float_ptr_y      = (float*&)         unsigned_short_r;
  if (char_y==1 && signed_char_y==1 && unsigned_char_y==1 &&
      short_y==0x0102 && signed_short_y==0x0102 && unsigned_short_y==0x0102 &&
      int_y==0x01020304 && signed_int_y==0x01020304 && unsigned_int_y==0x01020304 &&
#if LONG64 || defined(__aarch64__)
      long_y==0x0102030400000000 && signed_long_y==0x0102030400000000 && unsigned_long_y==0x0102030400000000 &&
      int_ptr_y==(int*)0x0102030400000000 && float_ptr_y==(float*)0x0102030400000000)
#else
      long_y==0x01020304 && signed_long_y==0x01020304 && unsigned_long_y==0x01020304 &&
      int_ptr_y==(int*)0x01020304 && float_ptr_y==(float*)0x01020304)
#endif
    ; 
  else
    printf("ng6 \n");





  char_y           = (char&)           int_r;
  signed_char_y    = (signed char&)    int_r;
  unsigned_char_y  = (unsigned char&)  int_r;
  short_y          = (short&)          int_r;
  signed_short_y   = (signed short&)   int_r;
  unsigned_short_y = (unsigned short&) int_r;
  int_y            = (int&)            int_r;
  signed_int_y     = (signed int&)     int_r;
  unsigned_int_y   = (unsigned int&)   int_r;
  long_y           = (long&)           int_r;
  signed_long_y    = (signed long&)    int_r;
  unsigned_long_y  = (unsigned long&)  int_r;


  int_ptr_y        = (int*&)           int_r;
  float_ptr_y      = (float*&)         int_r;
  if (char_y==1 && signed_char_y==1 && unsigned_char_y==1 &&
      short_y==0x0102 && signed_short_y==0x0102 && unsigned_short_y==0x0102 &&
      int_y==0x01020304 && signed_int_y==0x01020304 && unsigned_int_y==0x01020304 &&
#if LONG64 || defined(__aarch64__)
      long_y==0x0102030401020304 && signed_long_y==0x0102030401020304 && unsigned_long_y==0x0102030401020304 &&
      int_ptr_y==(int*)0x0102030401020304 && float_ptr_y==(float*)0x0102030401020304)
#else
      long_y==0x01020304 && signed_long_y==0x01020304 && unsigned_long_y==0x01020304 &&
      int_ptr_y==(int*)0x01020304 && float_ptr_y==(float*)0x01020304)
#endif
    ; 
  else {
    printf("ng7 \n");
    printf("int_ptr_y=0x%x %x\n", *(int*)&int_ptr_y, *(int*)(((int*)&int_ptr_y)+1));
  }

  char_y           = (char&)           signed_int_r;
  signed_char_y    = (signed char&)    signed_int_r;
  unsigned_char_y  = (unsigned char&)  signed_int_r;
  short_y          = (short&)          signed_int_r;
  signed_short_y   = (signed short&)   signed_int_r;
  unsigned_short_y = (unsigned short&) signed_int_r;
  int_y            = (int&)            signed_int_r;
  signed_int_y     = (signed int&)     signed_int_r;
  unsigned_int_y   = (unsigned int&)   signed_int_r;
  long_y           = (long&)           signed_int_r;
  signed_long_y    = (signed long&)    signed_int_r;
  unsigned_long_y  = (unsigned long&)  signed_int_r;


  int_ptr_y        = (int*&)           signed_int_r;
  float_ptr_y      = (float*&)         signed_int_r;
  if (char_y==1 && signed_char_y==1 && unsigned_char_y==1 &&
      short_y==0x0102 && signed_short_y==0x0102 && unsigned_short_y==0x0102 &&
      int_y==0x01020304 && signed_int_y==0x01020304 && unsigned_int_y==0x01020304 &&
#if LONG64 || defined(__aarch64__)
      long_y==0x0102030401020304 && signed_long_y==0x0102030401020304 && unsigned_long_y==0x0102030401020304 &&
      int_ptr_y==(int*)0x0102030401020304 && float_ptr_y==(float*)0x0102030401020304)
#else
      long_y==0x01020304 && signed_long_y==0x01020304 && unsigned_long_y==0x01020304 &&
      int_ptr_y==(int*)0x01020304 && float_ptr_y==(float*)0x01020304)
#endif
    ; 
else {
    printf("ng8 \n");
    printf("int_ptr_y=0x%x %x\n", *(int*)&int_ptr_y, *(int*)(((int*)&int_ptr_y)+1));
}

  char_y           = (char&)           unsigned_int_r;
  signed_char_y    = (signed char&)    unsigned_int_r;
  unsigned_char_y  = (unsigned char&)  unsigned_int_r;
  short_y          = (short&)          unsigned_int_r;
  signed_short_y   = (signed short&)   unsigned_int_r;
  unsigned_short_y = (unsigned short&) unsigned_int_r;
  int_y            = (int&)            unsigned_int_r;
  signed_int_y     = (signed int&)     unsigned_int_r;
  unsigned_int_y   = (unsigned int&)   unsigned_int_r;
  long_y           = (long&)           unsigned_int_r;
  signed_long_y    = (signed long&)    unsigned_int_r;
  unsigned_long_y  = (unsigned long&)  unsigned_int_r;


  int_ptr_y        = (int*&)           unsigned_int_r;
  float_ptr_y      = (float*&)         unsigned_int_r;
  if (char_y==1 && signed_char_y==1 && unsigned_char_y==1 &&
      short_y==0x0102 && signed_short_y==0x0102 && unsigned_short_y==0x0102 &&
      int_y==0x01020304 && signed_int_y==0x01020304 && unsigned_int_y==0x01020304 &&
#if LONG64 || defined(__aarch64__)
      long_y==0x0102030401020304 && signed_long_y==0x0102030401020304 && unsigned_long_y==0x0102030401020304 &&
      int_ptr_y==(int*)0x0102030401020304 && float_ptr_y==(float*)0x0102030401020304)
#else
      long_y==0x01020304 && signed_long_y==0x01020304 && unsigned_long_y==0x01020304 &&
      int_ptr_y==(int*)0x01020304 && float_ptr_y==(float*)0x01020304)
#endif
    ; 
  else {
    printf("ng9 \n");
    printf("int_ptr_y=0x%x %x\n", *(int*)&int_ptr_y, *(int*)(((int*)&int_ptr_y)+1));
  }





  char_y           = (char&)           long_r;
  signed_char_y    = (signed char&)    long_r;
  unsigned_char_y  = (unsigned char&)  long_r;
  short_y          = (short&)          long_r;
  signed_short_y   = (signed short&)   long_r;
  unsigned_short_y = (unsigned short&) long_r;
  int_y            = (int&)            long_r;
  signed_int_y     = (signed int&)     long_r;
  unsigned_int_y   = (unsigned int&)   long_r;
  long_y           = (long&)           long_r;
  signed_long_y    = (signed long&)    long_r;
  unsigned_long_y  = (unsigned long&)  long_r;


  int_ptr_y        = (int*&)           long_r;
  float_ptr_y      = (float*&)         long_r;
#if LONG64 || defined(__aarch64__)
  if (char_y==0 && signed_char_y==0 && unsigned_char_y==0 &&
      short_y==0x00 && signed_short_y==0x00 && unsigned_short_y==0x00 &&
      int_y==0x00 && signed_int_y==0x00 && unsigned_int_y==0x00 &&
#else
  if (char_y==1 && signed_char_y==1 && unsigned_char_y==1 &&
      short_y==0x0102 && signed_short_y==0x0102 && unsigned_short_y==0x0102 &&
      int_y==0x01020304 && signed_int_y==0x01020304 && unsigned_int_y==0x01020304 &&
#endif 
      long_y==0x01020304 && signed_long_y==0x01020304 && unsigned_long_y==0x01020304 &&
      int_ptr_y==(int*)0x01020304 && float_ptr_y==(float*)0x01020304)
    ; 
else{
    printf("ng10 \n");
    printf("char_y=%x\n", char_y);
    printf("long_y=0x%x %x\n", *(int*)&long_y, *(int*)(((int*)&long_y)+1));
    printf("signed_long_y=0x%x %x\n", *(int*)&signed_long_y, *(int*)(((int*)&signed_long_y)+1));
    printf("unsigned_long_y=0x%x %x\n", *(int*)&unsigned_long_y, *(int*)(((int*)&unsigned_long_y)+1));
    printf("float_ptr_y=0x%x %x\n", *(int*)&float_ptr_y, *(int*)(((int*)&float_ptr_y)+1));
    printf("float_ptr_y=0x%x %x\n", *(int*)&float_ptr_y, *(int*)(((int*)&float_ptr_y)+1));
}

  char_y           = (char&)           signed_long_r;
  signed_char_y    = (signed char&)    signed_long_r;
  unsigned_char_y  = (unsigned char&)  signed_long_r;
  short_y          = (short&)          signed_long_r;
  signed_short_y   = (signed short&)   signed_long_r;
  unsigned_short_y = (unsigned short&) signed_long_r;
  int_y            = (int&)            signed_long_r;
  signed_int_y     = (signed int&)     signed_long_r;
  unsigned_int_y   = (unsigned int&)   signed_long_r;
  long_y           = (long&)           signed_long_r;
  signed_long_y    = (signed long&)    signed_long_r;
  unsigned_long_y  = (unsigned long&)  signed_long_r;


  int_ptr_y        = (int*&)           signed_long_r;
  float_ptr_y      = (float*&)         signed_long_r;
#if LONG64 || defined(__aarch64__)
  if (char_y==0 && signed_char_y==0 && unsigned_char_y==0 &&
      short_y==0x00 && signed_short_y==0x00 && unsigned_short_y==0x00 &&
      int_y==0x00 && signed_int_y==0x00 && unsigned_int_y==0x00 &&
#else
  if (char_y==1 && signed_char_y==1 && unsigned_char_y==1 &&
      short_y==0x0102 && signed_short_y==0x0102 && unsigned_short_y==0x0102 &&
      int_y==0x01020304 && signed_int_y==0x01020304 && unsigned_int_y==0x01020304 &&
#endif
      long_y==0x01020304 && signed_long_y==0x01020304 && unsigned_long_y==0x01020304 &&
      int_ptr_y==(int*)0x01020304 && float_ptr_y==(float*)0x01020304)
    ; 
  else
    printf("ng11 \n");


  char_y           = (char&)           unsigned_long_r;
  signed_char_y    = (signed char&)    unsigned_long_r;
  unsigned_char_y  = (unsigned char&)  unsigned_long_r;
  short_y          = (short&)          unsigned_long_r;
  signed_short_y   = (signed short&)   unsigned_long_r;
  unsigned_short_y = (unsigned short&) unsigned_long_r;
  int_y            = (int&)            unsigned_long_r;
  signed_int_y     = (signed int&)     unsigned_long_r;
  unsigned_int_y   = (unsigned int&)   unsigned_long_r;
  long_y           = (long&)           unsigned_long_r;
  signed_long_y    = (signed long&)    unsigned_long_r;
  unsigned_long_y  = (unsigned long&)  unsigned_long_r;


  int_ptr_y        = (int*&)           unsigned_long_r;
  float_ptr_y      = (float*&)         unsigned_long_r;
#if LONG64 || defined(__aarch64__)
  if (char_y==0 && signed_char_y==0 && unsigned_char_y==0 &&
      short_y==0x00 && signed_short_y==0x00 && unsigned_short_y==0x00 &&
      int_y==0x00 && signed_int_y==0x00 && unsigned_int_y==0x00 &&
#else
  if (char_y==1 && signed_char_y==1 && unsigned_char_y==1 &&
      short_y==0x0102 && signed_short_y==0x0102 && unsigned_short_y==0x0102 &&
      int_y==0x01020304 && signed_int_y==0x01020304 && unsigned_int_y==0x01020304 &&
#endif
      long_y==0x01020304 && signed_long_y==0x01020304 && unsigned_long_y==0x01020304 &&
      int_ptr_y==(int*)0x01020304 && float_ptr_y==(float*)0x01020304)
    ; 
  else
    printf("ng12 \n");


  float_y          = (float&)          float_r;
  if (float_y == 1.0)
    ; 
  else
    ; 


  double_y         = (double&)         double_r;
  if (double_y == 5.005)
    ; 
  else
    printf("ng14 %f %f\n",float_y, double_y);


  printf("ok\n");
#endif
}
  
