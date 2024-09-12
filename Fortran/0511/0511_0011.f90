call s1
print *,"pass"
contains
subroutine s1
type t
end type t
type tt
class(*), allocatable::iii
end type tt
type(tt) :: ttt
type(t) :: obj_t
obj_t = t()
allocate(ttt%iii,source=1)
select type(zzz=>ttt%iii)
type is(t)
 zzz = obj_t
type is(real)
 zzz = 10.5
type is(integer)
 zzz = 11
type is(character(*))
 zzz = "AA"
type is(logical)
 zzz = .FALSE.
type is(complex)
 zzz = CMPLX(1.0,2.0)
end select
end subroutine s1
end
