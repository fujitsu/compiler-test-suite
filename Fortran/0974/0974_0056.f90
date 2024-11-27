integer*4 i
integer(kind=2), dimension(100) ::a
integer(kind=2), dimension(100) ::b=(/(i,i=1,100)/)
integer(kind=2), dimension(100) ::c=(/(i,i=2,101)/)

equivalence (a,c)

do i=1,100
   a(i) = b(i)
enddo

write(6,*) "a = ",a
write(6,*) "b = ",b
write(6,*) "c = ",c
end
