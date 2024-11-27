integer*4 i
integer(kind=4), dimension(100) ::a=(/(i,i=1,100)/)

do i=1,100
   a(i) = 0
enddo

write(6,*) "a(5) = ",a(5)
end
