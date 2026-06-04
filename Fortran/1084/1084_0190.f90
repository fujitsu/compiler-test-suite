 type ty
  class(*),allocatable :: cptr(:)
  class(*),allocatable :: cptr2(:)
 end type

 type(ty) :: obj1,obj2,obj3
 character(len=3)::kk ="AAA"
 character(len=3)::jj = "BBB"
 integer::ll=1
 allocate(obj1%cptr(2),source=kk)
 allocate(obj2%cptr(2),source=jj)
 allocate(obj3%cptr(2),source=ll)

 select type(asc1=>obj3%cptr)
   type is(integer)
        asc1(1)=1
        asc1(2)=2
 select type(asc=>obj1%cptr)
   type is(integer)
      print*,"901"
   type is (real)
     print*,"902"
   type is(character(len=*))
     asc(asc1(1))= "BB"
     asc(asc1(2))= "cc"
      if(asc(asc1(1)).ne."BB")print*,"101" !,asc(asc1(1))(asc1(1):asc1(2))
      if(ANY(asc(asc1(1):asc1(2)).ne.["BB","cc"]))print*,"102"
 end select
 end select
 print*,"PASS"
 end
