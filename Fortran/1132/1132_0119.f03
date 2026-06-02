      PROGRAM  CV4902
        type STR
           REAL     A(10)/10*100/,B(2)/2*99/,S/200/
        end type STR
        TYPE(STR) STR_DATA
      DO 10 I=1,10
       IF (I.GE.10)  GOTO 10
        STR_DATA%S=I
        DO 20 J=1,2
  20     STR_DATA%B(J)=STR_DATA%S
        STR_DATA%A(I)=STR_DATA%S*STR_DATA%S
  10  CONTINUE

      WRITE(6,*) ' *** CVCT4902 ***'
      WRITE(6,*) STR_DATA%A
      WRITE(6,*) STR_DATA%B
      STOP
      END
