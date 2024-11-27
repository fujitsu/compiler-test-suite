#include  <stdio.h>

#include <string.h>
#include <memory.h>

#if INT64
#define int __int32
#endif

 static int data[20]={18,17,20,9,4,6,1,8,11,7,5,14,19,2,12,3,10,
                           13,15,16};
 int  w_da[20];
 struct st1 {
     int *da_p;
     int *wdap;
     int  n;
 };
#ifdef __STDC__
 int l_s(struct st1),s_l(struct st1),ave(int * , int);
 int ck(struct st1 *,char,int);
 int errck(int,char),erjl(int *),erjs(int *),erjv(int);
#else
 int l_s(),s_l(),ave();
 int ck();
 int errck(),erjl(),erjs(),erjv();
#endif
int main()
 {
   struct st1 st;
   int      i,rst[3];
   char *rt;
   static char *sok="OK",
               *sng="ng";

      printf("***  start ***\n");
      rt=sok;
      st.n=20;
      st.da_p=data;
      st.wdap=w_da;
      memcpy((char *)w_da,(char *)data,80);
      rst[0]=l_s(st);
      memcpy((char *)w_da,(char *)data,80);
      rst[1]=s_l(st);
      memcpy((char *)w_da,(char *)data,80);
      rst[2]=ave(st.wdap,st.n);
      for(i=0;i<3;i++){
         if(rst[i]!=0){
            printf("*** ng     %d \n",i);
            rt=sng;
         }else{
            printf("*** OK  %d \n",i);
         }
      }
      printf("***  %s *** \n",rt);
}
#ifdef __STDC__
int l_s(struct st1 st)
#else
int l_s(st)
struct st1 st;
#endif
{
     int i,j,*da_p,w,nn ;
     da_p=st.wdap;
     nn=st.n;
     for(i=0;i<st.n;i++){
          for(j=0;j<nn-1;j++){
               if(*da_p < *(da_p+1)){
                    w = *da_p;
                    *da_p = *(da_p+1);
                    *(da_p+1) = w;
               }
               da_p+=1;
          }
          nn-=1;
          da_p=st.wdap;
    }
    return(ck(&st,'l',0));
}
#ifdef __STDC__
int s_l(struct st1 st)
#else
int s_l(st)
struct st1 st;
#endif
{
     int i,j,*da_p,w,nn ;
     da_p=st.wdap;
     nn=st.n;
     for(i=0;i<st.n;i++){
          for(j=0;j<nn-1;j++){
               if(*da_p > *(da_p+1)){
                    w = *da_p;
                    *da_p = *(da_p+1);
                    *(da_p+1) = w;
               }
               da_p+=1;
          }
          nn-=1;
          da_p=st.wdap;
    }
    return(ck(&st,'s',0));
}
#ifdef __STDC__
int ave(int *da,int n)
#else
int ave(da,n)
int *da,n;
#endif
{
     int s,av,i;
     s=0;
     for(i=0;i<n;i++)
          s=*(da+i)+s;
     av=s*10/n;
     return(ck(0,'a',av));
}
#ifdef __STDC__
int ck(struct st1 *st,char str,int var)
#else
int ck(st,str,var)
struct st1 *st;char str;int var;
#endif
{
     switch(str){
        case 'l':
          return(errck(erjl(st->wdap),str));
        case 's':
          return(errck(erjs(st->wdap),str));
        case 'a':
          return(errck(erjv(var),str));
        default:
          return(-1);
    }
}
#ifdef __STDC__
int errck(int jg,char ss)
#else
int errck(jg,ss)
int jg;char ss;
#endif
{
   switch(jg){
     case 0:
       printf("*** OK *** %c ***\n",ss);
       return(0);
     case 1:
       printf("*** ng *** %c ***\n",ss);
       return(1);
     default:
       return(-1);
  }
}
#ifdef __STDC__
int erjs(int *p)
#else
int erjs(p)
int *p;
#endif
{
   int i,j;
   for(i=0;i<20;i++){
      if(*(p+i)==i+1) continue;
      else{
        printf(" '' ERJS ''\n");
        for(j=0;j<20;j++)
          printf("   %d = %d,",j,*(p+j));
        printf("\n");
        return(1);
      }
   }
   return(0);
}
#ifdef __STDC__
int erjl(int *p)
#else
int erjl(p)
int *p;
#endif
{
   int i,j,k;
   for(i=19,j=1;i>=0;i--,j++){
      if(*(p+i)==j) continue;
      else{
        printf(" '' IN ERJL ''\n");
        for(k=0;k<20;k++)
          printf("   %d = %d,",k,*(p+k));
        printf("\n");
        return(1);
      }
   }
   return(0);
}
#ifdef __STDC__
int erjv(int a)
#else
int erjv(a)
int a;
#endif
{
   if(a==105) return(0);
   printf(" '' IN ERJV ''\n");
   printf("    AVE.=%d \n",a);
   return(1);
}
