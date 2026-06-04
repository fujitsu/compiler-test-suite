program main
  complex c,a(16)
  do i=1,16
     a(i) = cmplx(i,-i)
  enddo

!$omp simd lastprivate(c)
  do i=1,10
     c = a(i)
  enddo
  write(6,*) c
end program main
