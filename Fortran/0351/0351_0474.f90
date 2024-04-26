subroutine test(a,b,n1)
  real(kind=8), dimension(n1) :: a,b

  do i=1,n1
     a(i) = 2._8/sqrt(b(i))
  enddo
  if (sum(a) .eq. 10.0) then
    write(6,*) "OK"
  else
    write(6,*) "NG"
  endif
end subroutine test


  real(kind=8), dimension(10) :: a,b
  integer*4 n1
  n1 = 10
  do i = 1,10
    a(i)  = i+1
    b(i)  = 4
  enddo
  call test(a,b,n1)
end
