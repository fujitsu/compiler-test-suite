      REAL A(10,10),B(10,10),SUM/0.0/,SUM2/0.1/
      REAL C(10,10)
      DATA A/100*1.0/,B/100*2.1/,C/100*3.2/

      CALL SUB1(SUM,SUM2,A,B,C)
      if (abs(SUM-320.0) < 0.001 .and. abs(SUM2 - 672.100) < 0.001) then 
         print*,"OK"
      else
         print*,"NG ",SUM,SUM2
      end if
      STOP
      END

      SUBROUTINE SUB1(SUM,SUM2,A,B,C)
      REAL A(10,10),B(10,10),SUM,SUM2
      REAL C(10,10)

      N=10
      M=10
      DO 10 I=1,N
        DO 10 J=1,M
          SUM = SUM + A(I,J)*C(I,J)
          SUM2 = SUM2 + B(I,J)*C(I,J)
   10 CONTINUE
      RETURN
      END
