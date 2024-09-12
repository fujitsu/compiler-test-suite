subroutine s1
  type y
    integer(8)::y1=-2
    integer(8)::y2=-3
    integer(8)::y3=-4
    integer(8)::y4=-5
  end type
  type x
    integer(8)::a1=-1
    type(y),pointer    ::a2=>null()
    integer(8)::a3=-1
    type(y),allocatable::a4
    integer(8)::a5=-1
    integer(8)::d     
    integer(8)::a6=-1
    integer(8)::a7=-1
end type
type (x),pointer    ::v,vv(:)
allocate(v)
if (v%a1/=-1)print *,101
if (associated(v%a2))print *,102
if (v%a3/=-1)print *,103
if (allocated(v%a4))print *,104
if (v%a5/=-1)print *,105
if (v%a6/=-1)print *,106
if (v%a7/=-1)print *,107
!
allocate(vv(2))
if (any(vv%a1/=-1))print *,1101
if (associated(vv(2)%a2))print *,1102
if (any(vv%a3/=-1))print *,1103
if (allocated(vv(2)%a4))print *,104
if (any(vv%a5/=-1))print *,1105
if (any(vv%a6/=-1))print *,1106
if (any(vv%a7/=-1))print *,1107
end
call s1
print *,'pass'
end

