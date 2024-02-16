integer,target ::a(3)=[1,2,3]
integer,pointer ::p(:)
p=>a(::2)
call sub(p       )
if (any(a/=[11,2,13])) print *,102
print *,'OK'
contains
subroutine sub(b)
integer,contiguous:: b(:)
if (any(b/=[1,3])) print *,101
b=b+10
end subroutine
end
