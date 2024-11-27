integer*4 i
integer(kind=2), dimension(100) ::a=(/(i,i=2,101)/)
integer(kind=2), dimension(100) ::b=(/(i,i=1,100)/)

do i=1,100
   b(i) = a(i)
   a(i) = 0
enddo

write(6,*) "a = ",a
write(6,*) "b = ",b
end
