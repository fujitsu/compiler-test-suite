module m 
type ty
  class(*),allocatable :: cptr(:)
 end type
 type ty2
  class(*),allocatable :: cptr(:)
 end type
 type ty3
   integer::a
 end type
end module

use m
 type(ty) :: obj1(2)
 type(ty):: obj2(2)
 integer(kind=4)::kk(5)=0
 integer(kind=4)::jj(6)=0
 allocate(obj1(1)%cptr(5),source=1_4)
 allocate(obj2(1)%cptr(3),source=11_4)
 allocate(obj1(2)%cptr(6),source=12.0_4)
 allocate(obj2(2)%cptr(8),source=11_4)

 select type(asc=>obj1(1)%cptr)
   type is(real)
     asc=31.4
   type is(integer(kind=4))
     asc = 21
     kk =[asc(1),asc(2),asc(3),asc(4),asc(5)]
     select type(asc2=>obj1(2)%cptr)
       type is(integer(kind=4))
        print*,"101"
       type is(real(kind=4))
        asc2(1:6) = [asc(1) + 1_4,asc(2)+1_4,asc(3)+1_4,asc(4)+1_4,asc(5)+1_4 ,asc(5)+1_4]
        if(any(asc2 .eq.22)) asc = 31
        jj = asc2
     end select
      if(any(kk.ne.[21_4,21_4,21_4,21_4,21_4]))print*,"104"
      if(jj(1).ne.22_4)print*,"204"! ,jj
 end select

 print*,"PASS"
 end
