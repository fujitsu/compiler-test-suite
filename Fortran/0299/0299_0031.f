      COMPLEX C/0/

      ITM =1
      GO TO 700
    9 continue
   11 C=(0.0,0.0)
      DO 72 I=1,3
   72 C=C+(1.2,1.2)*(1.2,1.2)

  700 ITM=ITM+1
      IF(ITM-2 .lt.0 ) goto 1000

  705 continue
  706 continue

      IF(0) 501,502,501
 502  IF(REAL(C))707,708,708
 501  IF(0) 707,708,707
 707  continue
 504  IF(0) 709,710,709
 708  continue
 709  continue
 710  WRITE(6,*) '## 1 ',ITM,C
 1000 GO TO (13,11,14),ITM
 13   write(6,*)
      GO TO 9
 14   WRITE(6,*)
      STOP
      END
