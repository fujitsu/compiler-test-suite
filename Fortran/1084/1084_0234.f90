 type ty
  class(*),allocatable :: cptr(:)
 end type

 type(ty) :: obj1,obj2
 type(ty) :: obj11(2,3),obj22(2,3)
 character(len=3)::kk ="AAA"
 character(len=4)::jj = "BBB"

 allocate(obj1%cptr(2),source=kk)
 allocate(obj2%cptr(2),source=jj)
 allocate(obj11(1,2)%cptr(2),source=kk)
 allocate(obj22(2,2)%cptr(2),source=jj)

 select type(asc=>obj1%cptr)
   type is(integer)
      print*,"901"
   type is (real)
      print*,"902"
   type is(character(len=*))
     asc(1) = "BB"
     call sub(asc(1))
     select type(asc=>obj1%cptr)
       type is(integer)
         print*,"911"
       type is (real)
         print*,"912"
       type is(character(len=*))
       asc(2) = "BB"
       if(rank(asc).ne.1)print*,"401"
       if(len(asc(2)).ne.3)print*,"209"
       if(any(lbound(asc).ne.1))print*,"405"
       if(any(ubound(asc).ne.2))print*,"415"
       call sub(asc(2))
       select type(asc=>obj2%cptr)
       type is(integer)
         print*,"921"
       type is (real)
         print*,"922"
       type is(character(len=*))
       asc(2) = "XXXX"
       call sub2(asc(2))
       if(len(asc(2)).ne.4)print*,"219"
     end select
    end select
 end select

 select type(asc=>obj11(1,2)%cptr)
   type is(integer)
      print*,"901"
   type is (real)
      print*,"902"
   type is(character(len=*))
     asc(1) = "BB"
     call sub(asc(1))
     select type(asc2=>obj11(1,2)%cptr)
       type is(integer)
         print*,"911"
       type is (real)
         print*,"912"
       type is(character(len=*))
       call sub(asc(1))
       asc2(2) = "AA"
       if(rank(asc2).ne.1)print*,"401"
       if(len(asc2(2)).ne.3)print*,"209"
       if(any(lbound(asc2).ne.1))print*,"405"
       if(any(ubound(asc2).ne.2))print*,"415"
       select type(asc3=>obj22(2,2)%cptr)
       type is(integer)
         print*,"921"
       type is (real)
         print*,"922"
       type is(character(len=*))
       asc3(2) = "XXXX"
       call sub2(asc3(2))
       call sub(asc(1))
       if(len(asc3(2)).ne.4)print*,"219"
     end select
    end select
 end select

 print*,"PASS"
 contains 
  subroutine sub(c)
   character(len=*)::c
    if(len(c).ne.3)print*,"101"
    if(c.ne."BB")print*,"102"
  end
   subroutine sub2(c)
     character(len=*)::c
      if(len(c).ne.4)print*,"201"
      if(c.ne."XXXX")print*,"202"
  end
 end
