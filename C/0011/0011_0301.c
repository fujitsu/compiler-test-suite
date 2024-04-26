#include <stdlib.h>
#include  <stdio.h>
int sub2();
int sub1();
      struct tagin {
        int c;
        int d;
      };

      struct tag {
        int a;
        int b;
        struct tagin in;
        int e;
      };

#ifdef v10
void sub0(st)
struct tag *st;
{
      static int data[] = { 0,1,2,3,4,5,6,7,8,9 };
      static int i;
      if( data[i++] != (*st).a ) {
        puts(" NG ");
        exit(1);
      }
}
#else
void sub0(struct tag st)
{
      static int data[] = { 0,1,2,3,4,5,6,7,8,9 };
      static int i;
      if( data[i++] != st.a ) {
        puts(" NG ");
        exit(1);
      }
}
#endif
int main()
{
      struct tag st1;
      struct tag st2;
      struct tagin stin;
      struct tagin stot;
      int i,sum=0;

      for(st1.a=0;st1.a<10;st1.a++) {
        sum = sum + st1.a;
#ifdef v10
        sub0( &st1 );
#else
        sub0( st1 );
#endif
      }
      for(st1.b=0;st1.b<10;st1.b++) {
        sum = sum + st1.b;
      }
      for(st1.in.c=0;st1.in.c<10;st1.in.c++) {
        sum = sum + st1.in.c;
      }
      for(st1.a=0;st1.a<10;st1.a++) {
        sum = sum + st1.a;
        st2 = st1;
      }
      for(st1.in.c=0;st1.in.c<10;st1.in.c++) {
        sum = sum + st1.in.c;
        stin = st1.in;
      }
      sub1();
      puts(" OK ");
}

int sub1()
{
    struct tag {
      int a;
      int b;
      int c;
    } r,s;
    int i;
    int sum=0;
    r.a=1;
    r.b=1;
    r.c=1;
    for(r.a=0;r.a<10;r.a++) {
      for(i=0;i<10;i++) {
        s=r;
        sum=sum+s.a;
      }
    }
    if( r.a  !=  10  ||
        s.a  !=  9   ||
        sum != 450      ) {
       puts(" NG ");
       exit(1);
    }
    sub2();
    return 0;
 }
int sub2()
{
    struct tag1 { int a;int b;int c; };
    struct tag2 { short int d; short int e; };
    union  tag3 {
      int f;
      int g;
      struct tag2 i;
      int h;
    };
    struct tag4 {
      int j;
      int k;
      int l;
      struct tag1 m;
      union  tag3 n;
    } r,s;
    int i;
    int sum=0;
    r.n.i.e=1;
    for(r.n.i.d=0;r.n.i.d<10;r.n.i.d++) {
      for(i=0;i<10;i++) {
        s=r;
        sum=sum+s.n.i.e;
      }
    }
    if( s.n.i.e != 1 ||
        r.n.i.e != 1 ||
        sum != 100      ) {
       puts(" NG ");
       exit(1);
    }
    return 0;
 }
