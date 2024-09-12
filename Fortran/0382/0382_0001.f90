module mod
contains
subroutine t1(fp)
  interface
   function fp() result(r)
     character(2),pointer::r
   end function
  end interface
 procedure(fp),pointer::f1
 if (fp()/='xy')print *,'error-01'
f1=>fp
 if (f1()/='xy')print *,'error-02'
end subroutine

   function fp() result(r)
     integer::r
     r=1
   end function
end
use mod

interface
   function ff() result(r)
     character(2),pointer::r
   end function
end interface
call t1(ff)
print *,'pass'
end
   function ff() result(r)
     character(2),pointer::r
     allocate(r)
     r='xy'
   end function
