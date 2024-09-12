module m
  type ty
     integer::x
      contains 
      final::f1
  end type
 contains
  subroutine f1(e)
   type(ty)::e(2)
    write(1,*)"PASS",e
  end subroutine
end module m
subroutine s
 use m
   type(ty)::v1(2)
v1%x=[11,12]
v1=[ v1(1), v1(2)]
end
call s
    print *,"pass"
end
