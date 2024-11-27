#include <math.h>
#include  <stdio.h>
#include  <stdlib.h>

struct g {
            char        u1;
            float       r4[100];
            char        u2;
            double      r8[100];
            char        u3;
            long double r16[100];
           };
struct h {
            char        u1;
            long double r16;
            char        u2;
            double      r8;
            char        u3;
            float       r4;
           };
int      i;
  struct g *ea100,*eb100;
  struct h *ea10,*eb10;
int main( ) {
  void result_chk( );
  struct g *ia100,*ib100;
  struct h *ia10,*ib10;
          ia100=(struct g *)malloc(sizeof(struct g));            
          ib100=(struct g *)malloc(sizeof(struct g));
          ea100=(struct g *)malloc(sizeof(struct g));            
          eb100=(struct g *)malloc(sizeof(struct g));
          for (i=0; i<100; i++) {
                                ib100->r4[i] =1.0e+6; 
                                ib100->r8[i] =1.0e+15; 
                                ib100->r16[i]=1.0e+31;
          } 
        ia10=(struct h *)malloc(sizeof(struct h));            
          ib10=(struct h *)malloc(sizeof(struct h));
          ea10=(struct h *)malloc(sizeof(struct h));            
          eb10=(struct h *)malloc(sizeof(struct h));
                                ib10->r4 =1.0e+6; 
                                ib10->r8 =1.0e+15; 
                                ib10->r16=1.0e+31;
  *ia100=*ib100;
         result_chk(ia100->r4[i-1],ia100->r8[i-1],ia100->r16[i-1],1);
  *ea100=*ia100;
         result_chk(ea100->r4[i-1],ea100->r8[i-1],ea100->r16[i-1],2);
  *eb100=*ea100;
         result_chk(eb100->r4[i-1],eb100->r8[i-1],eb100->r16[i-1],3);
  *ia100=*eb100;
         result_chk(ia100->r4[i-1],ia100->r8[i-1],ia100->r16[i-1],4);
  *ia10=*ib10;
         result_chk(ia10->r4,ia10->r8,ia10->r16,5);
  *ea10=*ia10;
         result_chk(ea10->r4,ea10->r8,ea10->r16,6);
  *eb10=*ea10;
         result_chk(eb10->r4,eb10->r8,eb10->r16,7);
  *ia10=*eb10;
         result_chk(ia10->r4,ia10->r8,ia10->r16,8);

  free(ia100);
  free(ib100);
  free(ea100);
  free(eb100);
  free(ia10);
  free(ib10);
  free(ea10);
  free(eb10);

exit (0);
}
void result_chk(r4,r8,r16,i4)
            float       r4;
            double      r8;
            long double r16;
            int         i4;{

  if (r4 ==1.0e+6
  &&  r8 ==1.0e+15
  &&  r16==1.0e+31) 
    printf("**(%d)** OK r4=%e r8=%e\n",i4,r4,r8);
  else 
    printf("**(%d)** NG r4=%e r8=%e\n",i4,r4,r8);
}

