  real(8),dimension(1:25,1:35) :: a
  call sub(a,30,20)
end
subroutine sub(a,n,m)
  logical answer,ans
  real(8),dimension(1:25,1:35) :: a
  real(8),dimension(1:25,1:35) :: v1
  ans = .true.
do i = 1,35
  do j = 1,25
    a(j,i) = 2.0 + i
  enddo
enddo
do i = 1,n
  do j = 1,m
    do k = 1,30
      do l = 1,20
        v1(l:l+5,k:k+5) = a(l:l+5,k:k+5)
      enddo
    enddo
    if (answer(v1(j,i),a(j,i), i) .eqv. .false.) then
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
