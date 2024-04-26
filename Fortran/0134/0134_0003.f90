subroutine sub(f)
character (1) :: f
character (1) :: c
external f
call s(f)
end
character x
external x
call sub(x)
print *,'pass'
end
function x()
character (*) :: x
x='1'
end
subroutine s(f)
character f
if (f()/='1')print *,1001
end
