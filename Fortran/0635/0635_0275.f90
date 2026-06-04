  real(8),dimension(1:10,1:10) :: a
  call sub(a,10,10)
end
subroutine sub(a,n,m)
  logical answer,ans
  real(8),dimension(1:10,1:10) :: a
  real(8),dimension(1:10,1:10) :: v1
  ans = .true.
do i = 1,10
  do j = 1,10
    a(j,i) = 2.0 + i
  enddo
enddo
do i = 1,n
  do j = 1,m
    v1 = a(j,i)
    if (answer(v1,a(j,i), i) .eqv. .false.) then
      ans = .false.
      continue;
    endif
  enddo
enddo
  if (ans .eqv. .false.) then
    write(6,*) "NG"
  else
    write(6,*) "OK"
  endif
end subroutine

logical function answer(v1, a, n)
  real(8) a
  real(8),dimension(1:10) :: v1
  answer = 0
  if (a .ne. 2.0 +n) then
      answer = .false.
  else
      answer = .true.
  endif
end function
