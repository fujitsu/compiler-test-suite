#include <stdio.h>
#define N 100
void i8_to_r8(double * restrict a, long long int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    u[i] = i;
    a[i] = (double)(u[i]);
  }
}

void i4_to_r8(double * restrict a, int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    u[i] = i;
    a[i] = (double)(u[i]);
  }
}

void i2_to_r8(double * restrict a, short int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    u[i] = i;
    a[i] = (double)(u[i]);
  }
}

void i1_to_r8(double * restrict a, char * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    u[i] = i;
    a[i] = (double)(u[i]);
  }
}

void r8_to_i8(double * restrict a, long long int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    a[i] = (double)i;
    u[i] = (long long int)a[i];
  }
}

void r8_to_i4(double * restrict a, int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    a[i] = (double)i;
    u[i] = (int)a[i];
  }
}

void r8_to_i2(double * restrict a, short int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    a[i] = (double)i;
    u[i] = (short int)a[i];
  }
}

void r8_to_i1(double * restrict a, char * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    a[i] = (double)i;
    u[i] = (char)a[i];
  }
}
void u8_to_r8(double * restrict a, unsigned long long int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    u[i] = i;
    a[i] = (double)(u[i]);
  }
}

void u4_to_r8(double * restrict a, unsigned int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    u[i] = i;
    a[i] = (double)(u[i]);
  }
}

void u2_to_r8(double * restrict a, unsigned short int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    u[i] = i;
    a[i] = (double)(u[i]);
  }
}

void u1_to_r8(double * restrict a, unsigned char * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    u[i] = i;
    a[i] = (double)(u[i]);
  }
}

void r8_to_u8(double * restrict a, unsigned long long int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    a[i] = (double)i;
    u[i] = (unsigned long long int)a[i];
  }
}

void r8_to_u4(double * restrict a, unsigned int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    a[i] = (double)i;
    u[i] = (unsigned int)a[i];
  }
}

void r8_to_u2(double * restrict a, unsigned short int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    a[i] = (double)i;
    u[i] = (unsigned short int)a[i];
  }
}

void r8_to_u1(double * restrict a, unsigned char * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    a[i] = (double)i;
    u[i] = (unsigned char)a[i];
  }
}
void i8_to_r4(float * restrict a, long long int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    u[i] = i;
    a[i] = (float)(u[i]);
  }
}

void i4_to_r4(float * restrict a, int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    u[i] = i;
    a[i] = (float)(u[i]);
  }
}

void i2_to_r4(float * restrict a, short int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    u[i] = i;
    a[i] = (float)(u[i]);
  }
}

void i1_to_r4(float * restrict a, char * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    u[i] = i;
    a[i] = (float)(u[i]);
  }
}

void r4_to_i8(float * restrict a, long long int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    a[i] = (float)i;
    u[i] = (long long int)a[i];
  }
}

void r4_to_i4(float * restrict a, int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    a[i] = (float)i;
    u[i] = (int)a[i];
  }
}

void r4_to_i2(float * restrict a, short int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    a[i] = (float)i;
    u[i] = (short int)a[i];
  }
}

void r4_to_i1(float * restrict a, char * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    a[i] = (float)i;
    u[i] = (char)a[i];
  }
}
void u8_to_r4(float * restrict a, unsigned long long int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    u[i] = i;
    a[i] = (float)(u[i]);
  }
}

void u4_to_r4(float * restrict a, unsigned int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    u[i] = i;
    a[i] = (float)(u[i]);
  }
}

void u2_to_r4(float * restrict a, unsigned short int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    u[i] = i;
    a[i] = (float)(u[i]);
  }
}

void u1_to_r4(float * restrict a, unsigned char * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    u[i] = i;
    a[i] = (float)(u[i]);
  }
}

void r4_to_u8(float * restrict a, unsigned long long int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    a[i] = (float)i;
    u[i] = (unsigned long long int)a[i];
  }
}

void r4_to_u4(float * restrict a, unsigned int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    a[i] = (float)i;
    u[i] = (unsigned int)a[i];
  }
}

void r4_to_u2(float * restrict a, unsigned short int * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    a[i] = (float)i;
    u[i] = (unsigned short int)a[i];
  }
}

void r4_to_u1(float * restrict a, unsigned char * restrict u)
{
  int i;
  for (i=0; i<N; ++i) {
    a[i] = (float)i;
    u[i] = (unsigned char)a[i];
  }
}
static void init_r8_array(double * restrict a, double data){
  int i;
  for (i=0; i<N; ++i) {
    a[i] = data;
  }
}

static void init_r4_array(float * restrict a, float data){
  int i;
  for (i=0; i<N; ++i) {
    a[i] = data;
  }
}

static void init_i8_array(long long int * restrict a, long long int data){
  int i;
  for (i=0; i<N; ++i) {
    a[i] = data;
  }
}

static void init_i4_array(int * restrict a, int data){
  int i;
  for (i=0; i<N; ++i) {
    a[i] = data;
  }
}

static void init_i2_array(short int * restrict a, short int data){
  int i;
  for (i=0; i<N; ++i) {
    a[i] = data;
  }
}

static void init_i1_array(char * restrict a, char data){
  int i;
  for (i=0; i<N; ++i) {
    a[i] = data;
  }
}

static void init_u8_array(unsigned long long int * restrict a, unsigned long long int data){
  int i;
  for (i=0; i<N; ++i) {
    a[i] = data;
  }
}

static void init_u4_array(unsigned int * restrict a, unsigned int data){
  int i;
  for (i=0; i<N; ++i) {
    a[i] = data;
  }
}

static void init_u2_array(unsigned short int * restrict a, unsigned short int data){
  int i;
  for (i=0; i<N; ++i) {
    a[i] = data;
  }
}

static void init_u1_array(unsigned char * restrict a, unsigned char data){
  int i;
  for (i=0; i<N; ++i) {
    a[i] = data;
  }
}
static double r8sum(double * restrict a) {
  int i;
  double ans;
  ans = 0.0;
  for (i=0; i<N; ++i) {
    ans += a[i];
  }
  return ans;
}

static float r4sum(float * restrict a) {
  int i;
  float ans;
  ans = 0.0;
  for (i=0; i<N; ++i) {
    ans += a[i];
  }
  return ans;
}

static long long int i8sum(long long int * restrict a) {
  int i;
  long long int ans;
  ans = 0;
  for (i=0; i<N; ++i) {
    ans += a[i];
  }
  return ans;
}

static int i4sum(int * restrict a) {
  int i;
  int ans;
  ans = 0;
  for (i=0; i<N; ++i) {
    ans += a[i];
  }
  return ans;
}

static short int i2sum(short int * restrict a) {
  int i;
  short int ans;
  ans = 0;
  for (i=0; i<N; ++i) {
    ans += a[i];
  }
  return ans;
}

static char i1sum(char * restrict a) {
  int i;
  char ans;
  ans = 0;
  for (i=0; i<N; ++i) {
    ans += a[i];
  }
  return ans;
}

static unsigned long long int u8sum(unsigned long long int * restrict a) {
  int i;
  unsigned long long int ans;
  ans = 0;
  for (i=0; i<N; ++i) {
    ans += a[i];
  }
  return ans;
}

static unsigned int u4sum(unsigned int * restrict a) {
  int i;
  unsigned int ans;
  ans = 0;
  for (i=0; i<N; ++i) {
    ans += a[i];
  }
  return ans;
}

static unsigned short int u2sum(unsigned short int * restrict a) {
  int i;
  unsigned short int ans;
  ans = 0;
  for (i=0; i<N; ++i) {
    ans += a[i];
  }
  return ans;
}

static unsigned char u1sum(unsigned char * restrict a) {
  int i;
  unsigned char ans;
  ans = 0;
  for (i=0; i<N; ++i) {
    ans += a[i];
  }
  return ans;
}
int main(void) {
  double a8[N];
  float a4[N];
  long long int i8[N];
  int i4[N];
  short int i2[N];
  char i1[N];
  unsigned long long int u8[N];
  unsigned int u4[N];
  unsigned short int u2[N];
  unsigned char u1[N];

  
  init_i8_array(i8, 0);
  init_r8_array(a8, 0.0);
  i8_to_r8(a8,i8);
  if ((int)r8sum(a8) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)r8sum(a8));
  }

  init_i4_array(i4, 0);
  init_r8_array(a8, 0.0);
  i4_to_r8(a8,i4);
  if ((int)r8sum(a8) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)r8sum(a8));
  }

  init_i2_array(i2, 0);
  init_r8_array(a8, 0.0);
  i2_to_r8(a8,i2);
  if ((int)r8sum(a8) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)r8sum(a8));
  }

  init_i1_array(i1, 0);
  init_r8_array(a8, 0.0);
  i1_to_r8(a8,i1);
  if ((int)r8sum(a8) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)r8sum(a8));
  }

  

  init_u8_array(u8, 0);
  init_r8_array(a8, 0.0);
  u8_to_r8(a8,u8);
  if ((int)r8sum(a8) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)r8sum(a8));
  }

  init_u4_array(u4, 0);
  init_r8_array(a8, 0.0);
  u4_to_r8(a8,u4);
  if ((int)r8sum(a8) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)r8sum(a8));
  }

  init_u2_array(u2, 0);
  init_r8_array(a8, 0.0);
  u2_to_r8(a8,u2);
  if ((int)r8sum(a8) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)r8sum(a8));
  }

  init_u1_array(u1, 0);
  init_r8_array(a8, 0.0);
  u1_to_r8(a8,u1);
  if ((int)r8sum(a8) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)r8sum(a8));
  }

  

  init_r8_array(a8, 0.0);
  init_i8_array(i8, 0);
  r8_to_i8(a8,i8);
  if ((int)i8sum(i8) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)i8sum(i8));
  }

  init_r8_array(a8, 0.0);
  init_i4_array(i4, 0);
  r8_to_i4(a8,i4);
  if ((int)i4sum(i4) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)i4sum(i4));
  }

  init_r8_array(a8, 0.0);
  init_i2_array(i2, 0);
  r8_to_i2(a8,i2);
  if ((int)i2sum(i2) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)i2sum(i2));
  }

  init_r8_array(a8, 0.0);
  init_i1_array(i1, 0);
  r8_to_i1(a8,i1);
  if ((int)i1sum(i1) == 86) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)i1sum(i1));
  }

  

  init_r8_array(a8, 0.0);
  init_u8_array(u8, 0);
  r8_to_u8(a8,u8);
  if ((int)u8sum(u8) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)u8sum(u8));
  }

  init_r8_array(a8, 0.0);
  init_u4_array(u4, 0);
  r8_to_u4(a8,u4);
  if ((int)u4sum(u4) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)u4sum(u4));
  }

  init_r8_array(a8, 0.0);
  init_u2_array(u2, 0);
  r8_to_u2(a8,u2);
  if ((int)u2sum(u2) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)u2sum(u2));
  }

  init_r8_array(a8, 0.0);
  init_u1_array(u1, 0);
  r8_to_u1(a8,u1);
  if ((int)u1sum(u1) == 86) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)u1sum(u1));
  }

  

  
  init_i8_array(i8, 0);
  init_r4_array(a4, 0.0);
  i8_to_r4(a4,i8);
  if ((int)r4sum(a4) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)r4sum(a4));
  }

  init_i4_array(i4, 0);
  init_r4_array(a4, 0.0);
  i4_to_r4(a4,i4);
  if ((int)r4sum(a4) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)r4sum(a4));
  }

  init_i2_array(i2, 0);
  init_r4_array(a4, 0.0);
  i2_to_r4(a4,i2);
  if ((int)r4sum(a4) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)r4sum(a4));
  }

  init_i1_array(i1, 0);
  init_r4_array(a4, 0.0);
  i1_to_r4(a4,i1);
  if ((int)r4sum(a4) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)r4sum(a4));
  }

  

  init_u8_array(u8, 0);
  init_r4_array(a4, 0.0);
  u8_to_r4(a4,u8);
  if ((int)r4sum(a4) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)r4sum(a4));
  }

  init_u4_array(u4, 0);
  init_r4_array(a4, 0.0);
  u4_to_r4(a4,u4);
  if ((int)r4sum(a4) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)r4sum(a4));
  }

  init_u2_array(u2, 0);
  init_r4_array(a4, 0.0);
  u2_to_r4(a4,u2);
  if ((int)r4sum(a4) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)r4sum(a4));
  }

  init_u1_array(u1, 0);
  init_r4_array(a4, 0.0);
  u1_to_r4(a4,u1);
  if ((int)r4sum(a4) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)r4sum(a4));
  }

  

  init_r4_array(a4, 0.0);
  init_i8_array(i8, 0);
  r4_to_i8(a4,i8);
  if ((int)i8sum(i8) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)i8sum(i8));
  }

  init_r4_array(a4, 0.0);
  init_i4_array(i4, 0);
  r4_to_i4(a4,i4);
  if ((int)i4sum(i4) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)i4sum(i4));
  }

  init_r4_array(a4, 0.0);
  init_i2_array(i2, 0);
  r4_to_i2(a4,i2);
  if ((int)i2sum(i2) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)i2sum(i2));
  }

  init_r4_array(a4, 0.0);
  init_i1_array(i1, 0);
  r4_to_i1(a4,i1);
  if ((int)i1sum(i1) == 86) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)i1sum(i1));
  }

  

  init_r4_array(a4, 0.0);
  init_u8_array(u8, 0);
  r4_to_u8(a4,u8);
  if ((int)u8sum(u8) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)u8sum(u8));
  }

  init_r4_array(a4, 0.0);
  init_u4_array(u4, 0);
  r4_to_u4(a4,u4);
  if ((int)u4sum(u4) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)u4sum(u4));
  }

  init_r4_array(a4, 0.0);
  init_u2_array(u2, 0);
  r4_to_u2(a4,u2);
  if ((int)u2sum(u2) == 4950) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)u2sum(u2));
  }

  init_r4_array(a4, 0.0);
  init_u1_array(u1, 0);
  r4_to_u1(a4,u1);
  if ((int)u1sum(u1) == 86) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)u1sum(u1));
  }
}
