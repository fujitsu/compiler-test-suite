   real, allocatable :: a(:,:)
   real                 b(2,0)
   allocate (a(2,0))
   write(1,*)'should be 2 0:',shape(a)
   write(1,*)'should be 0 2:',shape(transpose(a))
   if (any(shape(transpose(a))/=(/0,2/)))write(6,*) "NG"
   deallocate(a)
   write(1,*)'should be 2 0:',shape(b)
   write(1,*)'should be 0 2:',shape(transpose(b))
   if (any(shape(transpose(b))/=(/0,2/)))write(6,*) "NG"
   print *,'pass'
   end
