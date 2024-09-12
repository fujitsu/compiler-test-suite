      REAL*8 A(10,10),B(10,10),C(10,10),L,M,N
      do i=1,10
        L=i**2
        do j=1,10
          A(i,j)=LOG(L+j)
        enddo
        M=L-1
        do k=1,10
          B(i,k)=SIN(M)
          N=M+k
          C(i,k)=COS(N)+B(i,k)
        enddo
      enddo
      write(6,*)"A=",A
      write(6,*)"B=",B
      write(6,*)"C=",C
      stop
      end
