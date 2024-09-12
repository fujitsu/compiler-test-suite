module m1
integer,target:: t(3)=[1,2,3]
contains
  function f1() result(r)
  integer,pointer,contiguous:: r(:)
   r=>t(:)
  end function
  function f2() result(r)
  integer,pointer:: r(:)
   r=>t(::2)
  end function
  subroutine s1(d,n)
  integer,pointer,contiguous:: d(:)
  if (n==0) then
    if (any(d/=t)) print *,10001
  else 
    if (any(d/=t(::2))) print *,10002
  endif
  end subroutine
  subroutine s2(d,n)
  integer,pointer           :: d(:)
  if (n==0) then
    if (any(d/=t)) print *,20001
  else 
    if (any(d/=t(::2))) print *,20002
  endif
  end subroutine
end
use m1
call s1(f1(),0)
call s2(f1(),0)
call s2(f2(),1)
print *,'pass'
end
