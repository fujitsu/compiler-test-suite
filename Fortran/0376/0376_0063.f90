module mod
contains
subroutine t1(f2)
 procedure(fp)        ::f2
end subroutine

   function fp()
     character(2),pointer::fp
     allocate(fp)
     fp='xy'
   end function
end
use mod

print *,'pass'
end
