program main
integer,dimension(1:1,1:1) :: a
do i=1,1
  do j=1,1
    a(i,j) = i+j
  enddo
enddo
print *,a(1,1)
end program
