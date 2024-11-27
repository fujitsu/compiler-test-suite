integer*4 i
integer(kind=4), dimension(50,50) ::a
integer(kind=4), dimension(50,50) ::b


do j=1,50
  do i=1,50
    b(i,j) = i*j
  enddo
enddo

do j=1,50
  do i=1,50
    a(i,j) = b(i,j)
  enddo
enddo

call sub(m,n)

do j=1,50
  do i=1,50
    b(i,j) = 0
  enddo
enddo

write(6,*) "a = ",a
write(6,*) "b = ",b
end


subroutine sub(m,n)
integer m,n
m=50
n=50
end subroutine
