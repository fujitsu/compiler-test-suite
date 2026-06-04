      EQUIVALENCE (IEQ1,JEQ1),(IEQ2,JEQ2),(IEQ3,JEQ3)
      type STR
         REAL A(10)/10*3.5/,B(10)/1,2,3,4,5,5,6,7,8,9/
      end type STR
      TYPE(STR) STR_DATA

      IEQ1=0
      DO 10 I=1,10
       IEQ1=IEQ1+1
       STR_DATA%A(I)=STR_DATA%B(I)*JEQ1
 10   CONTINUE

      WRITE(6,*) STR_DATA%A

      I=0
      DO 20 IEQ2=1,10
       I=I+1
       STR_DATA%A(I)=STR_DATA%A(IEQ2)*JEQ2
 20   CONTINUE

      WRITE(6,*) STR_DATA%A

      IEQ3=1
      DO 30 I=1,10
       STR_DATA%A(I)=STR_DATA%A(IEQ3)-JEQ3
       IEQ3=IEQ3+1
 30   CONTINUE

      WRITE(6,*) STR_DATA%A
      STOP
      END
