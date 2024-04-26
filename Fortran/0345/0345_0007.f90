   call sub
   call ent
   print *,'pass'
end

  subroutine sub 
   integer,dimension(:),allocatable,save :: a
   allocate (a(1))
   a(:)=-1
   if (a(1)/=-1) print *,'a->',a
   return
  entry      ent
   if (any(a(:)/=-1)) print *,'ERROR',a
   deallocate (a)
end
