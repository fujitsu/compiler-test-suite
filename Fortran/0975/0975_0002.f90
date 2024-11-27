integer*4 i
real(kind=4), dimension(100) ::a=(/(i,i=1,100)/)

write(6,*) "a(30) = ",a(30)

do i=1,100
   a(i) = 0
enddo

write(6,*) "a(30) = ",a(30)
end
