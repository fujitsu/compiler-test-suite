type ty
  class(*),allocatable :: cptr(:,:)
end type
type(ty)::obj1,obj2
allocate(complex::obj1%cptr(2,3))
allocate(complex::obj2%cptr(2,3))
select type(xx=>obj1%cptr)
  type is(complex)
   xx(1:2,1:3:1) = (3,4)
  select type(xx=>obj1%cptr)
    type is(complex)
      if(any(xx(1:2:1,1:3:1).ne.(3,4)))print*,"101"
  end select
end select
PRINT*,"PASS"
end

