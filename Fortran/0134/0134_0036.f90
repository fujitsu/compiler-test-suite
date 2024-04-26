subroutine s
integer,pointer::p
integer,target ::t=1
interface
subroutine s1(p,k)
integer,pointer::p
end subroutine
end interface
p=>t
call s1(p,1)
call s1(null(),0)
call s1(null(p),0)
end
call s
print *,'pass'
end
subroutine s1(p,k)
integer,pointer::p
if (k==1) then 
 if (.not.associated(p))print *,101,associated(p)
else
 if (associated(p))print *,102,associated(p)
endif
end

