subroutine s1
  type x
    integer,pointer    ::a2=>null()
end type
type (x),pointer    ::v,vv(:)
allocate(v)
if (associated(v%a2))print *,102
!
allocate(vv(2))
if (associated(vv(2)%a2))print *,1102
end
call s1
print *,'pass'
end

