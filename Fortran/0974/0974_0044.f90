integer*4 i

allocatable :: a(:) , b(:)
allocate (a(100) , b(100))

do i=1,100
  b(i) = i
enddo

do i=1,100
   a(i) = b(i)
enddo

write(6,*) "a = ",a
write(6,*) "b = ",b

deallocate (a,b)
end
