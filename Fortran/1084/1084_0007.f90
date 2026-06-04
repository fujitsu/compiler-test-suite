module m1
type tn
class(*),allocatable::cptr1(:)
integer,allocatable::ii(:)
class(*),pointer::cptr2(:)
end type

class(tn),pointer::obj(:)

complex(kind=4)::ii(4)
complex(kind=8)::jj(3)

contains
function fun(obj)
class(tn)::obj(:)
integer::fun

select type(aa=>obj(2)%cptr1)
 type is(complex(kind=8))
  select type(bb=>obj(2)%cptr1)
   type is(complex(kind=8))
    if(allocated(obj(2)%cptr1)) then
     if(size(bb) /= 2) print*,101
     if(any(bb /= [(11.0_8,12.0_8),(13.0_8,14.0_8)])) print*,102
     deallocate(obj(2)%cptr1)
     allocate(obj(2)%cptr1, mold=ii(2:4))
     if(allocated(obj(2)%cptr1)) then 
      deallocate(obj(2)%cptr1)
      allocate(obj(2)%cptr1,source=ii(2:4))
     endif
     fun = 1
    endif

   class default
    print*,911
  end select

 class default
  print*,912
end select

select type(aa=>obj(2)%cptr1)
 type is(complex(kind=4))
  if(size(aa) /= 3) print*,201
  if(any(aa /= ii(2:4))) print*,202

 class default
  print*,913
end select

select type(aa=>obj(3)%cptr2)
 type is(complex)
  select type(bb=>obj(3)%cptr2)
   type is(complex)
    if(associated(obj(3)%cptr2)) then
     if(size(bb) /= 1) print*,301
     if(any(bb /= [(13.0,14.0)])) print*,302
     deallocate(obj(3)%cptr2)
     allocate(obj(3)%cptr2,source=jj(1:3:2))
     fun = 2
    endif

   class default
    print*,914
  end select

 class default
  print*,916
end select

select type(aa=>obj(3)%cptr2)
 type is(complex(kind=8))
  if(size(aa) /= 2) print*,401
  if(any(aa /= jj(1:3:2))) print*,402
  if(fun == 2) fun = 1

 class default
  print*,916
end select
print*,"PASS"
end function
end module

use m1
ii = [(21.0,22.0),(23.0,24.0),(25.0,26.0),(27.0,28.0)]
jj = [(31.0_8,32.0_8),(33.0_8,34.0_8),(35.0_8,36.0_8)]

allocate(obj(3))
allocate(obj(2)%ii(3))
allocate(obj(3)%ii(4))

allocate(obj(2)%cptr1,source=[(11.0_8,12.0_8),(13.0_8,14.0_8)])
allocate(obj(3)%cptr2,source=[(13.0,14.0)])

if(fun(obj) /= 1) print*,"ERROR"
end
