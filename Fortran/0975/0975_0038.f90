integer*4 i
integer(kind=2), dimension(100) ::a=(/(i,i=1,100)/)


do i=1,100,2
   a(i) = 0
enddo

write(6,*) "a = ",a
end