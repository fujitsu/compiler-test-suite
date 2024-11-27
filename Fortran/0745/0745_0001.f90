      subroutine sub
      DO 100 I=1,5
      CALL e ( *10,TA000,*20)
   10 continue 
  100  CONTINUE
   20 CONTINUE
      END
      subroutine e(*,T,*)
      T=2.0
      end
       print *,'pass'
      end
