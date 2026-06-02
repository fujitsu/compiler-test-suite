      PROGRAM CV4567
        type STR
           REAL A(10)/1,2,3,4,5,6,7,8,9,0/,B(10)/2,4,6,8,10,12,14,16,18,20/
        end type STR
        TYPE(STR) STR_DATA
      S=0.
      DO 10 I=1,10
       STR_DATA%A(I)=I
       T=STR_DATA%B(I)+S
  11   S=T+STR_DATA%A(I)
  10  CONTINUE
      WRITE(6,*) S
      STOP
      END
