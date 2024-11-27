integer*4 i
real(kind=4), dimension(100) ::a
real(kind=4), dimension(100) ::b=(/(i,i=1,100)/)

do i=1,100
   a(i) = b(i)
enddo

write(6,*) "a(10) = ",a(10)
write(6,*) "b(10) = ",b(10)
end
