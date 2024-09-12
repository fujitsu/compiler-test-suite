      REAL*8 A(10,10),B(10,10),C(10,10),L,M
      B=1
      L=2
      do i=1,10
        do j=1,10
          A(i,j)=EXP(L)
          B(j,i)=EXP(L)
          M=L**L
          C(i,j)=EXP(A(i,j)+B(i,j))
        enddo
      enddo
      write(6,*)"A=",A
      write(6,*)"B=",B
      write(6,*)"C=",C
      write(6,*)"M=",M

      stop
      end
