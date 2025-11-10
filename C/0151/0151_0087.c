
















  #include "001.h"

  int judge ;                     
  float tks01=1.2345f ;           
  typedef double tks02 ;          
  struct tks03 {                  
                short int si;     
                unsigned int ui;  
                } sarea03 ;       
  enum etag04 {a=100,b,c,tks04} evar04 ; 
  int tks05(int) ;                
  enum etag06 {d=99,tks06} evar06 ; 
  struct tks07 {                  
                float fl;         
                long int li ;     
                } sarea07 ;       
  int tks08 ;                     
  struct tks08 {                  
               int i;
               char c;
               } sarea8 ;
  enum etag09 {e=99,tks09} evar09 ; 








  int func07(int (*tks07)(int i_parm),int parm_ii)
  {
      tks0101: ;
      return ((*tks07)(parm_ii)) ;
  }



  int add(int i_parm)
  {
      int retn ;
      tks0101: ;
      retn = (i_parm + 100) ;
      return retn ;
   }



  int sub(int i_parm)
  {
      int retn ;
      tks0101: ;
      retn = (i_parm - 222) ;
      return retn ;
  }



  int div(int i_parm)
  {
      int retn ;
      tks0101: ;
      retn = (i_parm / 3) ;
      return retn ;
  }








  int func08(struct tks08 sarea8)
  {
      tks0101: ;
      return (sarea8.i+223) ;
  }







  int func09(int tks09)           
  {
      tks0101: ;
      if (tks09==100) return 777 ;
      else return 0 ;
  }





int main()
  {









  header("","IDENTIFER SCOPE TEST") ;




    {
      int tks01 = 333 ;
      judge = 0 ;                 
      while (tks01) {
        tks01-- ;
      }
      if (tks01 == 0) judge++ ;   
    }
    {
      if (tks01 == 1.2345f) judge++ ; 
     ichck("TKS01.01",2,judge,
                        "variable ,block scope and file scope test") ;
    }



    {
      struct tag02 {
                    short  i;
                    char   c;
                    float  f;
                    int    tks02;
                    } str02 ={333,'a',12.3f,777} ;
      tks02 d_tks02 = 123.456e+3 ;
      judge = 0 ;
      if ( str02.tks02 == 777 )     judge++ ; 

      if ( d_tks02 == 123.456e+3 )  judge++ ; 
      if (sizeof(d_tks02) != 8)     judge++ ; 
      ichck("TKS01.02",2,judge,
                           "member ,block scope and file scpoe test") ;
    }




    {
      typedef float tks03 ;       
      tks03 fl_03 = 77.77e+2f ;   
      judge = 0 ;
      if (sizeof(fl_03)==4) judge++ ;
      switch ((int)fl_03) {
        case 0             : judge-- ;break ;
        case 1111          : judge-- ;break ;
        case (int)22.22e+2 : judge-- ;break ;
        case 3333          : judge-- ;break ;
        case (int)6.666e+3 : judge-- ;break ;
        case 7777          : judge++ ;break ;
        default            : judge-- ;
      }
     }
    
    {
      struct tks03 sarea ;        
      sarea.si = 333 ;
      sarea.ui = 444 ;
      if ((sarea.si + sarea.ui)==777) judge++ ;
      ichck("TKS01.03",3,judge,
                           "typedef ,block scope and file scpoe test") ;
    }



    {
      int tks04 = 0 ;             
tks0101: ;
      judge = 0 ;
      tks04 : ;                   
      tks04++ ;
      if (tks04 < 10) goto tks04 ;
      if (tks04 == 10) judge++ ;
    }

    {
      if (tks04==103) judge++ ;
      ichck("TKS01.04",2,judge,
                       "label ,block scope and file scpoe test") ;
    }



    {
      int p5 = 777 ;
      judge = tks05(p5) ;          
      ichck("TKS01.05",7770,judge,"function ,file scpoe test") ;
      
    }



    {
      judge = 0 ;
      if (tks06 == 100) judge++ ;
      evar06 = tks06 ;
      while (evar06) {
        evar06-- ; judge++ ;
      }
      ichck("TKS01.06",101,judge,"enum,file scpoe test") ;
    }



    {
      int func07(int (*tks07)(int a),int b) ; 
      int add(int a) ;
      int sub(int a) ;
      int div(int a) ;
      int parm_i = 777 ;
      judge = 0 ;
      switch (judge) {
        case 0 : judge = func07(add,parm_i); break;
        case 1 : judge = func07(sub,parm_i); break;
        case 2 : judge = func07(div,parm_i); break;
        default: break ;
      }
      ichck("TKS01.07",877,judge,"function, prottype scope test") ;
    }



    {
      int func08(struct tks08) ; 
      struct tks08 str08 = {777,'a'} ;
      judge = 0 ;
      judge = func08(str08) ;
      ichck("TKS01.08",1000,judge,"tag, prottype scope test") ;
    }



    {
      int func09(int tks09);
      int tks09 = 100 ;
      judge = func09(tks09) ;      
      ichck("TKS01.09",777,judge,"variable, function scope test") ;
    }

  header("","IDENTIFER SCOPE TEST") ;
  }








  int tks05(int P5)
  {
      tks0101: ;
      return P5*10 ;
  }
