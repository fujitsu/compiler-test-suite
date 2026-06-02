  real(8),dimension(1:1000) :: a
  call sub(a,96)
end
subroutine sub(a,n)
  logical answer,ans
  real(8),dimension(1:1000) :: a
  real(8),dimension(1:5) :: v1
  ans = .true.
do i = 1,1000
  a(i) = 2.0 + i
enddo
do i = 1,n
  v1 = a(i:i+4)
  if (answer(v1,a(i), i) .eqv. .false.) then
    ans = .false.
    continue;
  endif
enddo
  if (ans .eqv. .false.) then
    write(6,*) "NG"
  else
    write(6,*) "OK"
  endif
end subroutine

logical function answer(v1, a, n)
  real(8) a
  real(8),dimension(1:5) :: v1
  answer = 0
  if (a .ne. 2.0 +n) then
      answer = .false.
  else
      answer = .true.
  endif
end function
