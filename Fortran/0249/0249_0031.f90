character,allocatable :: ii
integer,allocatable :: jj(:)
integer,allocatable :: kk(:)
character,allocatable :: ll
call sub(NULL(ii),NULL(jj),NULL(kk),NULL(ll))
contains
subroutine sub(d1,d2,d3,d4)
character,optional :: d1(2)
integer,optional :: d2(2)
integer,optional :: d3(*)
character,optional :: d4(*)
if(present(d1).OR. present(d2) .OR. present(d3) .OR. present(d4)) then
print*,101
else
print*,'pass'
endif
end subroutine
end

