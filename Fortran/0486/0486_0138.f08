    class(*),pointer,dimension(:)::a16
call s1(k=0)
call s1(a16,k=1)
print *,'pass'
contains
  subroutine s1(a16,k)
    class(*),pointer,dimension(:),optional::a16
if (k==0) then
if (present(a16)) print *,301
else
if (.not.present(a16)) print *,302
endif

if (present(a16)) then
    allocate(a16,source=[0])
kk=0
select type (a16)
type is (integer)
kk=1
end select
if (kk/=1) print *,201
endif
  end subroutine
end
