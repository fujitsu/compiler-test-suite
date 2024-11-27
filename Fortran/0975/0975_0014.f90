integer*4 i
integer(kind=2), dimension(100) ::a
integer(kind=2), dimension(100) ::b=(/(i,i=1,100)/)

a=1

   a(2:10) = 0

write(6,*) "a = ",a
write(6,*) "b = ",b
end
