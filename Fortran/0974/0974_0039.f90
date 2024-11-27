integer*4 i,m
integer(kind=4), dimension(50,50) ::a
integer(kind=4), dimension(50,50) ::b


do j=1,50
  do i=1,50
    b(i,j) = i*j
  enddo
enddo

call sub(m)

do j=1,50
  do i=1,50
    a(i,j) = b(i,j)
  enddo
enddo

write(6,*) "a(25,25) = ",a(25,25)
write(6,*) "b(25,25) = ",b(25,25)
end

subroutine sub(m)
m=0
end
