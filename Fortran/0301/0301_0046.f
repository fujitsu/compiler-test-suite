subroutine sub(a,b,r)
  real(8),dimension(1:8,1:8) :: a,b
  real(8),intent(in) :: r
  do j=1,8
    do i=1,8
      if (r > 0.) then
        a(i,j) = a(i,j) + b(i,j)
      else
        a(i,j) = a(i,j) - b(i,j)
      endif
    enddo
  enddo
end subroutine

program main
  integer,parameter :: n=8
  integer,parameter :: ians=128
  real(8),dimension(1:n,1:n) :: a,b
  a = 1.
  b = 1.
  call sub(a,b,1.0_8)
  if (abs(sum(a) - ians) .le. 0.00005) then
    print *,"ok"
  else
    print *,"ng: ",int(sum(a))," != ",ians
  endif
end program
