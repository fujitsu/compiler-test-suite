integer::a,b
print*,fun(a,b)
call sub(a,b)

contains
impure  elemental  function fun(aa,bb)
    integer,value::aa
    integer::bb
   intent(in) aa
    value::bb
   integer::fun
  end function

impure elemental subroutine sub(aa,bb)
  integer::aa,bb
   intent(in)  aa
   intent(inout) bb
   value  aa

  end subroutine

end
