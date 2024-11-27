#include <stdio.h>
#include <string.h>

static int test1(int in1, int in2) {
  int ret = 0;

  for (int i=0; i<1000; i++) {
    if (in1 == 1) {
      ret--;
    }
    else {
      ret++;
    }
  }

  for (int i=0; i<1000; i++) {
    if (in1 != in2) {
      ret--;
    }
    else {
      ret++;
    }
  }

  for (int i=0; i<1000; i++) {
    if (in1 > in2) {
      ret--;
    }
    else {
      ret++;
    }
  }

  for (int i=0; i<in1; i++) {
    if (in1 < in2) {
      ret--;
    }
    else {
      ret++;
    }
  }

  for (int i=in1; i<in2; i++) {
    if (in1 >= in2) {
      ret--;
    }
    else {
      ret++;
    }
  }
  
  for (int i=0; i<in2; i++) {
    if (in1 <= in2) {
      ret--;
    }
    else {
      ret++;
    }
  }

  return ret;
}

static int test2(int in1[10], int in2[10], int in3, int in4)
{
  int ret = 0;

  if (in1[3] > in2[3] || in3 > in4)
    {
      ret++;
    }
  else
    {
      ret--;
    }
  if (!(in1[3] > in2[3]))
    {
      ret++;
    }

  for (int i = 300; i > 0; i--)
    {
      if (in1[5] > 100 || in2[5] > in4)
	{
	  ret++;
	}
      else
	{
	  ret--;
	}
    }
  
  return ret;
}

static int test3(char* str1, char* str2)
{
  int ret = 0;  
  if (strcmp(str1,str2))
    {
      ret++;
    }
  if (str1 == str2) {
    ret--;
  }

  return ret;
}

int main() {
  int a[10],b[10],c,d;
  int ret;
  for (int i = 0; i < 10; i++) {
    a[i] = i;
    b[i] = i+1;
  }
  c=1;
  d=2;
  ret = test1(10,20);
  if (ret != 980)
    puts ("NG");
  
  ret = test2(a,b,c,d);
  if (ret != 300)
    puts ("NG");

  ret = test3("abc","def2");
  if (ret != 1)
    puts ("NG");    

  puts ("OK");
  return 0;
}
