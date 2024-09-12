module m1
interface 
  function ff(d)
    real,intent(in)::d
  end function
end interface
procedure(f),pointer::p

contains
subroutine ss(pp)
procedure(f),pointer,intent(in)::pp
 if (abs(pp(0.1)-1.00500417)>0.000001) print *,202,pp(.1)
end subroutine
  function f(d)
    real,intent(in)::d
    f=cosh(d)
  end function
end
 subroutine s1
 use m1
 intrinsic cosh
call ss(ff   )
call ss(f   )
call ss(cosh)
p=>ff
call ss(p   )
p=>f
call ss(p   )
p=>cosh
call ss(p   )
 end
 call s1
 print *,'pass'
 end

  function ff(d)
    real,intent(in)::d
    ff=cosh(d)
  end function
