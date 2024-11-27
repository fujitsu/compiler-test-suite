integer*4 i
integer(kind=4), dimension(100) ::a
integer(kind=4), dimension(100) ::b=(/(i,i=1,100)/)

j=1
do i=1,100
   a(i) = b(j)
   j=j+1
enddo

write(6,*) "a = ",a
write(6,*) "b = ",b
end
