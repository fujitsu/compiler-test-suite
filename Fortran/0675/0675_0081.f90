      REAL*8 A(10),B(10),C(10),L(10),M(10),N(10)

      do i=1,10
        do j=1,10
          L(j)=i*j
          A(j)=EXP(L(j))
        enddo
        do k=1,10
          M(k)=i*k
          B(k)=EXP(M(k))*EXP(M(k))
          N(k)=M(k)*2
          C(k)=EXP(N(k))
        enddo
      enddo

      write(6,*)"A=",A
      write(6,*)"B=",B
      write(6,*)"C=",C

      stop
      end
