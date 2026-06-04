 type ty
  class(*),allocatable :: cptr(:)
 end type

 type(ty) :: obj1,obj2
 integer::kk(5) = 0
 integer::jj(5) = -1

 allocate(obj1%cptr(5),source=[-1,-2,-3,-4,-5])
 allocate(obj2%cptr(5),source=[5,6,7,8,9])

 select type(asc=>obj1%cptr)
   type is(integer)
     asc(1:5:2) = [1,3,5]

     select type(asc2=>obj2%cptr)
       class default
        print*,911

       type is(integer)
        asc2(1:5:2) = 2
        if(asc2(3) .eq. asc2(1)) asc(2:5:2) = [2,4]
        jj = asc2
     end select

     kk = asc

    class default
     print*,912
 end select

 select type(asc3=>obj1%cptr)
   type is(integer)
    if(any(asc3 /= [1,2,3,4,5])) print*,101,asc3
    if(any(kk /= [1,2,3,4,5])) print*,102,kk

   class default
    print*,913
 end select

 select type(asc3=>obj2%cptr)
  type is(integer)
    if(any(asc3 /= [2,6,2,8,2])) print*,201,asc3
    if(any(jj /= [2,6,2,8,2])) print*,202,jj

  class default
    print*,914
 end select
 print*,"PASS"
end
