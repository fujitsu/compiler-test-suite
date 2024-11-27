integer*4 i
real(kind=4), dimension(100) ::a
real(kind=4), dimension(100) ::b=(/(i,i=1,100)/)
real(kind=4), dimension(100) ::c

do i=1,100
   a(i) = b(i)
   c(i) = b(i) + i
enddo

write(6,*) "a = ",a
write(6,*) "b = ",b
write(6,*) "c = ",c
end
