subroutine sub(a,b,c,d,n)
  real a(n), b(n), c(n), d(n)
  !ocl noilfunc
  !OCL LOOP_PART_SIMD
  DO I=2,N
     A(I) = A(I) - B(I) + LOG(C(I))
     D(I) = D(I-1) + A(I)
  ENDDO
end subroutine sub

program main
  integer, parameter::n = 100
  real a(n), b(n), c(n), d(n)
  do i=1,n
     a(i)= i
     b(i)= i
     c(i)= i
     d(i)= i
  end do
  call sub(a,b,c,d,n)
  !ocl noilfunc
  do i=2,n
     if (abs(a(i) - log(c(i))) > 0.00002) then
        print *,'NG1'
        stop
     endif
     if (abs(d(i) - (d(i-1) + a(i))) > 0.00002) then
        print *,'NG2'
        stop
     endif
  end do
  print *, 'PASS'

end program main
