integer*4 i
integer(kind=8), dimension(100) ::a
integer(kind=8), dimension(100) ::c=(/(i,i=2,101)/)

do i=1,99
   a(i) = 0
   a(i+1) = c(i) + i
enddo

write(6,*) "a = ",a
write(6,*) "c = ",c
end
