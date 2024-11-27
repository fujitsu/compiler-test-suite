integer*4 i
integer(kind=4), dimension(100) ::a

j=1
do i=1,100
   a(j) = 0
   j=j+1
enddo

write(6,*) "a = ",a
end
