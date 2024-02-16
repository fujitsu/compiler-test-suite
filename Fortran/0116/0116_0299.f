      program main
      INTEGER  IA(3,3)/9*0/
      real(8),parameter :: ANSWER=2.0
      real(8) :: result

      DO 2 I3=1,1
         CALL W21(IA(1,I3))
         write(6,*) IA(1,2)
  2   CONTINUE

      print *,"answer check :"
      result = IA(1,2)
      if ( result .eq. ANSWER ) then
         print *," -> ok"
      else
         print *," -> ng",result,ANSWER
      endif

      end program main

      SUBROUTINE W21(IA2)
      INTEGER IA2(*)
      IA2(4)=2
      END
