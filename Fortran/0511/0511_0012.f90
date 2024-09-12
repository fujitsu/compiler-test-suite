call s1
print *,'pass'
contains
subroutine s1
type t
end type t
type tt
class(*), allocatable::iii,jjj
end type tt
type(tt) :: ttt
allocate(ttt%iii,source=1.0)
allocate(ttt%jjj,mold="12345")
select type(zzz=>ttt%iii)
type is(real)
 zzz = 10.1
select type(zzz=>ttt%jjj)
type is(character(*))
 zzz = "abcde"
end select
class is(t)
 ttt%jjj = ttt%iii
end select
end subroutine s1
end
