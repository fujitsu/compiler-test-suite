   real, allocatable :: a(:,:),aa(:,:)
   real                 b(0,2),bb(2,2)
   write(9,*)'should be 2 0:',shape(b),shape(bb)
   write(9,*)'should be 0 2:',shape(matmul(b,bb))
   if (any(shape(matmul(b,bb))/=(/0,2/)))write(6,*) "NG"
   allocate (a(0,2),aa(2,2))
   write(9,*)'should be 2 0:',shape(a),shape(aa)
   write(9,*)'should be 0 2:',shape(matmul(a,aa))
   if (any(shape(matmul(a,aa))/=(/0,2/)))write(6,*) "NG"
   deallocate(a)
   print *,'pass'
   end
