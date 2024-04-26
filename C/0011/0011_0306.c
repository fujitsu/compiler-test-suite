#include  <stdio.h>
int sub6();
int sub5();
int sub4();
int sub3();
int sub2();
int sub1();

int main()
{
      if( 600 ==      sub1()+
                      sub2()+
                      sub3()+
                      sub4()+
                      sub5()+sub6()  ) puts(" OK ");
      else puts(" NG ");
}

int sub1()
{
      int i,j,k;
      for(k=0,i=0;i<10;i++) {
        for(j=0;j<10;j++) {
          k=k+1;
        }
      }
      return k;
}
int sub2()
{
      int i,j,k;
      k=0;i=0;
      while(j=0,i<10) {
        while(j<10) {
          k=k+1;
          j=j+1;
        }
        i=i+1;
      }
      return k;
}
int sub3()
{
      int i,j,k;
      k=0;
      i=0;
      do {
        j=0;
        do {
          k=k+1;
        } while( j++,j<10 );
      } while( i++,i<10);
      return k;
}
int sub4()
{
      int i,j,k;
      k=0;
      i=0;
 l10:
        j=0;
 l20:
          k=k+1;
        if( ++j < 10 ) goto l20;
      if( ++i < 10 ) goto l10;
      return k;
}
int sub5()
{
      int i,j,k;
      for(k=0,i=0;;) {
        for(j=0;;) {
          k=k+1;
          if( !(++j<10) ) break;
        }
        if( !(++i<10) ) break;
      }
      return k;
}
int sub6()
{
      int i,j,k;
      for(k=0,i=0;;) {
        for(j=0;;) {
          k=k+1;
          if( (++j<10) ) continue;
          break;
        }
        if( (++i<10) ) continue;
        break;
      }
      return k;
}
