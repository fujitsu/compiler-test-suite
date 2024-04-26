type ty
integer::ii
end type

type, extends(ty)::tt
integer::jj
end type

class(ty),allocatable::obj(:)
class(ty),allocatable::cobj

allocate(tt::obj(2))
allocate(tt::cobj)

do i=1,4
a1:select type(obj)
 class is (tt)
  obj%ii  = 11
  obj%jj  = 12

  a2: select type(cobj)
   type is(tt)
    cobj%ii = 21
    cobj%jj = 22
    if(i==1) exit

   class default
    print*, 911
  end select a2
  obj%ii  = 31
  obj%jj  = 32
  cobj%ii = 41

 class default
  print*, 912
  exit a1
end select a1
end do

a3:select type(obj)
 class is (tt)
  if(all(obj%ii /= 11)) print*, "101"
  if(all(obj%jj /= 12)) print*, "102"
  exit a3

 class default
  print*, 913
end select a3

a4:select type(cobj)
 class is (tt)
  if(cobj%ii /= 21) print*, "201"
  if(cobj%jj /= 22) print*, "202"

 class default
  print*, 914
end select a4

print*, "PASS"
end
