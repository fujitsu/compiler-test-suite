module mod
  type, abstract::t1
   contains
    procedure(abs_proc),deferred:: d_proc
  end type
  abstract interface
    subroutine abs_proc(this, a,k)
      import
      class(t1)  :: this
      real(kind=8) :: a(k     , *)
    end subroutine
  end interface
end
module mod2
  use mod
  type, extends(t1) :: t2
   contains
     procedure :: d_proc
  end type t2
  contains
    subroutine d_proc(this, a,k)
      class(t2)  :: this
      real(kind=8) :: a(k     , *)
    end subroutine
 end
print *,'sngg294m : pass'
end
