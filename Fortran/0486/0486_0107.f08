subroutine s1
interface 
 subroutine sub(k)
 end
end interface
type x
  integer  :: x
  procedure(sub),nopass,pointer:: p=>null()
end type
type(x):: v
  procedure(sub),pointer:: p=>null()
if (associated(v%p)) print *,201
if (associated(p)) print *,202
end
call s1
print *,'pass'
end
subroutine sub(k)
k=k+1
end
