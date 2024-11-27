type tt
 character(len=4) :: ch='pass'
end type

class(*),pointer::obj
class(tt),pointer::obj2
integer,target::tgt =5

class(tt),allocatable,target :: tgt2

allocate(tgt2)

obj=>tgt
obj2=>tgt2

nam1:select type(aa=>obj)
class default
 nam2:select type(aa=>obj)
 type is(integer)
  print*,aa
  nam3:select type(aa=>obj2)
  type is(tt)
   print*,aa%ch
  end select nam3
  print*,aa
 end select nam2
end select nam1

end
