module m1
character(2),target::ta(2)=(/'12','34'/)
contains 
  function f()
    character(:),pointer::f(:)
    f=>ta
  end function
subroutine s1(p)
procedure(f),pointer,optional::p
call s(p,1)
call s(null(p),2)
call s(        k=3)
end subroutine
subroutine s(p,k)
procedure(f),pointer,optional::p
select case (k)
case(1)
p=>f
if (.not.present(p))print *,'error-01'
if (.not.associated(p))print *,'error-02'
if (len(p())/=2)print *,'error-3'
if (any(p()/=ta))print *,'error-4'
case(2)
if (.not.present(p))print *,'error-11'
if (associated(p))print *,'error-12'
case(3)
if (present(p))print *,'error-13'
end select
end subroutine
end
use m1
procedure(f),pointer::p
call s1(p)
print *,'pass'
end
