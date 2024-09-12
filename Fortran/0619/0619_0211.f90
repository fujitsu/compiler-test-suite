subroutine s1
  type x
    integer(8)::a1
    complex(16),pointer    ::a2
    integer(8)::a3
    complex(16),allocatable::a4
    integer(8)::a5
    integer(8)::d     
    integer(8)::a6
    integer(8)::a7
end type
type (x),pointer    ::v,vv(:)
allocate(v)
if (allocated(v%a4))print *,104
!
allocate(vv(2))
if (allocated(vv(2)%a4))print *,104
end
call s1
print *,'pass'
end

