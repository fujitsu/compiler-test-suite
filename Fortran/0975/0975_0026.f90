integer*4 i

allocatable :: a(:) , b(:)
allocate (a(100) , b(100))

do i=1,100
  a(i) = i
  b(i) = i+i
enddo

   a(1:10) = 0
   b(3:12) = 0

write(6,*) "a(10) = ",a(10)
write(6,*) "b(10) = ",b(10)

deallocate (a,b)
end
