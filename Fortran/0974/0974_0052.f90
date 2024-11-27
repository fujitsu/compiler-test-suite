integer*4 i
real(kind=8), dimension(100) ::a
real(kind=8), dimension(100) ::b=(/(i,i=1,100)/)
real(kind=8), dimension(100) ::c

do i=1,100
   c(i) = b(i) + i
   a(i) = b(i)
enddo

write(6,*) "a = ",a
write(6,*) "b = ",b
write(6,*) "c = ",c
end
