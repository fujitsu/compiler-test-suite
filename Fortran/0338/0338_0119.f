      DATA A/1/,B/2/,C/3/
      TOTAL(A,B,C)=A+B+C
      AVERAG(A,B,C)=TOTAL(A,B,C)/3.0
C
      WRITE(6,*) TOTAL(A,B,C)
      WRITE(6,*) AVERAG(A,B,C)
C
      STOP
      END
