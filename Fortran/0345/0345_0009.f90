 use m
   call sub
   call ent
   print *,'pass'
end

module m
  contains
  subroutine sub 
   integer,dimension(:),allocatable,save :: a
   allocate (a(1))
   a(:)=-1
   if (a(1)/=-1) print *,'a->',a
   return
  entry      ent
   if (any(a(:)/=-1)) print *,'ERROR',a
   deallocate (a)
  end subroutine
end module
