#include <stdio.h>
int result_chk(r00,
                   c00,f00,l00,d00,x00,s00,h00,i00
                  ,c01,f01,l01,d01,x01,s01,h01,i01
                  ,c02,f02,l02,d02,x02,s02,h02,i02
                  ,c03,f03,l03,d03,x03,s03,h03,i03
                  ,c04,f04,l04,d04,x04,s04,h04,i04
                  ,c05,f05,l05,d05,x05,s05,h05,i05
                  ,c06,f06,l06,d06,x06,s06,h06,i06
                  ,c07,f07,l07,d07,x07,s07,h07,i07
                  ,c08,f08,l08,d08,x08,s08,h08,i08) 
long   r00;
float  f00,f01,f02,f03,f04,f05,f06,f07,f08;
double d00,d01,d02,d03,d04,d05,d06,d07,d08;
long
double x00,x01,x02,x03,x04,x05,x06,x07,x08;
long long
int    l00,l01,l02,l03,l04,l05,l06,l07,l08;
long
int    i00,i01,i02,i03,i04,i05,i06,i07,i08;
unsigned long long
int    h00,h01,h02,h03,h04,h05,h06,h07,h08;
char   c00,c01,c02,c03,c04,c05,c06,c07,c08;
short
int    s00,s01,s02,s03,s04,s05,s06,s07,s08;
{
  if (r00==      (  c00+f00+l00+d00+x00+s00+h00+i00
                  + c01+f01+l01+d01+x01+s01+h01+i01
                  + c02+f02+l02+d02+x02+s02+h02+i02
                  + c03+f03+l03+d03+x03+s03+h03+i03
                  + c04+f04+l04+d04+x04+s04+h04+i04
                  + c05+f05+l05+d05+x05+s05+h05+i05
                  + c06+f06+l06+d06+x06+s06+h06+i06
                  + c07+f07+l07+d07+x07+s07+h07+i07
                  + c08+f08+l08+d08+x08+s08+h08+i08) )
    return 1;
  else 
    return 0;
}  
int result_chkm(
                   c00,f00,l00,d00,x00,s00,h00,i00
                  ,c01,f01,l01,d01,x01,s01,h01,i01
                  ,c02,f02,l02,d02,x02,s02,h02,i02
                  ,c03,f03,l03,d03,x03,s03,h03,i03
                  ,c04,f04,l04,d04,x04,s04,h04,i04
                  ,c05,f05,l05,d05,x05,s05,h05,i05
                  ,c06,f06,l06,d06,x06,s06,h06,i06
                  ,c07,f07,l07,d07,x07,s07,h07,i07
                  ,c08,f08,l08,d08,x08,s08,h08,i08) 
float  f00,f01,f02,f03,f04,f05,f06,f07,f08;
double d00,d01,d02,d03,d04,d05,d06,d07,d08;
long
double x00,x01,x02,x03,x04,x05,x06,x07,x08;
long long
int    l00,l01,l02,l03,l04,l05,l06,l07,l08;
long
int    i00,i01,i02,i03,i04,i05,i06,i07,i08;
unsigned long long
int    h00,h01,h02,h03,h04,h05,h06,h07,h08;
char   c00,c01,c02,c03,c04,c05,c06,c07,c08;
short
int    s00,s01,s02,s03,s04,s05,s06,s07,s08;
{
   return(          c00*f00*l00*d00*x00*s00*h00*i00
                  * c01*f01*l01*d01*x01*s01*h01*i01
                  * c02*f02*l02*d02*x02*s02*h02*i02
                  * c03*f03*l03*d03*x03*s03*h03*i03
                  * c04*f04*l04*d04*x04*s04*h04*i04
                  * c05*f05*l05*d05*x05*s05*h05*i05
                  * c06*f06*l06*d06*x06*s06*h06*i06
                  * c07*f07*l07*d07*x07*s07*h07*i07
                  * c08*f08*l08*d08*x08*s08*h08*i08) ;
}  
int main(){
float  f00[9],f01[9],f02[9],f03[9],f04[9],f05[9],f06[9],f07[9],f08[9];
double d00[9],d01[9],d02[9],d03[9],d04[9],d05[9],d06[9],d07[9],d08[9];
long
double x00[9],x01[9],x02[9],x03[9],x04[9],x05[9],x06[9],x07[9],x08[9];
long long
int    l00[9],l01[9],l02[9],l03[9],l04[9],l05[9],l06[9],l07[9],l08[9];
long
int    i00[9],i01[9],i02[9],i03[9],i04[9],i05[9],i06[9],i07[9],i08[9];
short
int    s00[9],s01[9],s02[9],s03[9],s04[9],s05[9],s06[9],s07[9],s08[9];
char   c00[9],c01[9],c02[9],c03[9],c04[9],c05[9],c06[9],c07[9],c08[9];
unsigned long long
int    h00[9],h01[9],h02[9],h03[9],h04[9],h05[9],h06[9],h07[9],h08[9];
long i,result,resultm;
long volatile r00[9];

 for (i=0;i < 9;i++)  {
     f00[i]=h00[i]=d00[i]=x00[i]=l00[i]=i00[i]=s00[i]=c00[i]=1;
     f01[i]=h01[i]=d01[i]=x01[i]=l01[i]=i01[i]=s01[i]=c01[i]=1;
     f02[i]=h02[i]=d02[i]=x02[i]=l02[i]=i02[i]=s02[i]=c02[i]=1;
     f03[i]=h03[i]=d03[i]=x03[i]=l03[i]=i03[i]=s03[i]=c03[i]=1;
     f04[i]=h04[i]=d04[i]=x04[i]=l04[i]=i04[i]=s04[i]=c04[i]=1;
     f05[i]=h05[i]=d05[i]=x05[i]=l05[i]=i05[i]=s05[i]=c05[i]=1;
     f06[i]=h06[i]=d06[i]=x06[i]=l06[i]=i06[i]=s06[i]=c06[i]=1;
     f07[i]=h07[i]=d07[i]=x07[i]=l07[i]=i07[i]=s07[i]=c07[i]=1;
     f08[i]=h08[i]=d08[i]=x08[i]=l08[i]=i08[i]=s08[i]=c08[i]=1;
  r00[i]=  f00[i]+f01[i]+f02[i]+f03[i]+f04[i]+f05[i]+f06[i]+f07[i]+f08[i]
         + h00[i]+h01[i]+h02[i]+h03[i]+h04[i]+h05[i]+h06[i]+h07[i]+h08[i]
         + d00[i]+d01[i]+d02[i]+d03[i]+d04[i]+d05[i]+d06[i]+d07[i]+d08[i]
         + x00[i]+x01[i]+x02[i]+x03[i]+x04[i]+x05[i]+x06[i]+x07[i]+x08[i]
         + i00[i]+i01[i]+i02[i]+i03[i]+i04[i]+i05[i]+i06[i]+i07[i]+i08[i]
         + s00[i]+s01[i]+s02[i]+s03[i]+s04[i]+s05[i]+s06[i]+s07[i]+s08[i]
         + l00[i]+l01[i]+l02[i]+l03[i]+l04[i]+l05[i]+l06[i]+l07[i]+l08[i]
         + c00[i]+c01[i]+c02[i]+c03[i]+c04[i]+c05[i]+c06[i]+c07[i]+c08[i];
   result=
   result_chk( r00[i]
                  ,c00[i],f00[i],l00[i],d00[i],x00[i],s00[i],h00[i],i00[i]
                  ,c01[i],f01[i],l01[i],d01[i],x01[i],s01[i],h01[i],i01[i]
                  ,c02[i],f02[i],l02[i],d02[i],x02[i],s02[i],h02[i],i02[i]
                  ,c03[i],f03[i],l03[i],d03[i],x03[i],s03[i],h03[i],i03[i]
                  ,c04[i],f04[i],l04[i],d04[i],x04[i],s04[i],h04[i],i04[i]
                  ,c05[i],f05[i],l05[i],d05[i],x05[i],s05[i],h05[i],i05[i]
                  ,c06[i],f06[i],l06[i],d06[i],x06[i],s06[i],h06[i],i06[i]
                  ,c07[i],f07[i],l07[i],d07[i],x07[i],s07[i],h07[i],i07[i]
                  ,c08[i],f08[i],l08[i],d08[i],x08[i],s08[i],h08[i],i08[i]);
   resultm=
   result_chkm(
                   c00[i],f00[i],l00[i],d00[i],x00[i],s00[i],h00[i],i00[i]
                  ,c01[i],f01[i],l01[i],d01[i],x01[i],s01[i],h01[i],i01[i]
                  ,c02[i],f02[i],l02[i],d02[i],x02[i],s02[i],h02[i],i02[i]
                  ,c03[i],f03[i],l03[i],d03[i],x03[i],s03[i],h03[i],i03[i]
                  ,c04[i],f04[i],l04[i],d04[i],x04[i],s04[i],h04[i],i04[i]
                  ,c05[i],f05[i],l05[i],d05[i],x05[i],s05[i],h05[i],i05[i]
                  ,c06[i],f06[i],l06[i],d06[i],x06[i],s06[i],h06[i],i06[i]
                  ,c07[i],f07[i],l07[i],d07[i],x07[i],s07[i],h07[i],i07[i]
                  ,c08[i],f08[i],l08[i],d08[i],x08[i],s08[i],h08[i],i08[i]);
   if (result==resultm) 
      printf ("**  (%d) ** OK\n",i+1);
   else {
      printf ("**  (%d) ** NG  ",i+1);
      printf("%d\n",(long)r00[i]);
   }
  }
}
