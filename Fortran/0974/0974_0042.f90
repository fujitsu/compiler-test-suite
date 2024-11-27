integer*4 i
integer(kind=2), dimension(100) ::a
integer(kind=2), dimension(100) ::b=(/(i,i=1,100)/)

a=0

   a(2:10) = b(3:11)

write(6,*) "a = ",a
write(6,*) "b = ",b
end
