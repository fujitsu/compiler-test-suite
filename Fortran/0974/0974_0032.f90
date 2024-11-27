integer*4 i
integer(kind=8), dimension(100) ::a
integer(kind=8), dimension(100) ::b=(/(i,i=1,100)/)

do i=1,100
   a(i) = b(i)
enddo

write(6,*) "a(50) = ",a(50)
write(6,*) "b(50) = ",b(50)
end
