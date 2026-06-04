module m1
 type ty
  class(*),pointer :: cptr(:)
 end type

 type(ty) :: obj1(2),obj2(3)
 integer::kk(4) = 0
 integer::jj(3) = -1

contains
 subroutine sub()
 allocate(obj1(1)%cptr(4),source=[-1,-2,-3,-4])
 allocate(obj1(2)%cptr(4),source=[1,2,3,4])

 allocate(obj2(3)%cptr(4),source=[5,6,7,8])

 select type(asc=>obj1(2)%cptr)
   type is(integer)
     asc(1:2:1) = 2
     kk = asc
     select type(asc2=>obj2(3)%cptr(2:4))
       type is(integer)
        asc2(1:3:2) = 2
        if(asc2(3) .eq. asc2(1)) asc(1) = 4
        jj = asc2(1:3)
     end select
     kk = asc
 end select

 select type(asc3=>obj1(2)%cptr)
   type is(integer)
    if(any(asc3 /= [4,2,3,4])) print*,101,asc3
    if(any(kk /= [4,2,3,4])) print*,102,kk
 end select

 select type(asc3=>obj2(3)%cptr)
   type is(integer)
    if(any(asc3 /= [5,2,7,2])) print*,201,asc3
    if(any(jj /= [2,7,2])) print*,202,jj
 end select
 print*,"PASS"
 end
 end module

 use m1
 call sub
end
