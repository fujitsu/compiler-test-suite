type ty
 integer,allocatable::i
end type

type,extends(ty) :: tty
 integer,allocatable::j
 integer,allocatable::k
end type

class(ty),allocatable :: ty_alc
class(ty),allocatable :: ty_alc1
type(ty) :: ty_obj
type(tty),allocatable :: ty_alc2

allocate(tty::ty_alc)
allocate(tty::ty_alc1)
allocate(ty_alc2)
allocate(ty_alc2%i)
allocate(ty_alc2%j)
allocate(ty_alc2%k)
allocate(ty_obj%i)

ty_obj%i = 2
ty_alc2%i = 21
ty_alc2%j = 22
ty_alc2%k = 23

select type(aa=>ty_alc)
 class default
  print*,911

 type is(tty)
  select type(bb=>ty_alc1)
   class default
    print*,913

   type is(tty)
    deallocate(ty_alc, ty_alc2, ty_alc1)
    allocate(ty_alc, ty_alc2, ty_alc1)
    allocate(ty_alc%i)
    allocate(ty_alc1%i)
    allocate(ty_alc2%k)
    ty_alc%i = 10
    ty_alc1%i = 11
    ty_alc2%k = 33
  end select
end select

select type(aa=>ty_alc)
 class default
  print*,912

 type is(ty)
  if(ty_alc%i /= 10) print*,1011
end select

if(ty_alc2%k /= 33) print*,1013

select type(aa=>ty_alc1)
 class default
  print*,914

 type is(ty)
  if(ty_alc1%i /= 11) print*,1012
end select
print*,"PASS"
end
