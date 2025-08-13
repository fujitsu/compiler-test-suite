module mod0
 interface
  subroutine sub() bind(c)
  end subroutine
 end interface
end
module mod1
   use mod0
   use iso_c_binding,only:c_funptr,c_f_procpointer,c_funloc
contains
  subroutine foo(p) bind(c)
   type (c_funptr):: p
   procedure(sub),pointer::fp
   call c_f_procpointer(p,fp)
   call fp
  end subroutine
  subroutine sub2(pp)
   procedure(sub),pointer::pp
   type (c_funptr):: cp
   cp= c_funloc( pp )
   call foo(cp)
  end subroutine
end

use mod1
   procedure(sub),pointer::fp
fp=> sub
call sub2( fp )
print *,'pass'
end
  subroutine sub() bind(c)
    write(40,*)'called sub'
  end subroutine
