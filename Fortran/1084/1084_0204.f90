 type ty
  class(*),allocatable :: cptr(:)
  class(*),allocatable :: cptr2(:)
 end type
 type ty1 
  integer::x =1
 end type

 type(ty) :: obj1,obj2,obj3
 character(len=3)::kk ="AAA"
 integer::ll=1
 type(ty1)::obj4
 allocate(obj1%cptr(2),source=kk)
 allocate(obj2%cptr(2),source=obj4)
 select type(asc3=>obj2%cptr)
   type is(ty1)
    asc3(1)%x =1
    asc3(2)%x =2
    obj3%cptr = fun(asc3(1)%x)
    select type(asc1=>obj3%cptr)
      type is(integer)
        asc1(asc3(1)%x)=1
        select type(asc=>obj1%cptr)
          type is(integer)
               print*,"901"
          type is (real)
               print*,"902"
          type is(character(len=*))
              asc(asc1(1)) = "BB"
              asc(asc3(2)%x)= "cc"
              if(asc(asc1(1)).ne."BB")print*,"101" !,asc(asc1(1))(asc1(1):asc1(2))
              if(ANY(asc(asc1(asc3(1)%x):asc1(1)+1).ne.["BB","cc"]))print*,"102"
              asc3 = ty1(10)
              if(asc3(1)%x.ne.10)print*,"301"
              if(asc1(1).ne.1)print*,"303"
                select type(asc5=>obj2%cptr)
                  type is(ty1)
                    if(asc5(1)%x.ne.10)print*,"901"
                    if(asc5(2)%x.ne.10)print*,"921"
                  type is(integer)
                    print*,"931"
                end select
        end select
    end select
 end select
 print*,"PASS"
 contains 
  function fun(a)
    class(*),allocatable::fun(:)
    integer::a
    allocate(fun(a),source=ll)
  end
 end
