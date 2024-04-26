subroutine foo(ia, ib, la, lb, n)
integer(8),dimension(:),pointer :: ia,ib
logical(8),dimension(:),pointer :: la,lb
do i=1,n-1
  ia(i) = ia(i) + ib(i+1)
enddo
do i=1,n-1
  la(i) = la(i) .and. lb(i+1)
enddo
end subroutine

program main
integer,parameter :: n=100
integer(8),dimension(1:n),target :: ia,ib
logical(8),dimension(1:n),target :: la,lb
integer(8),dimension(:),pointer :: pia, pib
logical(8),dimension(:),pointer :: pla, plb
integer(8),parameter :: ians = 2
interface
   subroutine foo(ia, ib, la, lb, n)
     integer(8),dimension(:),pointer :: ia,ib
     logical(8),dimension(:),pointer :: la,lb
     integer n
   end subroutine foo
end interface

ia = 1
ib = 1
la = .true.
lb = .true.
pia => ia
pib => ib
pla => la
plb => lb
call foo(pia,pib,pla,plb,n)
if (pia(n-1) .eq. ians) then
  print *,"ok"
else
  print *,"ng: ", ia(n-1)
endif
if (pla(n-1)) then
  print *,"ok"
else
  print *,"ng"
endif
end program
