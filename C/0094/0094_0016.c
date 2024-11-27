#include  <stdio.h>
int main(){
  struct t {
             signed char      b01:6;
           unsigned char      b02:5;
             signed short int b03:4;
           unsigned short int b04:3;
             signed int       b05:2;
           unsigned int       b06:2;
  } ;
  struct t  x ;
  struct t *y ;
  struct t  z[10] ;
  struct v {
    struct t u[10];
  } ;
  struct v  w;
  struct v *p;
  int      i;
  x.b05=x.b01=x.b02=x.b03=x.b04=x.b06=2; 
             if (x.b01==2) printf("**\n",x.b01);
             else          printf("**\n",x.b01);
             if (x.b02==2) printf("**\n",x.b02);
             else          printf("**\n",x.b02);
             if (x.b03==2) printf("**\n",x.b03);
             else          printf("**\n",x.b03);
             if (x.b04==2) printf("**\n",x.b04);
             else          printf("**\n",x.b04);
             if (x.b05==-2) printf("**\n",x.b05);
             else          printf("**\n",x.b05);
             if (x.b06==2) printf("**\n",x.b06);
             else          printf("**\n",x.b06);
             y=&x;
  y->b05=y->b01=y->b02=y->b03=y->b04=y->b06=2;
             if (y->b01==2) printf("**\n",y->b01);
             else           printf("**\n",y->b01);
             if (y->b02==2) printf("**\n",y->b02);
             else           printf("**\n",y->b02);
             if (y->b03==2) printf("**\n",y->b03);
             else           printf("**\n",y->b03);
             if (y->b04==2) printf("**\n",y->b04);
             else           printf("**\n",y->b04);
             if (y->b05==-2) printf("**\n",y->b05);
             else           printf("**\n",y->b05);
             if (y->b06==2) printf("**\n",y->b06);
             else           printf("**\n",y->b06);
  for (i=0;i<10;i++)  z[i].b05    
                     =z[i].b01    
                     =z[i].b02    
                     =z[i].b03    
                     =z[i].b04    
                     =z[i].b06
                     =2;    
             if (z[i-1].b01==2) printf("**\n",z[i-1].b01);
             else               printf("**\n",z[i-1].b01);
             if (z[i-1].b02==2) printf("**\n",z[i-1].b02);
             else               printf("**\n",z[i-1].b02);
             if (z[i-1].b03==2) printf("**\n",z[i-1].b03);
             else               printf("**\n",z[i-1].b03);
             if (z[i-1].b04==2) printf("**\n",z[i-1].b04);
             else               printf("**\n",z[i-1].b04);
             if (z[i-1].b05==-2) printf("**\n",z[i-1].b05);
             else               printf("**\n",z[i-1].b05);
             if (z[i-1].b06==2) printf("**\n",z[i-1].b06);
             else               printf("**\n",z[i-1].b06);
             p=&w;
  for (i=0;i<10;i++)  p->u[i].b05    
                     =p->u[i].b01    
                     =p->u[i].b02    
                     =p->u[i].b03    
                     =p->u[i].b04    
                     =p->u[i].b06
                     =2;    
             if (p->u[i-1].b01==2) printf("**\n",p->u[i-1].b01);
             else                  printf("**\n",p->u[i-1].b01);
             if (p->u[i-1].b02==2) printf("**\n",p->u[i-1].b02);
             else                  printf("**\n",p->u[i-1].b02);
             if (p->u[i-1].b03==2) printf("**\n",p->u[i-1].b03);
             else                  printf("**\n",p->u[i-1].b03);
             if (p->u[i-1].b04==2) printf("**\n",p->u[i-1].b04);
             else                  printf("**\n",p->u[i-1].b04);
             if (p->u[i-1].b05==-2) printf("**\n",p->u[i-1].b05);
             else                  printf("**\n",p->u[i-1].b05);
             if (p->u[i-1].b06==2) printf("**\n",p->u[i-1].b06);
             else                  printf("**\n",p->u[i-1].b06);
}
