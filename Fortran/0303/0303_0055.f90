      REAL*8 A(10),B(10),C(10),L,M,N
      do i=1,10
        do j=1,10
          L=j
          A(j)=EXP(L)
        enddo

        do k=1,10
          M=k+2
          B(k)=EXP(M)
          N=M-1
          C(k)=(EXP(N+M)+EXP(M+N))
        enddo
      enddo
      write(6,*)"A="
      write(6,9) sum(A)
      write(6,*)"B="
      write(6,9) sum(B)
      write(6,*)"C="
      write(6,9) sum(C)
  9   format(f20.5)
      stop
      end
