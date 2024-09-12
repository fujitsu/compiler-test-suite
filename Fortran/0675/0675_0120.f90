      real*8 A,B,C(10),D(10,10),m(10)

      equivalence (m(1), A)
      equivalence (m(10), B)

      do i=1, 10
        m(i)=i
      enddo

      print *,A
      print *,B

      do j=1,10
        A=A+3
        C(j)=EXP(A-j*2)
        do k=1,10
          B=k/C(j)
          D(k,j)=EXP(B)
        enddo
      enddo

      write(6,*) "A = ",A
      write(6,*) "B = ",B
      write(6,*) "D = ",C
      write(6,*) "C = ",D
      write(6,*) "m = ",m

      stop
      end
