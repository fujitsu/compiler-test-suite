program main
integer,dimension(1:50,1:50) :: a
do i=1,50
  do j=1,50
    a(i,j) = i+j
  enddo
enddo
print *,a(40,40)
end program
