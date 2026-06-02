subroutine xx(sub)
interface
 subroutine sub(i)
  integer i
 end subroutine
end interface

procedure (sub), pointer :: p

p=>sub
call p(k)
if (k/=1)print *,'fail'
end
external subx
call xx(subx)

print *,'pass'
end

subroutine subx(i)
 integer i
 i=1
end subroutine

