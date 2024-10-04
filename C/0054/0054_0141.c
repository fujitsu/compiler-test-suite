#include<stdio.h>
int func8 (void);
int func7 (void);
int func6 (void);
int func5 (void);
int func4 (void);
int func3 (void);
int func2 (void);
int func1 (void);
int func08 (void);
int func07 (void);
int func06 (void);
int func05 (void);
int func04 (void);
int func03 (void);
int func02 (void);
int func01 (void);
 

int main()
{
  printf("01 START \n");
  if(func1()!=45)
    printf("01 FUNC1  NG!   VALUE=%d \n",func1());
  if(func2()!=45)
    printf("01 FUNC2  NG!   VALUE=%d \n",func2());
  if(func3()!=45)
    printf("01 FUNC3  NG!   VALUE=%d \n",func3());
  if(func4()!=45)
    printf("01 FUNC4  NG!   VALUE=%d \n",func4());
  if(func5()!=45)
    printf("01 FUNC5  NG!   VALUE=%d \n",func5());
  if(func6()!=45)
    printf("01 FUNC6  NG!   VALUE=%d \n",func6());
  if(func7()!=45)
    printf("01 FUNC7  NG!   VALUE=%d \n",func7());
  if(func8()!=45)
    printf("01 FUNC8  NG!   VALUE=%d \n",func8());
  printf("01 END \n");
}
int 
func1 (void)
{
  int a[5]; int b=0; int c=1; char d=2; int e=3; int *p;
  struct { int x;} st,*stp;
  st.x=1;
  stp=&st;
  p=&c;
  a[0]=1    ;
  a[c]=1    ;
  ++a [ 1 ]    ;
  ++a [ c/1 ]  ;
  ++a [ c*1 ]  ;
  ++a [ 3%d ]  ;
  ++a [ c+b ]  ;
  ++a [ c-b ]  ;
  ++a [ c&c ]  ;
  ++a [ c|c ]  ;
  ++a [ c^0 ]  ;       
  ++a [ c&&c ] ;
  ++a [ c||c ] ;
  ++a [ c<<0 ] ;
  ++a [ c>>0 ] ;
  ++a [ c==1 ] ;
  ++a [ c!=0 ] ;
  ++a [ c<5 ]  ;
  ++a [ c>0 ]  ;
  ++a [ c<=2 ] ;
  ++a [ c>=0 ] ;        
  ++a [ ++b ]  ; --b;
  ++a [ --d ]  ;
                 
  ++a [ *p ]   ;
  ++a [ +c ]   ;
  ++a [ -(-c) ];
                   a[~b ];
  ++a [ !b ]   ;
  ++a [ c?c:d ];
  ++a [ sizeof(char) ];
  ++a [ func01() ];
  ++a [ c=c ]  ;        
  ++a [ c*=1 ] ;
  ++a [ c/=c ] ;
  ++a [ e%=2 ] ;
  ++a [ c+=b ] ;
  ++a [ c-=b ] ;
  ++a [ c<<=0 ];
  ++a [ c>>=0 ];
  ++a [ c&=c  ];
  ++a [ c^=0 ];
  ++a [ c|=0 ] ;        
  ++a [ st.x ] ;
  ++a [ stp->x ];  a[0]=1;
  ++a [ a[0] ];
  ++a [ c,c ]  ;
  ++a [ (char)c ] ;    
  return a[1] ;
}
int 
func01 (void) { return 1 ;}

int 
func2 (void)
{
  int  a[5]; int b=0; int c=1; char d=2; int e=3; int *p;
  struct { int x;} st,*stp;
  st.x=1;
  stp=&st;
  p=&c;
  (a+1)[0]=1 ;
  (a+1)[c]=1 ;
  ++(a+1) [ 1 ] ;
  ++(a+1) [ c/1 ] ;
  ++(a+1) [ c*1 ] ;
  ++(a+1) [ 3%d ] ;
  ++(a+1) [ c+b ] ;
  ++(a+1) [ c-b ] ;
  ++(a+1) [ c&c ] ;
  ++(a+1) [ c|c ] ;
  ++(a+1) [ c^0 ] ;    
  ++(a+1) [ c&&c ] ;
  ++(a+1) [ c||c ] ;
  ++(a+1) [ c<<0 ] ;
  ++(a+1) [ c>>0 ] ;
  ++(a+1) [ c==1 ] ;
  ++(a+1) [ c!=0 ] ;
  ++(a+1) [ c<5 ] ;
  ++(a+1) [ c>0 ] ;
  ++(a+1) [ c<=2 ] ;
  ++(a+1) [ c>=0 ] ;    
  ++(a+1) [ ++b ] ; --b;
  ++(a+1) [ --d ] ;
                 
  ++(a+1) [ *p ] ;
  ++(a+1) [ +c ] ;
  ++(a+1) [ -(-c) ];
                   (a+1)[~b ];
  ++(a+1) [ !b ] ;
  ++(a+1) [ c?c:d ];
  ++(a+1) [ sizeof(char) ];
  ++(a+1) [ func02() ];
  ++(a+1) [ c=c ] ;     
  ++(a+1) [ c*=1 ] ;
  ++(a+1) [ c/=c ] ;
  ++(a+1) [ e%=2 ] ;
  ++(a+1) [ c+=b ] ;
  ++(a+1) [ c-=b ] ;
  ++(a+1) [ c<<=0 ];
  ++(a+1) [ c>>=0 ];
  ++(a+1) [ c&=c ];
  ++(a+1) [ c^=0 ];
  ++(a+1) [ c|=0 ] ;    
  ++(a+1) [ st.x ] ;
  ++(a+1) [ stp->x ]; (a+1)[0]=1;
  ++(a+1) [ (a+1)[0] ];
  ++(a+1) [ c,c ] ;
  ++(a+1) [ (char)c ] ; 
  return (a+1)[1] ;
}
int 
func02 (void){ return 1;}
int 
func3 (void)
{
  int  a[5]; int b=0; int c=1; char d=2; int e=3; int *p; int *ap;
  struct { int x;} st,*stp;
  ap=&a[2];
  st.x=1;
  stp=&st;
  p=&c;
  (ap-1)[0]=1 ;
  (ap-1)[c]=1 ;
  ++(ap-1) [ 1 ] ;
  ++(ap-1) [ c/1 ] ;
  ++(ap-1) [ c*1 ] ;
  ++(ap-1) [ 3%d ] ;
  ++(ap-1) [ c+b ] ;
  ++(ap-1) [ c-b ] ;
  ++(ap-1) [ c&c ] ;
  ++(ap-1) [ c|c ] ;
  ++(ap-1) [ c^0 ] ;   
  ++(ap-1) [ c&&c ] ;
  ++(ap-1) [ c||c ] ;
  ++(ap-1) [ c<<0 ] ;
  ++(ap-1) [ c>>0 ] ;
  ++(ap-1) [ c==1 ] ;
  ++(ap-1) [ c!=0 ] ;
  ++(ap-1) [ c<5 ] ;
  ++(ap-1) [ c>0 ] ;
  ++(ap-1) [ c<=2 ] ;
  ++(ap-1) [ c>=0 ] ;   
  ++(ap-1) [ ++b ] ; --b;
  ++(ap-1) [ --d ] ;
                 
  ++(ap-1) [ *p ] ;
  ++(ap-1) [ +c ] ;
  ++(ap-1) [ -(-c) ];
                   (ap-1)[~b ];
  ++(ap-1) [ !b ] ;
  ++(ap-1) [ c?c:d ];
  ++(ap-1) [ (int)sizeof(char) ];
                                   
  ++(ap-1) [ func03() ];
  ++(ap-1) [ c=c ] ;    
  ++(ap-1) [ c*=1 ] ;
  ++(ap-1) [ c/=c ] ;
  ++(ap-1) [ e%=2 ] ;
  ++(ap-1) [ c+=b ] ;
  ++(ap-1) [ c-=b ] ;
  ++(ap-1) [ c<<=0 ];
  ++(ap-1) [ c>>=0 ];
  ++(ap-1) [ c&=c ];
  ++(ap-1) [ c^=0 ];
  ++(ap-1) [ c|=0 ] ;   
  ++(ap-1) [ st.x ] ;
  ++(ap-1) [ stp->x ]; (ap-1)[0]=1;
  ++(ap-1) [ (ap-1)[0] ];
  ++(ap-1) [ c,c ] ;
  ++(ap-1) [ (char)c ] ; 
  return (ap-1)[1] ;
}
int 
func03 (void){ return 1;}
int 
func4 (void)
{
  int a[5]; int b=0; int c=1; char d=2; int e=3; int *p;
  int *ap; int **app;
  struct { int x;} st,*stp;
  st.x=1;
  stp=&st;
  p=&c;
  ap=&a[0];
  app=&ap;
  (*app)[0]=1    ;
  (*app)[c]=1    ;
  ++(*app)[ 1 ]    ;
  ++(*app)[ c/1 ]  ;
  ++(*app)[ c*1 ]  ;
  ++(*app)[ 3%d ]  ;
  ++(*app)[ c+b ]  ;
  ++(*app)[ c-b ]  ;
  ++(*app)[ c&c ]  ;
  ++(*app)[ c|c ]  ;
  ++(*app)[ c^0 ]  ;       
  ++(*app)[ c&&c ] ;
  ++(*app)[ c||c ] ;
  ++(*app)[ c<<0 ] ;
  ++(*app)[ c>>0 ] ;
  ++(*app)[ c==1 ] ;
  ++(*app)[ c!=0 ] ;
  ++(*app)[ c<5 ]  ;
  ++(*app)[ c>0 ]  ;
  ++(*app)[ c<=2 ] ;
  ++(*app)[ c>=0 ] ;       
  ++(*app)[ ++b ]  ; --b;
  ++(*app)[ --d ]  ;
  
  ++(*app)[ *p ]   ;
  ++(*app)[ +c ]   ;
  ++(*app)[ -(-c) ];
    (*app)[~b ];
  ++(*app)[ !b ]   ;
  ++(*app)[ c?c:d ];
  ++(*app)[ sizeof(char) ];
  ++(*app)[ func04() ];
  ++(*app)[ c=c ]  ;        
  ++(*app)[ c*=1 ] ;
  ++(*app)[ c/=c ] ;
  ++(*app)[ e%=2 ] ;
  ++(*app)[ c+=b ] ;
  ++(*app)[ c-=b ] ;
  ++(*app)[ c<<=0 ];
  ++(*app)[ c>>=0 ];
  ++(*app)[ c&=c  ];
  ++(*app)[ c^=0 ];
  ++(*app)[ c|=0 ] ;        
  ++(*app)[ st.x ] ;
  ++(*app)[ stp->x ];  a[0]=1;
  ++(*app)[ a[0] ];
  ++(*app)[ c,c ]  ;
  ++(*app)[ (char)c ] ;    
  return (*app)[1] ;
}
int 
func04 (void) { return 1 ;}
int 
func5 (void)
{
  struct {
    int a[5];
  } sta;
  int b=0; int c=1; char d=2; int e=3; int *p;
  struct { int x;} st,*stp;
  st.x=1;
  stp=&st;
  p=&c;
  sta.a[0]=1 ;
  sta.a[c]=1   ;
  ++sta.a [ 1 ] ;
  ++sta.a [ c/1 ] ;
  ++sta.a [ c*1 ] ;
  ++sta.a [ 3%d ] ;
  ++sta.a [ c+b ] ;
  ++sta.a [ c-b ] ;
  ++sta.a [ c&c ] ;
  ++sta.a [ c|c ] ;
  ++sta.a [ c^0 ] ;    
  ++sta.a [ c&&c ] ;
  ++sta.a [ c||c ] ;
  ++sta.a [ c<<0 ] ;
  ++sta.a [ c>>0 ] ;
  ++sta.a [ c==1 ] ;
  ++sta.a [ c!=0 ] ;
  ++sta.a [ c<5 ] ;
  ++sta.a [ c>0 ] ;
  ++sta.a [ c<=2 ] ;
  ++sta.a [ c>=0 ] ;    
  ++sta.a [ ++b ] ; --b;
  ++sta.a [ --d ] ;
  
  ++sta.a [ *p ] ;
  ++sta.a [ +c ] ;
  ++sta.a [ -(-c) ];
    sta.a[~b ];        
  ++sta.a [ !b ] ;
  ++sta.a [ c?c:d ];
  ++sta.a [ sizeof(char) ];
  ++sta.a [ func05() ];
  ++sta.a [ c=c ] ;     
  ++sta.a [ c*=1 ] ;
  ++sta.a [ c/=c ] ;
  ++sta.a [ e%=2 ] ;
  ++sta.a [ c+=b ] ;
  ++sta.a [ c-=b ] ;
  ++sta.a [ c<<=0 ];
  ++sta.a [ c>>=0 ];
  ++sta.a [ c&=c ];
  ++sta.a [ c^=0 ];
  ++sta.a [ c|=0 ] ;    
  ++sta.a [ st.x ] ;
  ++sta.a [ stp->x ]; sta.a[0]=1;
  ++sta.a [ sta.a[0] ];
  ++sta.a [ c,c ] ;
  ++sta.a [ (char)c ] ; 
  return sta.a[1] ;
}
int 
func05 (void) { return 1 ;}
int 
func6 (void)
{
  struct {
    int a[5];
  } sta,*stap   ;
  int b=0; int c=1; char d=2; int e=3; int *p;
  struct { int x;} st,*stp;
  st.x=1;
  stp=&st;
  p=&c;
  stap=&sta;
  stap->a[0]=1 ;
  stap->a[c]=1 ;
  ++stap->a [ 1 ] ;
  ++stap->a [ c/1 ] ;
  ++stap->a [ c*1 ] ;
  ++stap->a [ 3%d ] ;
  ++stap->a [ c+b ] ;
  ++stap->a [ c-b ] ;
  ++stap->a [ c&c ] ;
  ++stap->a [ c|c ] ;
  ++stap->a [ c^0 ] ; 
  ++stap->a [ c&&c ] ;
  ++stap->a [ c||c ] ;
  ++stap->a [ c<<0 ] ;
  ++stap->a [ c>>0 ] ;
  ++stap->a [ c==1 ] ;
  ++stap->a [ c!=0 ] ;
  ++stap->a [ c<5 ] ;
  ++stap->a [ c>0 ] ;
  ++stap->a [ c<=2 ] ;
  ++stap->a [ c>=0 ] ; 
  ++stap->a [ ++b ] ; --b;
  ++stap->a [ --d ] ;
  
  ++stap->a [ *p ] ;
  ++stap->a [ +c ] ;
  ++stap->a [ -(-c) ];
    stap->a[~b ];     
  ++stap->a [ !b ] ;
  ++stap->a [ c?c:d ];
  ++stap->a [ sizeof(char) ];
  ++stap->a [ func06() ];
  ++stap->a [ c=c ] ;   
  ++stap->a [ c*=1 ] ;
  ++stap->a [ c/=c ] ;
  ++stap->a [ e%=2 ] ;
  ++stap->a [ c+=b ] ;
  ++stap->a [ c-=b ] ;
  ++stap->a [ c<<=0 ];
  ++stap->a [ c>>=0 ];
  ++stap->a [ c&=c ];
  ++stap->a [ c^=0 ];
  ++stap->a [ c|=0 ] ;  
  ++stap->a [ st.x ] ;
  ++stap->a [ stp->x ]; stap->a[0]=1;
  ++stap->a [ stap->a[0] ];
  ++stap->a [ c,c ] ;
  ++stap->a [ (char)c ] ; 
  return stap->a[1] ;
}
int 
func06 (void) { return 1 ;}
int 
func7 (void)
{
  int a[1][5]; int b=0; int c=1; char d=2; int e=3; int *p;
  struct { int x;} st,*stp;
  st.x=1;
  stp=&st;
  p=&c;
  a[0][0]=1 ;
  a[0][c]=1 ;
  ++a[0] [ 1 ] ;
  ++a[0] [ c/1 ] ;
  ++a[0] [ c*1 ] ;
  ++a[0] [ 3%d ] ;
  ++a[0] [ c+b ] ;
  ++a[0] [ c-b ] ;
  ++a[0] [ c&c ] ;
  ++a[0] [ c|c ] ;
  ++a[0] [ c^0 ] ;   
  ++a[0] [ c&&c ] ;
  ++a[0] [ c||c ] ;
  ++a[0] [ c<<0 ] ;
  ++a[0] [ c>>0 ] ;
  ++a[0] [ c==1 ] ;
  ++a[0] [ c!=0 ] ;
  ++a[0] [ c<5 ] ;
  ++a[0] [ c>0 ] ;
  ++a[0] [ c<=2 ] ;
  ++a[0] [ c>=0 ] ;   
  ++a[0] [ ++b ] ; --b;
  ++a[0] [ --d ] ;
                 
  ++a[0] [ *p ] ;
  ++a[0] [ +c ] ;
  ++a[0] [ -(-c) ];
    a[0][~b ];
  ++a[0] [ !b ] ;
  ++a[0] [ c?c:d ];
  ++a[0] [ sizeof(char) ];
  ++a[0] [ func07() ];
  ++a[0] [ c=c ] ;    
  ++a[0] [ c*=1 ] ;
  ++a[0] [ c/=c ] ;
  ++a[0] [ e%=2 ] ;
  ++a[0] [ c+=b ] ;
  ++a[0] [ c-=b ] ;
  ++a[0] [ c<<=0 ];
  ++a[0] [ c>>=0 ];
  ++a[0] [ c&=c ];
  ++a[0] [ c^=0 ];
  ++a[0] [ c|=0 ] ;   
  ++a[0] [ st.x ] ;
  ++a[0] [ stp->x ]; a[0][0]=1;
  ++a[0] [ a[0][0] ];
  ++a[0] [ c,c ] ;
  ++a[0] [ (char)c ] ; 
  return a[0][1] ;
}
int 
func07 (void) { return 1 ;}
int 
func8 (void)
{
  int a[5]; int b=0; int c=1; char d=2; int e=3; int *p;
  int dum=1;
  struct { int x;} st,*stp;
  st.x=1;
  stp=&st;
  p=&c;
  a[0]=1    ;
  (dum,a)[c]=1    ;
  ++(dum,a) [ 1 ]    ;
  ++(dum,a) [ c/1 ]  ;
  ++(dum,a) [ c*1 ]  ;
  ++(dum,a) [ 3%d ]  ;
  ++(dum,a) [ c+b ]  ;
  ++(dum,a) [ c-b ]  ;
  ++(dum,a) [ c&c ]  ;
  ++(dum,a) [ c|c ]  ;
  ++(dum,a) [c^0 ]  ;       
  ++(dum,a) [c&&c ] ;
  ++(dum,a) [ c||c ] ;
  ++(dum,a) [ c<<0 ] ;
  ++(dum,a) [ c>>0 ] ;
  ++(dum,a) [ c==1 ] ;
  ++(dum,a) [ c!=0 ] ;
  ++(dum,a) [ c<5 ]  ;
  ++(dum,a) [ c>0 ]  ;
  ++(dum,a) [ c<=2 ] ;
  ++(dum,a) [ c>=0 ] ;        
  ++(dum,a) [ ++b ]  ; --b;
  ++(dum,a) [ --d ]  ;
  
  ++(dum,a) [ *p ]   ;
  ++(dum,a) [ +c ]   ;
  ++(dum,a) [ -(-c) ];
    (dum,a) [~b ];
  ++(dum,a) [ !b ]   ;
  ++(dum,a) [ c?c:d ];
  ++(dum,a) [ sizeof(char) ];
  ++(dum,a) [ func08() ];
  ++(dum,a) [ c=c ] ;   
  ++(dum,a) [ c*=1 ] ;
  ++(dum,a) [ c/=c ] ;
  ++(dum,a) [ e%=2 ] ;
  ++(dum,a) [ c+=b ] ;
  ++(dum,a) [ c-=b ] ;
  ++(dum,a) [ c<<=0 ];
  ++(dum,a) [ c>>=0 ];
  ++(dum,a) [ c&=c ];
  ++(dum,a) [ c^=0 ];
  ++(dum,a) [ c|=0 ] ;  
  ++(dum,a) [ st.x ] ;
  ++(dum,a) [ stp->x ]; a[0]=1;
  ++(dum,a) [ a[0] ];
  ++(dum,a) [ c,c ] ;
  ++(dum,a) [ (char)c ] ; 
  return a[1] ;
}
int 
func08 (void) { return 1 ;}
