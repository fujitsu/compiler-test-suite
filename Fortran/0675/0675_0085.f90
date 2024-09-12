      REAL*8 A(10,10),B(10,10),C(10,10),L,M,N

      L=3
      do i=1,10
        do j=1,10
          M=i+j+L
          A(i,j)=EXP(M)
          B(i,j)=+EXP(L+M)
        enddo
        do k=1,10
          N=k+L
          C(k,i)=EXP(N)*EXP(L+N)
        enddo
      enddo

      write(6,*)"A=",A
      write(6,*)"B=",B
      write(6,*)"C=",C

      stop
      end
