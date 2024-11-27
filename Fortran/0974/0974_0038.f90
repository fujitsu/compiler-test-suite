integer*4 i
integer(kind=4), dimension(100) ::a
integer(kind=4), dimension(100) ::b=(/(i,i=1,100)/)

do i=1,100
   a(i) = b(i)
enddo

write(6,*) "a(100) = ",a(100)
write(6,*) "b(100) = ",b(100)
end
