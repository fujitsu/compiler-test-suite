module mm
  integer,dimension(1),save::a
end module

  subroutine sub 
  use mm
   a(:)=-1
   if (a(1)/=-1)print *,'a->',a
   return
  entry      ent
   if (any(a(:)/=-1)) print *,'ERROR',a
  end subroutine

   call sub
   call ent
   print *,'pass'
end
