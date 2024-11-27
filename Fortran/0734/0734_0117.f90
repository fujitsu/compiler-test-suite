module polynomials
integer, parameter :: bit=1

 type i_element
      integer, pointer :: coefficient
     logical (kind=bit), dimension (:,:), pointer :: source
 end type i_element

type i_sum
     type (i_element), pointer :: term
     type (i_sum), pointer :: tail
end type i_sum

 type monomial
    type (i_sum), pointer :: coefficient
    integer, dimension (:,:), pointer :: r_exp
end type monomial

type polynomial
integer:: i
end type polynomial

interface copy
     module procedure copy_pp, copy_mm, copy_ss, copy_ee
end interface

interface pluseq
     module procedure pluseq_pp, pluseq_pm, pluseq_ss, pluseq_se
end interface

interface xeq
     module procedure xeq_pp, xeq_pm, xeq_ss, xeq_se
end interface

interface substitute
     module procedure substitute_p, substitute_s
end interface substitute

interface reclaim
     module procedure reclaim_p, reclaim_m, reclaim_s, reclaim_e
end interface

interface compare
     module procedure compare_m, compare_e
end interface

contains

recursive function copy_pp (p) result (pptr)
     type (polynomial), intent (in) :: p
     type (polynomial), pointer :: pptr

end function copy_pp

function copy_mm (m) result (mptr)
     type (monomial), intent (in) :: m
     type (monomial), pointer :: mptr

end function copy_mm

recursive function copy_ss (s) result (sptr)
     type (i_sum), intent (in) :: s
     type (i_sum), pointer :: sptr

end function copy_ss

recursive function copy_ee (e) result (eptr)
     type (i_element), intent (in) :: e
     type (i_element), pointer :: eptr

end function copy_ee

recursive subroutine pluseq_pp (pptr, p)
     type (polynomial), intent (in) :: p
     type (polynomial), pointer :: pptr

end subroutine pluseq_pp

recursive subroutine pluseq_pm (pptr, m)
     type (monomial), intent (in) :: m
     type (polynomial), pointer :: pptr, temp_pptr

end subroutine pluseq_pm

recursive subroutine pluseq_ss (sptr, s)
     type (i_sum), intent (in) :: s
     type (i_sum), pointer :: sptr

end subroutine pluseq_ss

recursive subroutine pluseq_se (sptr, e)
     integer :: i, newcoeff
     type (i_element), intent (in) :: e
     type (i_element) :: temp_e
     type (i_sum), pointer :: sptr, temp_sptr

end subroutine pluseq_se

recursive subroutine xeq_pp (pptr, p)
     type (polynomial), intent (in) :: p
     type (polynomial), pointer :: pptr, p1, temp_pptr

end subroutine xeq_pp

recursive subroutine xeq_pm (pptr, m)
     type (monomial), intent (in) :: m
     type (polynomial), pointer :: pptr, temp_pptr

end subroutine xeq_pm

recursive subroutine xeq_ss (sptr, s)
     type (i_sum), intent (in) :: s
     type (i_sum), pointer :: sptr, s1, temp_sptr

end subroutine xeq_ss

recursive subroutine xeq_se (sptr, e)
     type (i_element), intent (in) :: e
     type (i_sum), pointer :: sptr, temp_sptr
     integer :: i, j

end subroutine xeq_se

recursive subroutine substitute_p (value, place, pptr)
     integer :: value, place
     type (polynomial), pointer :: pptr, temp_pptr

end subroutine substitute_p

recursive subroutine substitute_s (value, place, sptr)
     integer :: value, place
     type (i_sum), pointer :: sptr, temp_sptr
     type (i_element), pointer :: temp_eptr

end subroutine substitute_s

recursive subroutine reclaim_p (p)
     type (polynomial), pointer :: p

end subroutine reclaim_p

subroutine reclaim_m (m)
     type (monomial), pointer :: m

end subroutine reclaim_m

recursive subroutine reclaim_s (s)
     type (i_sum), pointer :: s

end subroutine reclaim_s

subroutine reclaim_e (e)
     type (i_element), pointer :: e
end subroutine reclaim_e

function compare_m (m1, m2)
     character :: compare_m
     integer :: i, j
     type (monomial) :: m1, m2

end function compare_m

function compare_e (new, instring)
     integer :: compare_e, index, i
     character (len = 7) :: casetype
     logical (kind = bit) :: adjustable, equal
     type (i_element) :: new, instring

end function compare_e

end module polynomials
module s_polynomials
use polynomials
contains

function compare_x (m1)
end function compare_x

end module s_polynomials
print *,'pass'
end
