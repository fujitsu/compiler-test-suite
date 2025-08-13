module mod0
 interface
  subroutine sub() bind(c)
  end subroutine
 end interface
end
module mod1
   use mod0
   use iso_c_binding,only:c_funptr,c_f_procpointer
contains
  subroutine foo(p) bind(c)
   type (c_funptr):: p
   procedure(sub),pointer::fp
   call c_f_procpointer(p,fp)
   call fp
  end subroutine
end
use mod1
use iso_c_binding,only:c_funptr,c_funloc
type (c_funptr):: cp
cp= c_funloc( sub )
call foo(cp)
print *,'pass'
end
  subroutine sub() bind(c)
    write(39,*)'called sub'
  end subroutine
