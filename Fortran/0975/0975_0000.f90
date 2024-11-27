integer*4 i
integer(kind=4), dimension(100) ::a=(/(i,i=1,100)/)

write(6,*) "a(10) = ",a(10)

do i=1,100
   a(i) = 0
enddo

write(6,*) "a(10) = ",a(10)
end
