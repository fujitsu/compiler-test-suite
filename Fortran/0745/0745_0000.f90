      DO 100 I=1,5
      CALL E ( *10,TA000,*20)
   10 continue 
  100  CONTINUE
   20 CONTINUE
      if (abs(TA000-2.0)>0.0001)print *,'error'
       print *,'pass'
      END
      subroutine e(*,T,*)
      T=2.0
      end
