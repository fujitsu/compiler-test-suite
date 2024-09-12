subroutine s1
use iso_c_binding,only:c_ptr,c_loc,c_associated
type x1
 integer:: a(-3:-2,-1:0,0:1)=1
end type
type x2
  integer a
  type(x1):: b
end type
type (x2),pointer:: a,z
type (c_ptr):: cp
 allocate(a,stat=k)
associate(p=>a)
 z=>p
 if (k/=0) print *,101
 if (any(lbound(p%b%a)/=[-3,-1,0])) print *,102
 if (any(p%b%a/=1)) print *,103
 if (any(lbound(z%b%a)/=[-3,-1,0])) print *,104
 if (any(z%b%a/=1)) print *,105
end associate
 if (any(lbound(a%b%a)/=[-3,-1,0])) print *,106
 if (any(a%b%a/=1)) print *,107
!
associate(p=>a)
  cp= c_loc(p%b%a)
  if (c_associated(cp , c_loc(a%b%a)))then
  else
    print *,101
  endif
end associate
deallocate (a)

 allocate(a,stat=k)
associate(q=>a)
associate(p=>a%b%a)
 z=>q
 if (k/=0) print *,201
 if (any(lbound(p)/=[-3,-1,0])) print *,202
 if (any(p/=1)) print *,203
 if (any(lbound(p)/=[-3,-1,0])) print *,204
 if (any(z%b%a/=1)) print *,205
end associate
end associate
 if (any(lbound(a%b%a)/=[-3,-1,0])) print *,206
 if (any(a%b%a/=1)) print *,107
!
associate(p=>a%b%a)
  cp= c_loc(a%b%a)
  if (c_associated(cp , c_loc(a%b%a)))then
  else
    print *,301
  endif
end associate
end
call s1
print *,'pass'
end
