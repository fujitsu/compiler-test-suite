integer*4 i
real(kind=4), dimension(100) ::b=(/(i,i=1,100)/)

   b(1:10) = 0

write(6,*) "b = ",b
end
