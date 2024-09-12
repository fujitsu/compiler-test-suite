      REAL*8 A(10,10),B(10,10),C(10,10),L,M

      L=2
      B=3
      do i=1,10
        do j=1,10
          A(i,j)=SIN(L)
          B(j,i)=COS(L)
          M=L**L
          C(i,j)=TAN(A(i,j)+B(i,j))
        enddo
      enddo
      write(6,*)"A=",A
      write(6,*)"B=",B
      write(6,*)"C=",C
      write(6,*)"M=",M

      stop
      end
