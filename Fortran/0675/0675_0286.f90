      REAL*8 C(10,10),L,N
      L=3
      C=7
      i=2
        do k=1,10
          N=k+L
          C(k,i)=EXP(N)**LOG(L+N)
        enddo
      write(6,*)"C="
      write(6,9) sum(C)
9     format(e30.13)
      stop
      end
