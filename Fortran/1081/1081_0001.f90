module elpa_api
  use iso_c_binding
  type timer_t
    integer(8)::x1
  end type
  type, abstract::elpa_t
    integer::r,na
   contains
    procedure(d_i_proc),deferred,public:: d_proc
  end type
  abstract interface
    subroutine d_i_proc(this, a, ev, q)
      import
      class(elpa_t)  :: this
      real(kind=8) :: a(this%r, *), q(this%r, *)
      real(kind=8) :: ev(this%na)
      integer             :: error
    end subroutine
  end interface
end
module elpa_impl
  use elpa_api
  use iso_c_binding
  type, abstract, extends(elpa_t) :: elpa_abstract_impl_t
    type(timer_t) :: timer
    type(timer_t) :: autotune_timer
  end type
  type, extends(elpa_abstract_impl_t) :: elpa_impl_t
   contains
     procedure, public :: d_proc
  end type elpa_impl_t
  contains
    subroutine d_proc(this, a, ev, q)
      class(elpa_impl_t)  :: this
      real(kind=8) :: a(this%r, *), q(this%r, *)
      real(kind=8) :: ev(this%na)
    end subroutine
 end
print *,'sngg290m : pass'
end
