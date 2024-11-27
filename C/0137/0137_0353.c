#include <math.h>
#include <stdio.h>
#include <stdlib.h>
  struct g {
            int  c;
            char a[61];
           } *ga,*gb;
int main( ) {
  struct t {
            int  c;
            char a[61];
           } *ta,*tb;
  struct v {
            int  c;
            char a[10];
           } *va,*vb;
  union  u {
            int  c;
            char a[65];
           } *ua,*ub;
  union  w {
            int  c;
            char a[10];
           } *wa,*wb;
  struct s {
            struct   {
                       char d;
                       char a[16];
                     } xa;
           } sa,sb;
  struct p {
            struct   {
                       char d;
                       char a[15];
                     } xa;
           } pa,pb;
  struct q {
            union   {
                       char d;
                       char a[17];
                     } xa;
           } qa,qb;
  struct r {
            union   {
                       char d;
                       char a[16];
                     } xa;
           } ra,rb;
  struct g *ha,*hb;
                                                         
             ta=(struct t *)malloc(sizeof(struct t));            
             tb=(struct t *)malloc(sizeof(struct t));
             tb->c=1;
  *ta=*tb;
             if(ta->c) printf("**dpmk2011-(1)** OK\n");
             else      printf("**dpmk2011-(1)** NG\n");
                                                         
             va=(struct v *)malloc(sizeof(struct v));            
             vb=(struct v *)malloc(sizeof(struct v));
             vb->c=1;
  *va=*vb;
             if(va->c) printf("**dpmk2011-(2)** OK\n");
             else      printf("**dpmk2011-(2)** NG\n");
                                                         
             ua=(union u *)malloc(sizeof(union u));            
             ub=(union u *)malloc(sizeof(union u));
             ub->c=1;
  *ua=*ub;
             if(ua->c) printf("**dpmk2011-(3)** OK\n");
             else      printf("**dpmk2011-(3)** NG\n");
                                                         
             wa=(union w *)malloc(sizeof(union w));            
             wb=(union w *)malloc(sizeof(union w));
             wb->c=1;
  *wa=*wb;
             if(wa->c) printf("**dpmk2011-(4)** OK\n");
             else      printf("**dpmk2011-(4)** NG\n");
                                                         
             sb.xa.d='a';
  sa.xa=sb.xa;
             if(sa.xa.d=='a')  printf("**dpmk2011-(5)** OK\n");
             else              printf("**dpmk2011-(5)** NG %c\n",sa.xa.d);
                                                         
             pb.xa.d='a';
  pa.xa=pb.xa;
             if(pa.xa.d=='a')  printf("**dpmk2011-(6)** OK\n");
             else              printf("**dpmk2011-(6)** NG %c\n",pa.xa.d);
                                                         
             qb.xa.d='b';
  qa.xa=qb.xa;
             if(qa.xa.d=='b')  printf("**dpmk2011-(7)** OK\n");
             else              printf("**dpmk2011-(7)** NG %c\n",qa.xa.d);
                                                         
             rb.xa.d='b';
  ra.xa=rb.xa;
             if(ra.xa.d=='b')  printf("**dpmk2011-(8)** OK\n");
             else              printf("**dpmk2011-(8)** NG %c\n",ra.xa.d);
                                                         
             ga=(struct g *)malloc(sizeof(struct g));            
             gb=(struct g *)malloc(sizeof(struct g));
             gb->c=1;
  *ga=*gb;
             if(ga->c) printf("**dpmk2011-(9)** OK\n");
             else      printf("**dpmk2011-(9)** NG %d\n",ga->c);
             ha=(struct g *)malloc(sizeof(struct g));            
             hb=(struct g *)malloc(sizeof(struct g));
             gb->c=2;
  *ha=*gb;
             if(ha->c==2) printf("**dpmk2011-(10)** OK\n");
             else         printf("**dpmk2011-(10)** NG %d\n",ha->c);
             hb->c=3;
  *ga=*hb;
             if(ga->c==3) printf("**dpmk2011-(11)** OK\n");
             else         printf("**dpmk2011-(11)** NG %d\n",ga->c);
free(ta);
free(tb);
free(va);
free(vb);
free(ua);
free(ub);
free(wa);
free(wb);
free(ga);
free(gb);
free(ha);
free(hb);

exit (0);
}
