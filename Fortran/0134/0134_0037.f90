subroutine s(p,z,n)
interface
subroutine x
end subroutine
subroutine s1(p,k)
import x
procedure(x),pointer,optional::p
end subroutine
end interface
procedure(s1),pointer,optional::p
procedure(x),pointer,optional::z
if(n==0) then
  if (present(z))print *,1001
  if(.not.associated(p))print *,101
  if(associated(z))print *,102
  call p(z,      k=2)
  return
endif
p=>s1
call p(z,1)
call p(        k=2)
end
interface
  subroutine x
  end subroutine
  subroutine s1(p,k)
    import
    procedure(x),pointer,optional::p
  end subroutine
  subroutine s(p,z,n)
  import s1,x
  procedure(s1),pointer,optional::p
  procedure(x),pointer,optional::z
  end subroutine
end interface
procedure(s1),pointer::p
procedure(x),pointer::z
z=>x
p=>null()
call s(p,z,1)
call s(p, n=0)
print *,'pass'
end
subroutine s1(p,k)
interface
  subroutine x
  end subroutine
end interface
procedure(x),pointer,optional::p
if (present(p)) then
else
if (k/=2)print *,103
return
endif
if (k==1) then 
 if (.not.associated(p))print *,101,associated(p)
endif
end

subroutine x
end subroutine
