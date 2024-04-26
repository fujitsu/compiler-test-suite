subroutine sub(a1,a2,a3,n)
real(8),dimension(1:n) :: a1,a2,a3
do i=1,n
  a1(i) = 0.0_8
  a2(i) = 0.0_8
  a3(i) = 0.0_8
enddo
end subroutine

program main
integer,parameter :: n=1000000
real(8),dimension(1:n) :: a1,a2,a3
logical :: x
call sub(a1,a2,a3,n)
x = .false.
do i=1,n
  if ((a1(i) .ne. a2(i)) .or. (a1(i) .ne. a3(i))) then
    x = .true.
  endif
enddo
if (x) then
  print *,"ng"
else
  print *,"ok"
endif
end program
