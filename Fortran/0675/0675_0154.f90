      REAL*8 A(100),B(100),C(100),L,M,N

      do i=1,100
        do j=1,100
          L=i**j
          A(j)=SIN(L)
        enddo
        do k=1,100
          B(k)=SIN(COS(L))
          M=L**L
          N=M+A(k)
          C(k)=A(k)*N
        enddo
      enddo

      write(6,*)"A=",A
      write(6,*)"B=",B
      write(6,*)"C=",C

      stop
      end
