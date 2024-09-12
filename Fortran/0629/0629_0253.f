       REAL a(10,20)
       REAL b(10,20) /200*2.0/
       a(1,1)=1.0
       a(2,5)=4.0
       j=1
       DO i=1,9
          j=j+2
          a(i,j)=b(i,j)
       ENDDO
       write(6,*)"a(2,5)=",a(2,5)
       END
