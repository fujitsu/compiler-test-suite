integer*4 i
integer(kind=8), dimension(100) ::a=(/(i,i=1,100)/)

write(6,*) "a(90) = ",a(90)

do i=1,100
   a(i) = 0
enddo

write(6,*) "a(90) = ",a(90)
end