 type ty
  class(*),pointer :: cptr
 end type

 type(ty) :: obj1(2),obj2(1)
 complex::kk,jj

 allocate(obj1(2)%cptr,source=CMPLX(1.0,2.0))
 allocate(obj2(1)%cptr,source=CMPLX(-1.0,-2.0))

 select type(asc=>obj1(2)%cptr)
   type is(complex)
     asc = CMPLX(11.0,12.0)
     select type(asc2=>obj2(1)%cptr)
       type is(complex)
        asc2 = CMPLX(-11.0,-12.0)
        if(asc2 == CMPLX(-11.0,-12.0)) asc = CMPLX(21.0,22.0)
        jj = asc2
     end select

     kk = asc
 end select

 select type(asc3=>obj1(2)%cptr)
   type is(complex)
    if(asc3 /= CMPLX(21.0,22.0)) print*,101,asc3
    if(kk /= CMPLX(21.0,22.0)) print*,102,kk
 end select

 select type(asc3=>obj2(1)%cptr)
   type is(complex)
    if(asc3 /= CMPLX(-11.0,-12.0)) print*,201,asc3
    if(jj /= CMPLX(-11.0,-12.0)) print*,202,jj
 end select
 print*,"PASS"
 end
