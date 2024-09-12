      type aaa
         real*4  array_A(256,256,256) 
         real*4  array_B(512,512,512) 
      end type aaa
      PARAMETER (ii=256)
      real*8  array_D(ii+256,ii+256,ii+ii) 
      real*4  array_E(128+ii,ii*2,768) 
      real*8  array_F(ii-ii+32,ii/ii+32,32) 
      array_A=0.d0      
      array_B=0.d0      
      array_D=0.d0      
      array_E=0.d0      
      array_F=0.d0      
      print *,'pass'
      end
