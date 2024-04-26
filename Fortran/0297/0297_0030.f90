subroutine init_integral_array(a,n)
integer(8),dimension(1:n) :: a
a = 1
end subroutine  
subroutine init_logical_array(a,n)
logical(8),dimension(1:n) :: a
a = .true.
end subroutine  

program main
integer,parameter :: n=100
integer(8),dimension(1:n) :: ia,ib
logical(8),dimension(1:n) :: la,lb
integer(8),parameter :: ians = 2
equivalence(ia,ib)
equivalence(la,lb)

call init_integral_array(ia,n)
call init_integral_array(ib,n)
call init_logical_array(la,n)
call init_logical_array(lb,n)
do i=1,n-1
  ia(i) = ia(i) + ib(i+1)
enddo
do i=1,n-1
  la(i) = la(i) .and. lb(i+1)
enddo
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
