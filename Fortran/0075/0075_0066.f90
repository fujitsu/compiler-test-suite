integer ::a(3)=[1,2,3]
call sub(a(1:3:2))
if (any(a/=[11,2,13])) print *,102
print *,'OK'
contains
subroutine sub(b)
integer,contiguous:: b(:)
if (any(b/=[1,3])) print *,101
b=b+10
end subroutine
end
