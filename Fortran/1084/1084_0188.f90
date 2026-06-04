 type ty
  class(*),allocatable :: cptr(:)
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
        asc1=[1,2]
 select type(asc=>obj1%cptr)
   type is(integer)
      print*,"901"
   type is (real)
     print*,"902"
   type is(character(len=*))
     asc(asc1(1):asc1(2):asc1(1))= ["BB","cc"]
     kk = asc(asc1(1))
     if(kk.ne."BB") then 
        print*,"901"
     else if(asc(asc1(1)).ne."BB") then
     print*,"101",asc(asc1(1))
     endif
     if(ANY(asc(asc1(1):asc1(2)).ne.["BB","cc"]))print*,"102"
     asc = ["BD","CC"]
     if(asc(asc1(1)).ne."BD")print*,"101",asc(asc1(1))
     if(ANY(asc(asc1(1):asc1(2)).ne.["BD","CC"]))print*,"112"
     asc([asc1(1),asc1(2)])= ["MM","KK"]
     if(asc(asc1(1)).ne."MM")print*,"101",asc(asc1(1))
     if(ANY(asc(asc1(1):asc1(2)).ne.["MM","KK"]))print*,"122"
 end select
 end select
 print*,"PASS"
 end
