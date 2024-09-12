      REAL*8 A(100),B(100),C(100),L(100),M(100),N(100)

      do i=1,100
        do j=1,100
          L(j)=i*j
          A(j)=SIN(L(j))
        enddo
        do k=1,100
          M(k)=i*k
          B(k)=COS(M(k))*SIN(M(k))
          N(k)=B(k)+M(k)
          C(k)=COS(N(k))
        enddo
      enddo

      write(6,*)"A=",A
      write(6,*)"B=",B
      write(6,*)"C=",C

      stop
      end
