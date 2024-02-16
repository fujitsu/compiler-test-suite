program main
integer,dimension(1:9,1:9) :: a
do i=1,9
  do j=1,9
    a(i,j) = i+j
  enddo
enddo
print *,a(1,1)
end program
