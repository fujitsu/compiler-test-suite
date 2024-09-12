module m
  type ty
     integer::x
      contains 
      final::f1
  end type
 contains
  subroutine f1(e)
   type(ty)::e
    write(1,*)"PASS"
  end subroutine
end module m
subroutine s
 use m
   type(ty)::v1,v2
v1=ty(1)
v2=ty(2)
  v1=v2
end
call s
    print *,"pass"
end
