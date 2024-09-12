subroutine s1
integer,pointer::p(:),pp(:)
allocate(p(1:0))
p=1
write(1,*) p
call s(p)
call ss(p)
allocate(pp(1:0))
if (associated(p,pp)) print *,201
deallocate(p,pp)
contains
subroutine s(p)
integer,optional::p(:)
if (.not.present(p)) print *,101
end subroutine
subroutine ss(p)
integer,optional::p(0)
if (.not.present(p)) print *,102
end subroutine
end
call s1
print *,'pass'
end
