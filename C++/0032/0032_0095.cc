#include <stdio.h>
int main( ) {
  struct s {
    int mem;
            struct   {
                       char d;
                       char a[16];
		       struct   {
			 char d;
			 char a[16];
		       } xxa;
                     } xa;
           } sa,sb,aa[3],ab[3],sx;


  sb.mem = 10;
  sb.xa.d='a';
  sb.xa.xxa.d='b';
  ab[2].xa.d='c';

  sa.mem = sb.mem;
  sa.xa=sb.xa;
  sa.xa.xxa=sb.xa.xxa;
  aa[2].xa=ab[2].xa;

  sx = sa;

  if(sa.xa.d=='a' && sa.xa.xxa.d=='b' && aa[2].xa.d=='c' &&
     sb.xa.d=='a' && sb.xa.xxa.d=='b' && ab[2].xa.d=='c' &&
     sx.xa.d=='a' && sx.xa.xxa.d=='b')
    printf("ok\n");
  else
    printf("ng\n");

}
