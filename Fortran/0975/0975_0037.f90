integer*4 i
integer(kind=8), dimension(100) ::a
integer(kind=8), dimension(100) ::b=(/(i,i=1,100)/)
integer(kind=8), dimension(100) ::c

equivalence (a,b)

do i=2,100
   a(i) = 0
   c(i) = b(i)
enddo

write(6,*) "a(10) = ",a(10)
write(6,*) "b(10) = ",b(10)
write(6,*) "c(10) = ",c(10)
end
