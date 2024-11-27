integer*4 i
real(kind=4), dimension(100) ::a
real(kind=4), dimension(100) ::b=(/(i,i=1,100)/)
real(kind=4), dimension(100) ::c

do i=1,100
   a(i) = b(i)
   c(i) = b(i) + i
enddo

write(6,*) "a(100) = ",a(100)
write(6,*) "b(100) = ",b(100)
write(6,*) "c(100) = ",c(100)
end
