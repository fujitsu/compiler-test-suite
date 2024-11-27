integer*4 i
integer(kind=4), dimension(50,50) ::a
integer(kind=4), dimension(50,50) ::b
integer(kind=4), dimension(50) ::c


do j=1,50
  do i=1,50
    b(i,j) = i*j
  enddo
enddo

write(6,*) "b = ",b

do i=1,50
  c(i) = j+i
  do j=1,50
    a(i,j) = 0
  enddo
enddo

write(6,*) "a = ",a
write(6,*) "b = ",b
write(6,*) "c = ",c
end
