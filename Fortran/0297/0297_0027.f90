subroutine foo(ia, ib, la, lb, n)
integer(8),dimension(1:n) :: ia,ib
logical(8),dimension(1:n) :: la,lb
do i=1,n-1
  ia(i) = ia(i) + ib(i+1)
enddo
do i=1,n-1
  la(i) = la(i) .and. lb(i+1)
enddo
end subroutine

program main
integer,parameter :: n=100
integer(8),dimension(1:n) :: ia,ib
logical(8),dimension(1:n) :: la,lb
integer(8),parameter :: ians = 2

ia = 1
ib = 1
la = .true.
lb = .true.
call foo(ia,ib,la,lb,n)
if (ia(n-1) .eq. ians) then
  print *,"ok"
else
  print *,"ng: ", ia(n-1)
endif
if (la(n-1)) then
  print *,"ok"
else
  print *,"ng"
endif
end program
