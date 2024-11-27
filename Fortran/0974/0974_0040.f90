integer*4 i
integer(kind=4), dimension(50,50) ::a
integer(kind=4), dimension(50,50) ::b
integer(kind=4), dimension(50) ::c


do j=1,50
  do i=1,50
    b(i,j) = i*j
  enddo
enddo

do j=1,50
  c(j) = j+j
  do i=1,50
    a(i,j) = b(i,j)
  enddo
enddo

write(6,*) "a(10,10) = ",a(10,10)
write(6,*) "b(10,10) = ",b(10,10)
write(6,*) "c(10) = ",c(10)
end
