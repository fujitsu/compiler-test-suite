      REAL A(10)/10*1/,B(10)/10*2/
      A(1)=B(1)+1
      B(2)=A(1)+3
      A(2)=B(2)
      B(3)=A(2)
      A(2)=5
       WRITE(6,*) A,B
      STOP
      END
