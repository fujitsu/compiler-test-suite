integer, parameter :: i = 2
character(len = i) :: d
integer            :: e(i), f(i)
d = 's1'
call s1(i, d, e, f)
print *,'pass'
contains
 subroutine s1(i, d, e, f)
  integer              :: a(i)
  integer, allocatable :: b(:)
  integer, pointer     :: c(:)
  character(len = i)   :: d
  integer              :: e(i)
  integer              :: f(:)
  namelist /nam/a, b, c, d, e, f
  allocate(b(i))
  allocate(c(i))
  if (size(a).ne.i   ) print *,'a'
  if (size(b).ne.i   ) print *,'b'
  if (size(c).ne.i   ) print *,'c'
  if (d      .ne.'s1') print *,'d'
  if (size(e).ne.i   ) print *,'e'
  if (size(f).ne.i   ) print *,'f'
 end subroutine
end
