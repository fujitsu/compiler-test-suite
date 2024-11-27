subroutine s1(p)
integer,pointer::p(:)
contiguous::p
p=1
end subroutine

interface
subroutine s1(p)
integer,pointer::p(:)
end subroutine
end interface


integer,pointer::p(:)
integer,target::t(3)
p=>t(::2)
call s1(p)
print *,'pass'
end
