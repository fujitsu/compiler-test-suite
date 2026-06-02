      COMPLEX*8  C8A/(0.E0,0.E0)/
      COMPLEX*8  C800A(100)

      do i=1,100
         c800a(i) = cmplx(i,-i)
      enddo

!$omp simd lastprivate(c8a)  ! lastprivateにcomplex
      DO 40 I=1,50
          C8A=C800A(I)
   40 CONTINUE
      WRITE(6,*) C8A
      END
