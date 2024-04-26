program main
   type point
     integer :: i
   end type
   type(point),pointer ::tar (:)
   integer,pointer :: i(:)
   allocate(integer :: i(10))
   allocate(point :: tar(10))
   print *,'pass'
   end

