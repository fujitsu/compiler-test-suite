      REAL*8 A(10,10),B(10,10),C(10,10),L,M,N

      do i=1,10
        L=i**i
        do j=1,10
          A(i,j)=SIN(L+j)
        enddo
        M=j*L+A(i,j-1)
        do k=1,10
          B(i,k)=COS(M)
          N=M+B(i,k)
          C(i,k)=SIN(N)
        enddo
      enddo

      write(6,*)"A=",A
      write(6,*)"B=",B
      write(6,*)"C=",C

      stop
      end
