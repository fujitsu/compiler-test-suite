module m1
procedure(f),pointer::p
real,target::z=-.1
contains
function fd(dp)
real,pointer,intent(in)::dp
if (.not.associated(dp)) print *,301
fd=dp
end function
function fp(dp)
procedure(f),pointer,intent(in)::dp
if (.not.associated(dp)) print *,401
fp=dp(0.1)
if (abs(fp-cosh(0.1))> 0.0001) print *,402
end function
subroutine ss(pp)
procedure(f),pointer,intent(in)::pp
 if (abs(pp(0.1)-1.00500417)>0.000001) print *,202,pp(.1)
end subroutine
subroutine tt(pp)
procedure(tanh),pointer::pp
 if (abs(pp(0.1)-1.00500417)>0.000001) print *,203,pp(.1)
end subroutine
subroutine ww(pp)
procedure(tanh)::pp
 if (abs(pp(0.1)-1.00500417)>0.000001) print *,204,pp(.1)
end subroutine
  function f(d)
    real,intent(in)::d
    f=cosh(d)
  end function
end
 subroutine s1
 use m1
 intrinsic cosh
call ss(f   )
call ss(cosh)
 end
 call s1
 print *,'pass'
 end
