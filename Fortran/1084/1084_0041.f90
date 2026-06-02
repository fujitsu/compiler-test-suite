 type ty
  class(*),allocatable :: cptr(:)
 end type

 type(ty) :: obj1,obj2
 integer::a(10)
 allocate(obj1%cptr(6),source=[-1,-2,-3,-4,-5,-7])
 allocate(obj2%cptr(6),source=[5,6,7,8,9,10])
 select type(asc=>obj1%cptr)
   type is(integer)
     asc(1:5:2) = [1,3,5]
     asc(6)  =6
     a(1:asc(5):asc(1))=[1,2,3,4,5]
     a(asc(6):10)=[11,12,13,14,15]
     select type(asc2=>obj2%cptr)
       class default
        print*,911
       type is(integer)
        asc2(1:5:2) = 2
     end select
   end select
   if(any(a.ne.[1,2,3,4,5,11,12,13,14,15]))print*,"901"
 print*,"PASS"
end
