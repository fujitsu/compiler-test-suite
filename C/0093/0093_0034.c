#include <stdio.h>
#include <stdlib.h>

  struct gl {
            long long int ccc;
            char a[61];
           } *gal,*gbl;
  struct g {
            int  c;
            char a[61];
           } *ga,*gb;
int main( ) {
  struct tl {
            long long int ccc;
            char a[61];
           } *tal,*tbl;
  struct vl {
            long long int ccc;
            char a[10];
           } *val,*vbl;
  union  ul {
            long long int ccc;
            char a[65];
           } *ual,*ubl;
  union  wl {
            long long int ccc;
            char a[10];
           } *wal,*wbl;
#if hal
  struct gl *hal1,*hbl;
#else
  struct gl *hal,*hbl;
#endif
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
             if(ta->c) printf("**(1)** OK\n");
             else      printf("**(1)** NG\n");
                                                         
             va=(struct v *)malloc(sizeof(struct v));            
             vb=(struct v *)malloc(sizeof(struct v));
             vb->c=1;
  *va=*vb;
             if(va->c) printf("**(2)** OK\n");
             else      printf("**(2)** NG\n");
                                                         
             ua=(union u *)malloc(sizeof(union u));            
             ub=(union u *)malloc(sizeof(union u));
             ub->c=1;
  *ua=*ub;
             if(ua->c) printf("**(3)** OK\n");
             else      printf("**(3)** NG\n");
                                                         
             wa=(union w *)malloc(sizeof(union w));            
             wb=(union w *)malloc(sizeof(union w));
             wb->c=1;
  *wa=*wb;
             if(wa->c) printf("**(4)** OK\n");
             else      printf("**(4)** NG\n");
                                                         
             sb.xa.d='a';
  sa.xa=sb.xa;
             if(sa.xa.d=='a')  printf("**(5)** OK\n");
             else              printf("**(5)** NG %c\n",sa.xa.d);
                                                         
             pb.xa.d='a';
  pa.xa=pb.xa;
             if(pa.xa.d=='a')  printf("**(6)** OK\n");
             else              printf("**(6)** NG %c\n",pa.xa.d);
                                                         
             qb.xa.d='b';
  qa.xa=qb.xa;
             if(qa.xa.d=='b')  printf("**(7)** OK\n");
             else              printf("**(7)** NG %c\n",qa.xa.d);
                                                         
             rb.xa.d='b';
  ra.xa=rb.xa;
             if(ra.xa.d=='b')  printf("**(8)** OK\n");
             else              printf("**(8)** NG %c\n",ra.xa.d);
                                                         
             ga=(struct g *)malloc(sizeof(struct g));            
             gb=(struct g *)malloc(sizeof(struct g));
             gb->c=1;
  *ga=*gb;
             if(ga->c) printf("**(9)** OK\n");
             else      printf("**(9)** NG %d\n",ga->c);
             ha=(struct g *)malloc(sizeof(struct g));            
             hb=(struct g *)malloc(sizeof(struct g));
             gb->c=2;
  *ha=*gb;
             if(ha->c==2) printf("**(10)** OK\n");
             else         printf("**(10)** NG %d\n",ha->c);
             hb->c=3;
  *ga=*hb;
             if(ga->c==3) printf("**(11)** OK\n");
             else         printf("**(11)** NG %d\n",ga->c);

                                                         
             tal=(struct tl *)malloc(sizeof(struct tl));            
             tbl=(struct tl *)malloc(sizeof(struct tl));
             tbl->ccc=1;
  *tal=*tbl;
             if(tal->ccc) printf("**(1)** OK\n");
             else      printf("**(1)** NG\n");
                                                         
             val=(struct vl *)malloc(sizeof(struct vl));            
             vbl=(struct vl *)malloc(sizeof(struct vl));
             vbl->ccc=1;
  *val=*vbl;
             if(val->ccc) printf("**(2)** OK\n");
             else      printf("**(2)** NG\n");
                                                         
             ual=(union ul *)malloc(sizeof(union ul));            
             ubl=(union ul *)malloc(sizeof(union ul));
             ubl->ccc=1;
  *ual=*ubl;
             if(ual->ccc) printf("**(3)** OK\n");
             else      printf("**(3)** NG\n");
                                                         
             wal=(union wl *)malloc(sizeof(union wl));            
             wbl=(union wl *)malloc(sizeof(union wl));
             wbl->ccc=1;
  *wal=*wbl;
             if(wal->ccc) printf("**(4)** OK\n");
             else      printf("**(4)** NG\n");
                                                         
                                                         
             gal=(struct gl *)malloc(sizeof(struct gl));            
             gbl=(struct gl *)malloc(sizeof(struct gl));
             gbl->ccc=1;
  *gal=*gbl;
             if(gal->ccc) printf("**(5)** OK\n");
             else      printf("**(5)** NG %d\n",gal->ccc);
#if hal
             hal1=(struct gl *)malloc(sizeof(struct gl));            
#else
             hal=(struct gl *)malloc(sizeof(struct gl));            
#endif
             hbl=(struct gl *)malloc(sizeof(struct gl));
             gbl->ccc=2;
#if hal
  *hal1=*gbl;
             if(hal1->ccc==2) printf("**(6)** OK\n");
             else         printf("**(6)** NG %d\n",hal1->ccc);
             hbl->ccc=3;
#else
  *hal=*gbl;
             if(hal->ccc==2) printf("**(6)** OK\n");
             else         printf("**(6)** NG %d\n",hal->ccc);
             hbl->ccc=3;
#endif
  *gal=*hbl;
             if(gal->ccc==3) printf("**(7)** OK\n");
             else         printf("**(7)** NG %d\n",gal->ccc);

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
             free(tal);
             free(tbl);
             free(val);
             free(vbl);
             free(ual);
             free(ubl);
             free(wal);
             free(wbl);
             free(gal);
             free(gbl);
#if hal
             free(hal1);
#else
             free(hal);
#endif
             free(hbl);

}
