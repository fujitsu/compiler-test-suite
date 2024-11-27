integer*4 i
integer(kind=2), dimension(100) ::a
integer(kind=2), dimension(100) ::b=(/(i,i=1,100)/)

do i=1,100
   a(i) = b(i)
enddo

write(6,*) "a(20) = ",a(20)
write(6,*) "b(20) = ",b(20)
end
