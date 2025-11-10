 /********************************************************************/
 /*           program name : 000.h                                 */
 /*                                                                  */
 /*   these functions are included in test programs for checking     */
 /*                                                                  */
 /*   function defined   :                                           */
 /*     header - print heading & ending msg in each case of flag     */
 /*     nogood - print '*ng*' & other information                    */
 /*     confrm - print '*check*' & judge method                      */
 /*     ##chck - compare computed value with correct one.            */
 /*              if not agree,print information and call nogood      */
 /*               '##' stands for each type                          */
 /*     main programs   :  for all programs that test c-language     */
 /*     compiler level  :  v11l10 -> v99l99                          */
 /********************************************************************/
#define _chk  0                        /*  eyes check is necessary   */
#define _ok   1                        /*  no defect                 */
#define _ng   2                        /*  defects occurred          */
#define _null 0                        /*  null character            */
#include <string.h>                    /*                            */
#include <stdlib.h>                    /*                            */
#include <stdio.h>
 /********************************************************************/
 /*  static(global) variables declaration                            */
 /********************************************************************/
 static int  icount= 0 ,               /*  counter for header call   */
             condsw =1 ;               /*  conditional switch        */
 static char corrval[30] = { "              CORRECT  VAL : " } ,
             compval[30] = { "              COMPUTED VAL : " } ;
                                       /*                            */
 /********************************************************************/
 /*  header : control function of check routines                     */
 /********************************************************************/
 int header(char pname[],char comment[]) /*                           */
   {                                  /*                            */
     if (icount  ==   0)  {           /*  if first call             */
       icount = 1 ;                    /*    set ctr of header call  */
       printf("\n%11.7s STARTED   %-30s\n", pname, comment ) ;
       return (0)  ; }                /*  print heading msg & return*/
     else                              /*  if second call            */
       if ( condsw == _ok )            /*  and no defects, print msg */
         printf("\n%36.25s\n","*OK*    :  ALL THE ITEMS") ;
                                       /*                            */
     if (strcmp(comment,"no exit") == 0)  {
       printf("\n%11.7s ENDED   \n", pname) ;
       return condsw ; }              /*  return to caller          */
     else {
       printf("\n%11.7s ENDED   %-30s\n", pname, comment) ;
       return condsw ; }              /*  end of c-program          */
   }                                  /*                            */
 /********************************************************************/
 /*   nogood : this ft. is called when 'ng' is occurred              */
 /********************************************************************/
 int nogood(int itemno,char msg[])       /*                            */
   {                                  /*  print ' ng occurred '     */
     printf("\n\n%34.25s%d  %-33.30s\n",
                        " *NG*     AT ITEM NUMBER ",itemno,msg ) ;
     condsw = _ng ;                    /*  set ng-mode               */
     return( _ng ) ;                   /*                            */
   }                                  /*                            */
 /********************************************************************/
 /*    eyes check required                                           */
 /********************************************************************/
 int confirm(int itemno,char msg[])     /*                            */
   {                                  /*                            */
     if   ( itemno != 0 )              /*                            */
       printf("\n\n%34.25s%d\n","*CHECK*   AT ITEM NUMBER ",itemno);
     printf("\n%14s%-50s\n","", msg ) ;/*                            */
     if ( condsw == _ok)               /*  if no ng occurred yet,    */
       condsw = _chk ;                 /*    set mode eyes-check     */
     return( _chk ) ;                  /*                            */
   }                                  /*                            */
 /********************************************************************/
 /*    type integer check function                                   */
 /********************************************************************/
 int ichck(int itemno,int icorr,int icomp,char msg[]) /*               */
   {                                  /*                            */
     if ( icorr != icomp )  {         /*  if computed value invalid */
       nogood(itemno,msg) ;            /*  print 'ng' & set mode ng  */
       printf("\n%s%12d\n",corrval,icorr ); /*  print cprrect value  */
       printf("\n%s%12d\n",compval,icomp ); /*  print computed value */
       }                              /*                            */
     return( (icorr != icomp )+1) ;    /*  ret-code 1 : ok , 2 : ng  */
   }                                  /*                            */
 /********************************************************************/
 /*    short integer type check function                             */
 /********************************************************************/
 int sichck(int itemno,short sicorr,short sicomp,char msg[]) /*       */
   {                                  /*                            */
     if ( sicorr != sicomp )  {       /*  if computed value invalid */
       nogood(itemno,msg) ;            /*  print 'ng' & set mode ng  */
       printf("\n%s%8d\n",corrval,sicorr ); /*  print cprrect value  */
       printf("\n%s%8d\n",compval,sicomp ); /*  print computed value */
       }                              /*                            */
     return( (sicorr != sicomp )+1) ;  /*  ret-code 1 : ok , 2 : ng  */
   }                                  /*                            */
 /********************************************************************/
 /*    long integer type check function                              */
 /********************************************************************/
 int lichck(int itemno,long int licorr,long int licomp,char msg[])
   {                                  /*                            */
     if ( licorr != licomp )  {       /*  if computed value invalid */
       nogood(itemno,msg) ;            /*  print 'ng' & set mode ng  */
       printf("\n%s%12d\n",corrval,licorr );/*  print cprrect value  */
       printf("\n%s%12d\n",compval,licomp );/*  print computed value */
       }                              /*                            */
     return( (licorr != licomp )+1) ;  /*  ret-code 1 : ok , 2 : ng  */
   }                                  /*                            */
 /********************************************************************/
 /*    long long integer type check function                         */
 /********************************************************************/
 int llichck(int itemno,long long int llicorr,
                              long long int llicomp,char msg[])
   {                                  /*                            */
     if ( llicorr != llicomp ) {      /*  if computed value invalid */
       nogood(itemno,msg) ;            /*  print 'ng' & set mode ng  */
       printf("\n%s%20Ld\n",corrval,llicorr );
       printf("\n%s%20Ld\n",compval,llicomp );
       }                              /*                            */
     return( (llicorr != llicomp)+1) ; /* ret-code 1 : ok , 2 : ng   */
   }                                  /*                            */
 /********************************************************************/
 /*    float type check prgram                                       */
 /********************************************************************/
 int fchck(int itemno,float fcorr,float fcomp,float prec,char msg[])
   {                                  /*                            */
     float error0,prec0 ;              /*  error and precision       */
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
   {                                  /*                            */
     long double error0,prec0 ;              /*  error and precision       */
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
   {                                  /*                            */
     if ( ccorr != ccomp ) {          /*  if computed value invalid */
       nogood(itemno,msg) ;            /*  print 'ng' & set mode ng  */
       printf("\n%s%2c (%X)\n",corrval,ccorr,ccorr );
       printf("\n%s%2c (%X)\n",compval,ccomp,ccomp );
       }                              /*                            */
     return( (ccorr != ccomp )+1) ;    /*  ret-code 1 : ok , 2 : ng  */
   }                                  /*                            */
 /********************************************************************/
 /*    string type check prgram                                      */
 /********************************************************************/
 int schck(int itemno,char scorr[],char scomp[],char msg[])
   {                                  /*                            */
     int i    = 0 ,                    /*  control variable          */
         ngsw = _ok ;                  /*  ng switch                 */
     if ( scorr[0] == _null && scomp[0] == _null )
       return( _ok ) ;
     while ( scorr[i] == scomp[i] && scorr[i] != _null )
       i++ ;                           /*  count up agreed chars     */
     if ( i == 0 ||                    /*  if chars not agreed       */
          scomp[i] != _null || scorr[i] != _null ) {
       ngsw = _ng ;                    /*  set ng switch             */
       nogood(itemno,msg)   ;          /*  print 'ng' & set mode ng  */
       printf("\n%s%-40s\n%28s(",corrval,scorr,"") ;
       for ( i = 0 ; scorr[i] != _null ; i++ )
         printf("%x",scorr[i]) ;     /*  print str as char & hex   */
       printf(")\n\n%s%-40s\n%28s(",compval,scomp,"");
       for ( i = 0 ; scomp[i] != _null ; i++ )
         printf("%x",scomp[i]) ;     /*  print str as char & hex   */
       printf(")\n") ;                 /*  print last parenthis      */
       }                              /*                            */
     return( ngsw ) ;                  /*                            */
    }                                 /*                            */
