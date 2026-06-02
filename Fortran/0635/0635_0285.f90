  real(8),dimension(1:900) :: a
  call sub(a,800)
end
subroutine sub(a,n)
  logical answer,ans
  real(8),dimension(1:900) :: a
  real(8),dimension(1:900) :: v1
  ans = .true.
do i = 1,900
  a(i) = 2.0 + i
enddo
do i = 1,n
  do j = 1,800
    v1(j:j+100) = a(i:i+100)
  enddo
  if (answer(v1(i),a(i), i) .eqv. .false.) then
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
  real(8) v1
  answer = 0
  if (a .ne. 2.0 +n) then
      answer = .false.
  else
      answer = .true.
  endif
end function
