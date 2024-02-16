      PROGRAM MAIN

      CALL SUB01
      CALL SUB02
      CALL SUB03

      STOP
      END

      SUBROUTINE SUB01
      REAL,DIMENSION(5)::A,RIGHT_RESULT
      DATA A/1.0,2.0,3.0,4.0,5.0/
      LOGICAL NO_GOOD/.FALSE./

      A=COS(A)+3.14

      DO I=1,5
         RIGHT_RESULT(I) = COS(REAL(I))+3.14

      IF(ABS((A(I)-RIGHT_RESULT(I))/A(I)).GT.0.1E-5) NO_GOOD = .TRUE.
      ENDDO
      IF (NO_GOOD) THEN
         WRITE (6,*) '?????? NG ??????'
         WRITE (6,*) '< ACTUAL RESULT >   ',A
         WRITE (6,*) '< RIGHT  RESULT >   ',RIGHT_RESULT
         WRITE (6,*) '?????? NG ??????'
      ELSE
         WRITE (6,*) '****** OK ******'
      ENDIF
      RETURN
      END

      subroutine SUB02
      real,dimension(5)::a,right_result
      real ext_fnc
      logical no_good/.false./

      a=99.
      a=ext_fnc(a)

      right_result = 99.*99.+99.*9.+99.+99.
      do i=1,5

      if(abs((a(i)-right_result(i))/a(i)) .GT. 0.1E-5) no_good = .true.
      enddo
      if (no_good) then
         write (6,*) '?????? NG ??????'
         write (6,*) '< ACTUAL RESULT >   ',a
         write (6,*) '< RIGHT  RESULT >   ',right_result
         write (6,*) '?????? NG ??????'
      else
         write (6,*) '****** OK ******'
      endif
      return
      end

      real function ext_fnc(d)
      real,dimension(5)::d
      ext_fnc = d(1)*d(2)+d(3)*9.+d(4)+d(5)
      end function ext_fnc

      SUBROUTINE SUB03
      REAL,DIMENSION(5)::A,B,RIGHT_RESULT
      DATA A           /-1.2,0.5,3.1,1.0,-1.0/
      DATA RIGHT_RESULT/-1.2,0.5,3.1,1.0,-1.0/
      REAL X
      LOGICAL NO_GOOD/.FALSE./
      X=GAMMA(3.0)
      IF (X<0) GOTO 10

      B=3.0
      A=X**1.9*A

      DO I=1,5
         RIGHT_RESULT(I) = X**1.9*RIGHT_RESULT(I)

      IF (ABS((A(I)-RIGHT_RESULT(I))/A(I)).GT.0.1E-5) NO_GOOD = .TRUE.
      ENDDO
      IF (NO_GOOD) THEN
         WRITE (6,*) '?????? NG ??????'
         WRITE (6,*) '< ACTUAL RESULT >   ',A
         WRITE (6,*) '< RIGHT  RESULT >   ',RIGHT_RESULT
         WRITE (6,*) '?????? NG ??????'
      ELSE
         WRITE (6,*) '****** OK ******'
      ENDIF
   10 RETURN
      END
