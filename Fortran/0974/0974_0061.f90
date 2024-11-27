integer*4 i

allocatable :: a(:) , b(:)
allocate (a(100) , b(100))

do i=1,100
  a(i) = i
enddo

   a(1:10) = a(3:12)

write(6,*) "a = ",a

deallocate (a,b)
end
