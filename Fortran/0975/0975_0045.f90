integer*4 i
integer(kind=4), dimension(100) ::a

do i=100,1,-1
   a(i) = 0
enddo

write(6,*) "a = ",a
end
