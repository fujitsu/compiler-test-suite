subroutine s1
  type x
    integer(8)::a1=-1
    integer,pointer    ::a2=>null()
    integer(8)::a3=-1
    integer(8)::d     
    integer,pointer    ::a4(:)=>null()
    integer(8)::a5=-1
    integer(8)::a6=-1
end type
type (x),pointer    ::v,vv(:)
allocate(v)
if (v%a1/=-1)print *,101
if (associated(v%a2))print *,102
if (v%a3/=-1)print *,103
if (associated(v%a4))print *,104
if (v%a5/=-1)print *,105
if (v%a6/=-1)print *,106
!
allocate(vv(2))
if (any(vv%a1/=-1))print *,1101
if (associated(vv(2)%a2))print *,1102
if (any(vv%a3/=-1))print *,1103
if (associated(vv(2)%a4))print *,1104
if (any(vv%a5/=-1))print *,1105
if (any(vv%a6/=-1))print *,1106
end
call s1
print *,'pass'
end
