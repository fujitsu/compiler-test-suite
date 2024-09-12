  real(8),dimension(1:6,1:8) :: a
  call sub(a,2,4)
end
subroutine sub(a,m,n)
  real(8),dimension(1:6,1:8) :: a
  real(8),dimension(1:2,1:4) :: v1
do i = 1,8
  do j = 1,6
     a(j,i) = 2.0 + i
  enddo
enddo
v1 = 0
do i = 1,n
  do j = 1,m
    v1 = a(j:j+1,i:i+3)
    call foo(v1, a, i,j)
  enddo
enddo
end subroutine

subroutine foo(v1, a, i, j)
  real(8),dimension(1:6,1:8) :: a 
  real(8),dimension(1:2,1:4) :: v1
  integer answer
  integer i
  answer = 0
  do k = 1,i
    do l = 1,j
      if (v1(l,k) .eq. 2.0 + i) then
        answer = 1
      endif
    enddo
    if (answer .ne. 1) continue;
  enddo
  if (answer .eq. 1) then
     write(6,*) "OK"
  else
     write(6,*) "NG"
  endif
end subroutine
