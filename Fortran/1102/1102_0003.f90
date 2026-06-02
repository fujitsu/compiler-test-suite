module elpa_api
  type, abstract::t1
    integer::r
   contains
    procedure(abs_proc),deferred:: d_proc
  end type
  abstract interface
    subroutine abs_proc(this, a)
      import
      class(t1)  :: this
      real(kind=8) :: a(this%r, *)
    end subroutine
  end interface
end
module elpa_impl
  use elpa_api
  type, extends(t1) :: t2
   contains
     procedure :: d_proc
  end type t2
  contains
    subroutine d_proc(this, a)
      class(t2)  :: this
      real(kind=8) :: a(this%r, *)
    end subroutine
 end
print *,'sngg166o : pass'
end
