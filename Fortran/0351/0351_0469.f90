subroutine foo(n, iter, i, j, iodds, ind, x1, y)
  Integer :: n, iter, i, j
  Integer :: iodds(*),aa
  Real(8) :: x1(*), y(*)
  Real(8), Parameter :: c0 = 0.999_8
  aa = 0.0
  Do j = 1, iter
!$omp parallel do
     Do i = 1, n
        if(iodds(i) .gt. 0) then
           y(i) = y(i) + c0*x1(i)
        endif
     End Do
  End Do
  do i = 1,n
    aa = aa + y(i)
  enddo
  if (aa .eq. 568) then
    write(6,*) "OK"
  else
    write(6,*) "NG"
  endif
end subroutine foo


program main
  Integer :: n, iter, i, j
  Integer :: iodds(10)
  Real(8) :: x1(10),y(10)
  n = 10
  iter = 10
  i = 0
  j = 3
  Do i = 1, 10
    iodds(i) = i-j
    x1(i) = i
    y(i) = i+j
  End Do
  call foo(n, iter, i, j, iodds, ind, x1, y)
end  
