      REAL*8 A(10,10),B(10,10),C(10,10),L,M,N
      L=3
      do i=1,10
        do j=1,10
          M=i+j+L
          A(i,j)=SIN(M)
          B(i,j)=SIN(L+M)
        enddo
        do k=1,10
          N=k+L
          C(k,i)=EXP(N)**LOG(L+N)
        enddo
      enddo
      write(6,*)"A="
      write(6,9) sum(A)
      write(6,*)"B="
      write(6,9) sum(B)
      write(6,*)"C="
      write(6,91) sum(C)
9    format(f30.10)
91   format(e30.10)
      stop
      end
