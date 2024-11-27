integer*4 i
integer(kind=4), dimension(100) ::a=(/(i,i=1,100)/)
integer(kind=4), dimension(100) ::c

do i=2,100
   a(i) = 0
   c(i) = a(i-1) + i
enddo

write(6,*) "a(10) = ",a(10)
write(6,*) "c(10) = ",c(10)
end
