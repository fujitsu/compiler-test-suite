#include<stdio.h>
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
  printf("05 START\n");
  func1();
  func2();
  func3();
  func4();
  func5();
  func6();
  func7();
  func8();
  printf("05 END  \n");
}

int func1(){
  static int i=1;
  static short int s=2;
  static char  c=3;
  static unsigned int ui=4;
  static unsigned short int us=5;
  static unsigned char   uc=6;

  if (i>=s) 
    printf("05 FUNC1-1 NG\n");
  else
    printf("05 FUNC1-1 OK\n");
  if (s>i) 
    printf("05 FUNC1-2 OK\n");
  else
    printf("05 FUNC1-2 NG\n");
  if (i!=i) 
    printf("05 FUNC1-3 NG\n");
  else
    printf("05 FUNC1-3 OK\n");
  if (ui<us) 
    printf("05 FUNC1-4 OK\n");
  else
    printf("05 FUNC1-4 NG\n");
  if (uc<=i) 
    printf("05 FUNC1-5 NG\n");
  else
    printf("05 FUNC1-5 OK\n");
  if (ui==ui) 
    printf("05 FUNC1-6 OK\n");
  else
    printf("05 FUNC1-6 NG\n");
}

int func2(){
  static int i=1;
  static short int s=2;
  static char  c=3;
  static unsigned int ui[2]={4,0};
  static unsigned short int us[3]={0,5,0};
  static unsigned char   uc[4]={0,0,0,6};
  static int *ip=&i;
  static short int *sp=&s;
  static char  *cp=&c;

  if (*ip>=i) 
    printf("05 FUNC2-1 OK\n");
  else
    printf("05 FUNC2-1 NG\n");
  if (*(sp+i-1)>c)   
    printf("05 FUNC2-2 NG\n");
  else
    printf("05 FUNC2-2 OK\n");
  if (ui[i]!=i) 
    printf("05 FUNC2-3 OK\n");
  else
    printf("05 FUNC2-3 NG\n");
  if (uc[3]<c) 
    printf("05 FUNC2-4 NG\n");
  else
    printf("05 FUNC2-4 OK\n");
  if (*(sp+i-i)<=s) 
    printf("05 FUNC2-5 OK\n");
  else
    printf("05 FUNC2-5 NG\n");
  if (us[i]==s) 
    printf("05 FUNC2-6 NG\n");
  else
    printf("05 FUNC2-6 OK\n");
}

int func3(){
  static int i=1;
  static short int s=2;
  static char  c=3;
  static unsigned int ui[2]={4,0};
  static unsigned short int us[3]={0,5,0};
  static unsigned char   uc[4]={0,0,0,6};
  static int *ip=&i;
  static short int *sp=&s;
  static char  *cp=&c;

  if (i>=*(sp+i-i)) 
    printf("05 FUNC3-1 NG\n");
  else
    printf("05 FUNC3-1 OK\n");
  if (c>*(sp+i-i))  
    printf("05 FUNC3-2 OK\n");
  else
    printf("05 FUNC3-2 NG\n");
  if (c!=*(cp+i-i)) 
    printf("05 FUNC3-3 NG\n");
  else
    printf("05 FUNC3-3 OK\n");
  if (s<us[i]) 
    printf("05 FUNC3-4 OK\n");
  else
    printf("05 FUNC3-4 NG\n");
  if (s<=*(ip+i-i)) 
    printf("05 FUNC3-5 NG\n");
  else
    printf("05 FUNC3-5 OK\n");
  if (s==*(sp+s-s)) 
    printf("05 FUNC3-6 OK\n");
  else
    printf("05 FUNC3-6 NG\n");
}

int func4(){
  static int i=1;
  static short int s=2;
  static char  c=3;
  static unsigned int ui=4;
  static unsigned short int us=5;
  static unsigned char   uc=6;

  if ((i+i)>=(i+i)) 
    printf("05 FUNC4-1 OK\n");
  else
    printf("05 FUNC4-1 NG\n");
  if ((s+s)>(s*s))  
    printf("05 FUNC4-2 NG\n");
  else
    printf("05 FUNC4-2 OK\n");
  if ((c/c)!=(c*c)) 
    printf("05 FUNC4-3 OK\n");
  else
    printf("05 FUNC4-3 NG\n");
  if ((ui+ui+ui)<(ui+ui)) 
    printf("05 FUNC4-4 NG\n");
  else
    printf("05 FUNC4-4 OK\n");
  if ((us+us)<=(us*us+us)) 
    printf("05 FUNC4-5 OK\n");
  else
    printf("05 FUNC4-5 NG\n");
  if ((uc/uc)==(uc*uc)) 
    printf("05 FUNC4-6 NG\n");
  else
    printf("05 FUNC4-6 OK\n");
}

int func5(){
  static int i=1;
  static short int s=2;
  static char  c=3;
  static unsigned int ui=4;
  static unsigned short int us=5;
  static unsigned char   uc=6;

  if ((i&&i)>=(i?us:us)) 
    printf("05 FUNC5-1 NG\n");
  else
    printf("05 FUNC5-1 OK\n");
  if ((s?uc:uc)>(uc||uc))  
    printf("05 FUNC5-2 OK\n");
  else
    printf("05 FUNC5-2 NG\n");
  if ((c?i:i)!=(i&&i)) 
    printf("05 FUNC5-3 NG\n");
  else
    printf("05 FUNC5-3 OK\n");
  if ((us&&uc)<(ui?ui:uc)) 
    printf("05 FUNC5-4 OK\n");
  else
    printf("05 FUNC5-4 NG\n");
  if ((us?us:us)<=(us?i:i)) 
    printf("05 FUNC5-5 NG\n");
  else
    printf("05 FUNC5-5 OK\n");
  if ((i&&i)==(s||s)) 
    printf("05 FUNC5-6 OK\n");
  else
    printf("05 FUNC5-6 NG\n");
}

int func6(){
  static int i=1;
  static short int s=2;
  static char  c=3;
  static unsigned int ui=4;
  static unsigned short int us=5;
  static unsigned char   uc=6;

  if (s>=(2-1)) 
    printf("05 FUNC6-1 OK\n");
  else
    printf("05 FUNC6-1 NG\n");
  if (uc>(1+2+3+4))  
    printf("05 FUNC6-2 NG\n");
  else
    printf("05 FUNC6-2 OK\n");
  if (i!=(float)(5+5)) 
    printf("05 FUNC6-3 OK\n");
  else
    printf("05 FUNC6-3 NG\n");
  if (us<(double)1) 
    printf("05 FUNC6-4 NG\n");
  else
    printf("05 FUNC6-4 OK\n");
  if (uc<=(10*10)) 
    printf("05 FUNC6-5 OK\n");
  else
    printf("05 FUNC6-5 NG\n");
  if (ui==(int)(char)10) 
    printf("05 FUNC6-6 NG\n");
  else
    printf("05 FUNC6-6 OK\n");
}

int func7(){
  static int i[3]={1,2,3};
  static short int s[4]={1,2,3,4};
  static char  c[5]={1,2,3,4,5};
  static unsigned int ui[6]={1,2,3,4,5,6};
  static unsigned short int us[7]={1,2,3,4,5,6,7};
  static unsigned char   uc[8]={1,2,3,4,5,6,7,8};

  if (2>=i[i[1]]) 
    printf("05 FUNC7-1 NG\n");
  else
    printf("05 FUNC7-1 OK\n");
  if ((int)(short int)10>us[s[1]])  
    printf("05 FUNC7-2 OK\n");
  else
    printf("05 FUNC7-2 NG\n");
  if ((float)(5+3)!=(float)(uc[us[6]])) 
    printf("05 FUNC7-3 NG\n");
  else
    printf("05 FUNC7-3 OK\n");
  if ((double)(10+10)<(uc[7]*uc[7])) 
    printf("05 FUNC7-4 OK\n");
  else
    printf("05 FUNC7-4 NG\n");
  if ((int)100<=(c[i[1]])) 
    printf("05 FUNC7-5 NG\n");
  else
    printf("05 FUNC7-5 OK\n");
  if ((float)1==i[0]) 
    printf("05 FUNC7-6 OK\n");
  else
    printf("05 FUNC7-6 NG\n");
}

int func8(){
  static struct tag {
                      unsigned int a:5;
                      unsigned int b:4;
                    }x={1,2};
  static struct tag y[3]={{1,2},{3,4},{5,6}};

  if (y[1].b>=x.a) 
    printf("05 FUNC8-1 OK\n");
  else
    printf("05 FUNC8-1 NG\n");
  if (y[2].a>y[2].b)  
    printf("05 FUNC8-2 NG\n");
  else
    printf("05 FUNC8-2 OK\n");
  if (y[0].a!=y[1].a) 
    printf("05 FUNC8-3 OK\n");
  else
    printf("05 FUNC8-3 NG\n");
  if (x.b<x.a) 
    printf("05 FUNC8-4 NG\n");
  else
    printf("05 FUNC8-4 OK\n");
  if (x.a<=y[2].b) 
    printf("05 FUNC8-5 OK\n");
  else
    printf("05 FUNC8-5 NG\n");
  if (x.a==x.b) 
    printf("05 FUNC8-6 NG\n");
  else
    printf("05 FUNC8-6 OK\n");
}
