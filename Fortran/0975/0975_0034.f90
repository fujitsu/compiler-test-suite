integer*4 i
integer(kind=4), dimension(100) ::a
integer(kind=4), dimension(100) ::c=(/(i,i=3,102)/)

do i=2,100
   a(i-1) = c(i) + i
   a(i) = 0
enddo

write(6,*) "a = ",a
write(6,*) "c = ",c
end
