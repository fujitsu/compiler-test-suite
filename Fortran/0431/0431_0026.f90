module m1
procedure(tanh),pointer::p
contains
subroutine ss(pp)
procedure(tanh),pointer,intent(in)::pp
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
end
 subroutine s1
 use m1
 intrinsic cosh
 p=> cosh
 if (abs(p(0.1)-1.00500417)>0.000001) print *,201,p(.1)
call ss(cosh)
 end
 call s1
 print *,'pass'
 end
