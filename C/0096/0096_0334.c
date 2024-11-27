#include  <stdio.h>
 
 
 
 #if INT64
 #define int __int32
 #endif

 int   outi1,outi2;
 float outf1,outf2;
int main()
 {
   int *pi,*qi;
   int ai,bi,ci,di,ei,fi,gi;
   int i;
   float *pf,*qf;
   float af,bf,cf,df,ef,ff;

   struct array {
     int aa[10];
     int bb[10];
   };
   struct array  xs;
   struct array *ps;

   union alis {
     int xi;
     float xf;
     int cc[10];
     struct array as;
   };
   union alis  xu,yu;
   union alis *pu;

   ai=10;
   bi=20;
   ci=30;
   di=40;
   ei=50;
   fi=60;

   pu=&xu;
   for(i=0;i<10;i++) {
     pu->as.aa[i]=(i+1)*10;
     pu->as.bb[i]=(i+1)*10;
   }

   
   fi=pu->as.aa[0];
   xu.xi=200;
   ei=pu->as.aa[0];
   ai=xu.xi+bi;
   if(ei==fi)
   {
     printf("error of b-1-1 at first : ei = %d\n",ei);
   }
   else
   {
     if(ei!=200)
     {
       printf("error of b-1-1 at second : ei = %d\n",ei);
     }
     else
     {
       printf("ok of b-1-1\n");
     }
   }
   ai=10;
   pu->as.aa[0]=10;

   
   fi=pu->as.aa[0];
   pu->xi=200;
   ei=pu->as.aa[0];
   ai=xu.xi+bi;
   if(ei==fi)
   {
     printf("error of b-1-2 at first : ei = %d\n",ei);
   }
   else
   {
     if(ei!=200)
     {
       printf("error of b-1-2 at second : ei = %d\n",ei);
     }
     else
     {
       printf("ok of b-1-2\n");
     }
   }
   pu->as.aa[0]=10;

   
   fi=pu->as.aa[0];
   pu->xf=200.0;
   ei=pu->as.aa[0];
   if(ei==fi)
   {
     ai=pu->xf+bi;
     printf("error of b-1-3 at first : ei = %d\n",ei);
   }
   else
   {
     if(ei!=0x42c80000)   
     {
       printf("error of b-1-3 at second : ei = %d\n",ei);
       printf("gmicro ei = 0x43480000\n");
     }
     else
     {
       printf("ok of b-1-3\n");
     }
   }
   pu->as.aa[0]=10;

   
   fi=pu->as.aa[0];
   xu.xf=200.0;
   ei=pu->as.aa[0];
   if(ei==fi)
   {
     ai=xu.xf+bi;
     printf("error of b-1-4 at first : ei = %d\n",ei);
   }
   else
   {
     if(ei!=0x42c80000)   
     {
       printf("error of b-1-4 at second : ei = %x\n",ei);
       printf("gmicro ei = 43480000\n");
     }
     else
     {
       printf("ok of b-1-4\n");
     }
   }
   pu->as.aa[0]=10;

   
   fi=pu->as.aa[0];
   xu.cc[0]=200;
   ei=pu->as.aa[0];
   ai=xu.xi+bi;
   if(ei==fi)
   {
     printf("error of b-1-5 at first : ei = %d\n",ei);
   }
   else
   {
     if(ei!=200)
     {
       printf("error of b-1-5 at second : ei = %d\n",ei);
     }
     else
     {
       printf("ok of b-1-5\n");
     }
   }
   pu->as.aa[0]=10;

   
   fi=pu->as.aa[0];
   pu->cc[0]=200;
   ei=pu->as.aa[0];
   ai=xu.xi+bi;
   if(ei==fi)
   {
     printf("error of b-1-6 at first : ei = %d\n",ei);
   }
   else
   {
     if(ei!=200)
     {
       printf("error of b-1-6 at second : ei = %d\n",ei);
     }
     else
     {
       printf("ok of b-1-6\n");
     }
   }
   pu->as.aa[0]=10;

   
   fi=pu->as.aa[0];
   xu.xi=200;
   ei=pu->as.aa[0];
   if(ei!=200) {
     printf("error                 \n");
   }
 }
