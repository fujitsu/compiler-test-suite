type tn
integer::ii(3)
class(*),allocatable::cptr1(:)
integer,allocatable::jj(:)
class(*),pointer::cptr2(:)
end type

type ts
integer,allocatable::kk(:)
type(tn),allocatable::objTN(:)
end type

type(ts),pointer::obj(:)

complex(kind=4)::ii(4)
complex(kind=8)::jj(4)

allocate(obj(3))
allocate(obj(2)%objTN(3))
allocate(obj(3)%objTN(3))
allocate(obj(2)%kk(3))
allocate(obj(3)%kk(4))
allocate(obj(2)%objTN(2)%jj(3))
allocate(obj(3)%objTN(3)%jj(4))

ii = [(21.0,22.0),(23.0,24.0),(25.0,26.0),(27.0,28.0)]
jj = [(31.0_8,32.0_8),(33.0_8,34.0_8),(35.0_8,36.0_8),(37.0_8,38.0_8)]

allocate(obj(2)%objTN(2)%cptr1,source=[(11.0_8,12.0_8),(13.0_8,14.0_8)])
allocate(obj(3)%objTN(3)%cptr2,source=[(21.0,22.0),(23.0,24.0),(25.0,26.0)])

select type(aa=>obj(2)%objTN(2)%cptr1)
 type is(complex(kind=8))
  select type(bb=>obj(2)%objTN(2)%cptr1)
   type is(complex(kind=8))
    if(allocated(obj(2)%objTN(2)%cptr1)) then
     if(size(bb) /= 2) print*,101
     if(any(bb /= ([(11.0_8,12.0_8),(13.0_8,14.0_8)]))) print*,101
     deallocate(obj(2)%objTN(2)%cptr1)
     allocate(obj(2)%objTN(2)%cptr1,source=ii(2:4))
    endif

   class default
    print*,911
  end select

 class default
  print*,912
end select

select type(aa=>obj(2)%objTN(2)%cptr1)
 type is(complex(kind=4))
  if(size(aa) /= 3) print*,201
  if(any(aa /= ii(2:4))) print*,202

 class default
  print*,913
end select

select type(aa=>obj(3)%objTN(3)%cptr2)
 type is(complex)
  select type(bb=>obj(3)%objTN(3)%cptr2)
   type is(complex)
    if(associated(obj(3)%objTN(3)%cptr2)) then
     if(size(bb) /= 3) print*,301
     if(any(bb /= [(21.0,22.0),(23.0,24.0),(25.0,26.0)])) print*,302
     deallocate(obj(3)%objTN(3)%cptr2)
     allocate(obj(3)%objTN(3)%cptr2, mold=jj(2:3))
     if(associated(obj(3)%objTN(3)%cptr2)) then
      deallocate(obj(3)%objTN(3)%cptr2)
      allocate(obj(3)%objTN(3)%cptr2,source=jj(2:3))
     endif
    endif

   class default
    print*,914
  end select

 class default
  print*,915
end select

select type(aa=>obj(3)%objTN(3)%cptr2)
 type is(complex(kind=8))
  if(any(aa /= jj(2:3))) print*,401
  if(size(aa) /= 2) print*,402

 class default
  print*,916
end select
print*,"PASS"
end
