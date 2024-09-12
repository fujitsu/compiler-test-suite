          real, allocatable :: ii(:)
            allocate(ii, source = real(reshape([(i,i=1,5)],[5])))
         if(.not.allocated(ii)) print *,'err'
   deallocate(ii)
            allocate(ii, mold = real(reshape([(i,i=1,5)],[5])))
         print *,'pass'
         end program
