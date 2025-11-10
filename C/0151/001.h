#include <stdio.h>
















#define _chk  0                        
#define _ok   1                        
#define _ng   2                        
#define _null 0                        
#include "string.h"                    
 
 
 
 static int  icount= 0 ,               
             condsw =1 ;               
        int  exit() ;                  
 static char corrval[30] = { "CORRECTVAL  :" } ,
             compval[30] = { "COMPUTEDVAL :" } ;
                                       
 
 
 
  int header(char pname[9], char comment[])


   {                                   
     int i=0;                          
     if (icount  ==   0)  {            
       icount = 1 ;                    
       for(i=0;i<62;i++) printf("%c",'*') ;
       printf("\n*%11.7s STARTED %-40s%c\n", pname, comment ,'*' ) ;
       for(i=0;i<62;i++) printf("%c",'*') ;
       printf("\n") ;
       return (0)  ; }                 
     else                              
       if ( condsw == _ok )            
       {
         for(i=0;i<62;i++) printf("%c",'*') ;
         printf("\n*%61c",'*') ;
         printf("\n*%36.25s%25c","*OK*    :  ALL THE ITEMS",'*') ;
       }
        else                           
          if ( condsw == _ng )         
       {
            for(i=0;i<62;i++) printf("%c",'*') ;
            printf("\n*%61c",'*') ;
            printf("\n*%50.38s%11c",
                  "*NG* : EXIST NG ITEMNO ##CHECK CHECK##",'*') ;
       }
          else                         
            if ( condsw == _chk )      
       {
              for(i=0;i<62;i++) printf("%c",'*') ;
              printf("\n*%61c",'*') ;
              printf("\n*%56.44s%5c",
                 "*EYE*,EXIST EYE CHECK ITEMNO ##CHECK CHECK##",'*') ;
       }
     if (strcmp(comment,"no exit") == 0)  {
       printf("\n*%11.7s ENDED%44c\n", pname,'*') ;
       printf("*%61c\n",'*') ;
       for(i=0;i<62;i++) printf("%c",'*') ;
       printf("\n") ;
       return condsw ; }               
     else {
       printf("\n*%11.7s ENDED %-42s%c\n", pname, comment ,'*') ;
       printf("*%61c\n",'*') ;
       for(i=0;i<62;i++) printf("%c",'*') ;
       printf("\n") ;
       exit (condsw) ; }               
   }                                   
 
 
 
  int nogood(char *itemno, char msg[30])


   {                                   
     printf("\n\n%34.25s%s  %-33.30s\n"," *NG*     AT ITEM NUMBER ",
             itemno,msg) ;
     condsw = _ng ;                    
     return( _ng ) ;                   
   }                                   
 
 
 
  int confirm(char *itemno, char msg[50])


   {                                   
     if   ( *itemno != '\0' )          
       printf("\n\n%34.26s%s\n","*CHECK*    AT ITEM NUMBER ",itemno) ;
     printf("\n%14s%-50s\n","", msg ) ;
     if ( condsw == _ok)               
       condsw = _chk ;                 
     return( _chk ) ;                  
   }                                   
 
 
 
  int ichck(char *itemno, int icorr, int icomp, char msg[30])



   {                                   
     if ( icorr != icomp )  {          
       nogood(itemno,msg) ;            
       printf("\n%s%12d\n",corrval,icorr ); 
       printf("\n%s%12d\n",compval,icomp ); 
       }                               
     return( (icorr != icomp )+1) ;    
   }                                   
 
 
 
  int lichck(char *itemno, long int licorr, long int licomp, char msg[30])



   {                                   
     if ( licorr != licomp )  {        
       nogood(itemno,msg) ;            
       printf("\n%s%12d\n",corrval,licorr );
       printf("\n%s%12d\n",compval,licomp );
       }                               
     return( (licorr != licomp )+1) ;  
   }                                   
 
 
 
  int sichck(char *itemno, short sicorr, short sicomp, char msg[30])



   {                                   
     if ( sicorr != sicomp )  {        
       nogood(itemno,msg) ;            
       printf("\n%s%8d\n",corrval,sicorr ); 
       printf("\n%s%8d\n",compval,sicomp ); 
       }                               
     return( (sicorr != sicomp )+1) ;  
   }                                   
 
 
 
  int fchck(char *itemno, float fcorr, float fcomp, float prec, char msg[30])




   {                                   
     float error0,prec0 ;              
     if ( (fcorr >= 0.0 ? fcorr : -fcorr) < 1.0e-50 )
       if ( (fcomp >= 0.0 ? fcomp : -fcomp) < 1.0e-50 )
         return (_ok) ;
       else
         goto ngprint ;
     prec0 = prec == 0.0 ? 1.0e-6 : prec ;
     error0 = (fcorr - fcomp)/fcorr ;
     if   ( error0 < 0 )  error0 = -error0 ;
     if (error0 > prec0 )
       ngprint : {
       nogood(itemno,msg)   ;
       printf("\n%s%e\n",corrval,fcorr );
       printf("\n%s%e\n",compval,fcomp );
       }
     return( ( fcorr > fcomp )+1 ) ;
   }
 
 
 
  int dchck(char *itemno, double dfcorr, double dfcomp, double prec, char msg[30])

   { float error0,prec0 ;
      if ( prec == 0.0 ) prec0 = 1.0e-14 ;
      else               prec0 = prec ;
      error0 = (dfcorr - dfcomp)/dfcorr ;
      if ( error0 < 0 )     error0 = -error0 ;
      if ( error0 > prec0 )   {
        nogood(itemno,msg)   ;
        printf("\n%s%.16e\n",corrval,dfcorr );
        printf("\n%s%.16e\n",compval,dfcomp );
        }
      return( (error0 > prec0 )+1) ;
   }
 
 
 
  int ldchck(char *itemno, long double ldfcorr, long double ldfcomp,
	long double prec, char msg[30])

   { float error0,prec0 ;
      if ( prec == 0.0 ) prec0 = 1.0e-14 ;
      else               prec0 = prec ;
      error0 = (ldfcorr - ldfcomp)/ldfcorr ;
      if ( error0 < 0 )     error0 = -error0 ;
      if ( error0 > prec0 )   {
        nogood(itemno,msg)   ;
        printf("\n%s%.32e\n",corrval,ldfcorr );
        printf("\n%s%.32e\n",compval,ldfcomp );
        }
      return( (error0 > prec0 )+1) ;
   }
 
 
 
int cchck(char *itemno, char ccorr, char ccomp, char msg[30])



   {                                   
     if ( ccorr != ccomp ) {           
       nogood(itemno,msg) ;            
       printf("\n%s%2c (%X)\n",corrval,ccorr,ccorr );
       printf("\n%s%2c (%X)\n",compval,ccomp,ccomp );
       }                               
     return( (ccorr != ccomp )+1) ;    
   }                                   
 
 
 
int schck(char *itemno, char scorr[], char scomp[], char msg[30])



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

int llichck()
{
}
