type tt
 character :: ch='b'
end type

class(*),pointer::obj
class(tt),pointer::obj2
integer,target::tgt =5

class(tt),allocatable,target :: tgt2

integer::sc=2

allocate(tgt2)

obj=>tgt
obj2=>tgt2

nam1:select type(aa=>obj)
 type is(integer)
  select type(aa=>obj2)
  type is(tt)
  nn: select case(sc)
    case(2)
     print*,'pass1/2'
    case(1)
     print*,101
    case default
     print*,102
   end select nn
  end select
end select nam1

nam2:select type(aa=>obj)
 type is(integer)
   print*,'pass2/2'
end select nam2
end
