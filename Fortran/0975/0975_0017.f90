integer*4 i

allocatable :: a(:) , b(:)
allocate (a(100) , b(100))

do i=1,100
  b(i) = 0
enddo

do i=1,30
  b(i) = 1
enddo

 a = b

write(6,*) "a = ",a
write(6,*) "b = ",b

deallocate (a,b)
end
