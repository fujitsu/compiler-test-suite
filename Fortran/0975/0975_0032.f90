integer*4 i
real(kind=8), dimension(100) ::a
real(kind=8), dimension(100) ::b=(/(i,i=1,100)/)

do i=1,99
   a(i+1) = b(i) + i
   a(i) = 0
enddo

write(6,*) "a(1) = ",a(1)
write(6,*) "b(1 = ",b(1)
end
