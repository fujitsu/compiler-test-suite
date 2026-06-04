      PROGRAM CV4569
        type STR
           REAL A(10)/1,2,3,4,5,6,7,8,9,-10/,B(2)/0,0/,C(10),S/999/
        end type STR
        TYPE(STR) STR_DATA

      DO 10 I=1,10
       STR_DATA%S   =STR_DATA%B(1)
       STR_DATA%B(1)=STR_DATA%S   +STR_DATA%A(I)
  10  CONTINUE

      WRITE(6,900) STR_DATA%S
      WRITE(6,900) STR_DATA%B

      DO 20 I=1,10
       STR_DATA%S   =STR_DATA%B(2)+STR_DATA%A(I)
       STR_DATA%B(2)=STR_DATA%S
  20  CONTINUE

      WRITE(6,900) STR_DATA%S
      WRITE(6,900) STR_DATA%B
  900 FORMAT(' ',(6E12.4))
      STOP
      END
