#include  <stdio.h>

#include <string.h>
int main()
{
     int      ary1[5][5][5];
     int      ary2[5][5][5];
     int      d1,ngf,d01,rcd,i,j,k;
#ifdef __STDC__
     int      funca(int i,int j,int k);
     int      edit(char[],int);
     int      stfunc(int,int);
     int      funcst(int d01,int d1);
#else
     int      funca();
     int      edit();
     int      stfunc();
     int      funcst();
#endif
     char     str[3];
     static char   msg[11] = "*** OK ***";

     printf("***  start ***\n");

     ngf = 0;
     for(i=0 ; i<5 ; i++){
        for(j=0 ; j<5 ; j++){
           for(k=0 ; k<5 ; k++){
              ary1[i][j][k] = i+j+k;
              ary2[i][j][k] = j;
           }
        }
     }

     for(i=0 ; i<5 ; i++){
        for(j=0 ; j<5 ; j++){
           for(k=0 ; k<5 ; k++){
              d1=funca(i,j,k);
              d01 = ary1[i][j][k] * 3;
              edit(str,funcst(d01,d1));
              if( strncmp(str,"ng",3) == 0 ) {
                 strncpy(msg+4,str,2);
                 printf("*** ary1[%d][%d][%d] = %d  %s \n",
                                    i,j,k,ary1[i][j][k],msg);
                 ngf = 1;
                 goto l99;
              }
           }
           for(k=0;k<5;k++){
              rcd = 0;
              if(stfunc(ary2[i][j][k],rcd) == j){
                 edit(str,0);
              } else {
                 printf("  rcd = %d \n",rcd);
                 edit(str,1);
                 strncpy(msg+4,str,2);
                 printf("*** ary2[%d][%d][%d] = %d  %s \n",
                                    i,j,k,ary2[i][j][k],msg);
                 ngf = 1;
                 goto l99;
              }
           }
        }
     }
     if(ngf == 0){
        edit(msg+4,ngf);
     }
l99:
     printf("***  %2s end ***\n",msg+4);
}

int funca(pr1,pr2,pr3)
   int   pr1,pr2,pr3;
{
   int rtn;
#ifdef __STDC__
     int ssfunc(int pr1,int pr2,int pr3);
#else
     int ssfunc();
#endif
     rtn = ssfunc(pr1,pr2,pr3);
     return(rtn);
}

int funcss(i)
   int i;
{
   return(i*3);
}

int ssfunc(p1,p2,p3)
   int p1,p2,p3;
{
   return(funcss(p1)+funcss(p2)+funcss(p3));
}

int edit(s,i)
   char  *s;
   int   i;
{
     if(i==0)
        strcpy(s,"OK");
     else
        strcpy(s,"ng");
     return(1);
}

int funcb(a,s)
   int *a,s;
{
   int i;

     for(i=0;i<s;i++)
       *(a+i)=i;
     return(0);
}

int fun(arg1,arg2)
  int arg1,arg2;
{
     int ary[5],i;
     funcb(ary,5);
     for(i=0;i<5;i++){
        if(ary[i] == arg1)
           return(i);
     }
     return(-1);
}

int funcst(i,j)
  int i,j;
{
     return(i-j);
}

int stfunc(i,j)
   int i,j;
{
   int w;
     w=fun(i,j)+j;
     return(w);
}
