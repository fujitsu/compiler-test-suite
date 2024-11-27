integer*4 i
integer(kind=2), dimension(100) ::a=(/(i,i=1,100)/)

write(6,*) "a(20) = ",a(20)

do i=1,100
   a(i) = 0
enddo

write(6,*) "a(20) = ",a(20)
end
