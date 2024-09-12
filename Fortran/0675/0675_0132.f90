      REAL*8 A(10),B(10),C(10),L,M,N
      do i=1,10
        do j=1,10
          L=i*j
          A(j)=LOG(L)
        enddo
        do k=1,10
          M=i+k
          B(k)=EXP(M)
          N=M-1
          C(k)=DABS(SIN(N+M))**COS(M*N)
        enddo
      enddo
      write(6,*)"A=",A
      write(6,*)"B=",B
      write(6,*)"C=",C
      end
