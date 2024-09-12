subroutine s1
call s( k=1)
call s(null(),k=2)
contains
subroutine s(p,k)
character(:),pointer,optional::p(:)
if (k==1) then
 if (present(p))print *,'error101'
else
 if (.not.present(p))print *,'error201'
 if (associated(p))print *,'error301'
endif
end subroutine
end
call s1
print *,'pass'
end

