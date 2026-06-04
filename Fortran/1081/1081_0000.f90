module elpa_api
  use iso_c_binding
  type timer_t
    integer(8)::x1
  end type
  type, abstract::elpa_t
    integer::local_nrows,na
   contains
    procedure(elpa_eigenvectors_d_i),deferred,public:: elpa_eigenvectors_d
  end type
  abstract interface
    subroutine elpa_eigenvectors_d_i(self, a, ev, q, error)
      import
      class(elpa_t)  :: self
      !real(kind=c_double) :: a(0, *), q(0, *)
      real(kind=c_double) :: a(self%local_nrows, *), q(self%local_nrows, *)
      real(kind=c_double) :: ev(self%na)
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
    type(c_ptr)         :: index = C_NULL_PTR
    logical             :: eigenvalues_only
  end type
  type, extends(elpa_abstract_impl_t) :: elpa_impl_t
   integer :: communicators_owned
   integer :: from_legacy_api
   contains
     procedure, public :: elpa_eigenvectors_d
  end type elpa_impl_t
  contains
    subroutine elpa_eigenvectors_d(self, a, ev, q, error)
      class(elpa_impl_t)  :: self
      real(kind=c_double) :: a(self%local_nrows, *), q(self%local_nrows, *)
      real(kind=c_double) :: ev(self%na)
      integer             :: error
    end subroutine
 end
print *,'sngg289m : pass'
end
