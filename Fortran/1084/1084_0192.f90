 type ty
  class(*),pointer :: cptr(:)
  class(*),pointer :: cptr2(:)
 end type
 type ty2
   integer::c=1
 end type
 type,extends(ty2)::ty3
   integer::d=1
 end type

 type(ty) :: obj1,obj2,obj3
 character(len=3)::kk ="AAA"
 integer::ll=1
 allocate(obj1%cptr(2),source=kk)
 allocate(ty3::obj2%cptr(2))
 allocate(obj3%cptr(2),source=ll)

 select type(asc1=>obj3%cptr)
   type is(integer)
        asc1(1)=1
        asc1(2)=2
   select type(asc2=>obj2%cptr)
    class default
        print*,"101"
    class is(ty2)
     select type(asc4=>asc2)
       type is(ty3)
       select type(asc=>obj1%cptr)
         type is(integer)
           print*,"901"
         type is (real)
           print*,"902"
         type is(character(len=*))
           asc(asc1(1))= "BB"
           asc(asc2(1)%c+1)= "cc"
           if(asc(asc1(1)).ne."BB")print*,"101" !,asc(asc1(1))(asc1(1):asc1(2))
           if(ANY(asc(asc1(asc2(1)%c):asc1(2)).ne.["BB","cc"]))print*,"102"
       end select
        if(asc2(1)%c.ne.1)print*,"101"
     end select
   end select
      if(asc1(1).ne.1)print*,"101"
 end select
 print*,"PASS"
 end
