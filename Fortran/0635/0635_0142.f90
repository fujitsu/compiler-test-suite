  real(8),dimension(1:10) :: a
  call sub(a,10)
end
subroutine sub(a,n)
  real(8),dimension(1:10) :: a
  real(8),dimension(1:10) :: v1
do i = 1,10
  a(i) = 2.0 + i
enddo
do i = 1,n
  do j=1,10
    v1(j) = a(i)
  enddo
  call foo(v1(i),a(i), i)
enddo
end subroutine

subroutine foo(v1, a, n)
  real(8) a
  real(8) v1
  integer answer
  integer i
  answer = 0
  if (a .eq. 2.0 +n) then
     answer = 1
  endif
  if (answer .eq. 1) then
     write(6,*) "OK"
  endif
end subroutine
