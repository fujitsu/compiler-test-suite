#define _chk  0
#define _ok   1
#define _ng   2
#define _null 0
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
 /********************************************************************/
 /*  static(global) variables declaration                            */
 /********************************************************************/
 static int  icount= 0 ,
             condsw =1 ;
 static char corrval[30] = { "              CORRECT  VAL : " } ,
             compval[30] = { "              COMPUTED VAL : " } ;
 /********************************************************************/
 /*  header : control function of check routines                     */
 /********************************************************************/
 int header(char pname[],char comment[])
   {
     if (icount  ==   0)  {
       icount = 1 ;
       printf("\n%11.7s STARTED   %-30s\n", pname, comment ) ;
       return (0)  ; }
     else
       if ( condsw == _ok )
         printf("\n%36.25s\n","*OK*    :  ALL THE ITEMS") ;
     if (strcmp(comment,"no exit") == 0)  {
       printf("\n%11.7s ENDED   \n", pname) ;
       return condsw ; }
     else {
       printf("\n%11.7s ENDED   %-30s\n", pname, comment) ;
       return condsw ; }
   }
 /********************************************************************/
 /*   nogood : this ft. is called when 'ng' is occurred              */
 /********************************************************************/
 int nogood(int itemno,char msg[])
   {
     printf("\n\n%34.25s%d  %-33.30s\n",
                        " *NG*     AT ITEM NUMBER ",itemno,msg ) ;
     condsw = _ng ;
     return( _ng );
   }
 /********************************************************************/
 /*    eyes check required                                           */
 /********************************************************************/
 int confirm(int itemno,char msg[])
   {
     if   ( itemno != 0 )
       printf("\n\n%34.25s%d\n","*CHECK*   AT ITEM NUMBER ",itemno);
     printf("\n%14s%-50s\n","", msg ) ;
     if ( condsw == _ok)
       condsw = _chk ;
     return( _chk ) ;
   }
 /********************************************************************/
 /*    type integer check function                                   */
 /********************************************************************/
 int ichck(int itemno,int icorr,int icomp,char msg[])
   {
     if ( icorr != icomp )  {
       nogood(itemno,msg) ;
       printf("\n%s%12d\n",corrval,icorr );
       printf("\n%s%12d\n",compval,icomp );
       }
     return( (icorr != icomp )+1) ;
   }
 /********************************************************************/
 /*    short integer type check function                             */
 /********************************************************************/
 int sichck(int itemno,short sicorr,short sicomp,char msg[])
   {
     if ( sicorr != sicomp )  {
       nogood(itemno,msg) ;
       printf("\n%s%8d\n",corrval,sicorr );
       printf("\n%s%8d\n",compval,sicomp );
       }
     return( (sicorr != sicomp )+1) ;
   }
 /********************************************************************/
 /*    long integer type check function                              */
 /********************************************************************/
 int lichck(int itemno,long int licorr,long int licomp,char msg[])
   {
     if ( licorr != licomp )  {
       nogood(itemno,msg) ;
       printf("\n%s%12d\n",corrval,licorr );
       printf("\n%s%12d\n",compval,licomp );
       }
     return( (licorr != licomp )+1) ;
   }
 /********************************************************************/
 /*    long long integer type check function                         */
 /********************************************************************/
 int llichck(int itemno,long long int llicorr,
                              long long int llicomp,char msg[])
   {
     if ( llicorr != llicomp ) {
       nogood(itemno,msg) ;
       printf("\n%s%20Ld\n",corrval,llicorr );
       printf("\n%s%20Ld\n",compval,llicomp );
       }
     return( (llicorr != llicomp)+1) ;
   }
 /********************************************************************/
 /*    float type check prgram                                       */
 /********************************************************************/
 int fchck(int itemno,float fcorr,float fcomp,float prec,char msg[])
   {
     float error0,prec0 ;
     if ( (fcorr >= 0.0f ? fcorr : -fcorr) < 1.0e-50 )
       if ( (fcomp >= 0.0f ? fcomp : -fcomp) < 1.0e-50 )
         return (_ok) ;
       else
         goto ngprint ;
      if ( prec == 0.0f ) prec0 = 1.0e-6 ;
      else               prec0 = prec ;
      error0 = (fcorr - fcomp)/fcorr ;
     if   ( error0 < 0.0f )  error0 = -error0 ;
     if (error0 > prec0 )
       ngprint : {
       nogood(itemno,msg)   ;
       printf("\n%s%e\n",corrval,fcorr );
       printf("\n%s%e\n",compval,fcomp );
       }
     return( ( fcorr > fcomp )+1 ) ;
   }
 /********************************************************************/
 /*    double type check prgram                                      */
 /********************************************************************/
 int dchck(int itemno,double dfcorr,double dfcomp,double prec,char msg[])
   { double error0,prec0 ;
      if ( prec == 0.0 ) prec0 = 1.0e-14 ;
      else               prec0 = prec ;
      error0 = (dfcorr - dfcomp)/dfcorr ;
      if ( error0 < 0.0 )     error0 = -error0 ;
      if ( error0 > prec0 )   {
        nogood(itemno,msg)   ;
        printf("\n%s%.16e\n",corrval,dfcorr );
        printf("\n%s%.16e\n",compval,dfcomp );
        }
      return( (error0 > prec0 )+1) ;
   }
 /********************************************************************/
 /*    long double type check prgram                                 */
 /********************************************************************/
 int ldchck(int itemno,long double ldcorr,long double ldcomp,
                    long double prec,char msg[])
   {
     long double error0,prec0 ;
     if ( (ldcorr >= 0.0L ? ldcorr : -ldcorr) < 1.0e-50 )
       if ( (ldcomp >= 0.0L ? ldcomp : -ldcomp) < 1.0e-50 )
         return (_ok) ;
       else
         goto ngprint ;
     prec0 = prec == 0.0L ? 1.0e-6 : prec ;
     error0 = (ldcorr - ldcomp)/ldcorr ;
     if   ( error0 < 0.0L )  error0 = -error0 ;
     if (error0 > prec0 )
       ngprint : {
       nogood(itemno,msg)   ;
       printf("\n%s%.32e\n",corrval,ldcorr );
       printf("\n%s%.32e\n",compval,ldcomp );
       }
     return( ( error0 > prec0 )+1 ) ;
   }
 /********************************************************************/
 /*    character type check prgram                                   */
 /********************************************************************/
 int cchck(int itemno,char ccorr,char ccomp,char msg[])
   {
     if ( ccorr != ccomp ) {
       nogood(itemno,msg) ;
       printf("\n%s%2c (%X)\n",corrval,ccorr,ccorr );
       printf("\n%s%2c (%X)\n",compval,ccomp,ccomp );
       }
     return( (ccorr != ccomp )+1) ;
   }
 /********************************************************************/
 /*    string type check prgram                                      */
 /********************************************************************/
 int schck(int itemno,char scorr[],char scomp[],char msg[])
   {
     int i    = 0 ,
         ngsw = _ok ;
     if ( scorr[0] == _null && scomp[0] == _null )
       return( _ok ) ;
     while ( scorr[i] == scomp[i] && scorr[i] != _null )
       i++ ;
     if ( i == 0 ||
          scomp[i] != _null || scorr[i] != _null ) {
       ngsw = _ng ;
       nogood(itemno,msg)   ;
       printf("\n%s%-40s\n%28s(",corrval,scorr,"") ;
       for ( i = 0 ; scorr[i] != _null ; i++ )
         printf("%x",scorr[i]) ;
       printf(")\n\n%s%-40s\n%28s(",compval,scomp,"");
       for ( i = 0 ; scomp[i] != _null ; i++ )
         printf("%x",scomp[i]) ;
       printf(")\n") ;
       }
     return( ngsw ) ;
    }
