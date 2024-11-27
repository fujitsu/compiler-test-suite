type tt
 character :: ch='b'
end type

class(*),pointer::obj
class(tt),pointer::obj2
integer,target::tgt =5

class(tt),allocatable,target :: tgt2

integer::sc=2,icase=2

allocate(tgt2)

obj=>tgt
obj2=>tgt2

st1:select type(aa=>obj)
 type is(integer)
  sc1:select case(aa)
  case(2)
  end select sc1

  sc2:select case(aa)
  end select sc2

  st2:select type(aa=>obj2)
  type is(tt)
   sc3:select case(sc)
    case(2)
     print*,'pass1/2'
    case(1)
     print*,101
    case default
     print*,102
   end select sc3
  end select st2

 class default
  st3:select type(aa=>obj)
  end select st3
  sc4:select case(icase)
  case(2)
   st4:select type(aa=>obj)
   type is(integer)
    print*,'pass2/2'
   end select st4
   
  end select sc4
end select st1

nam2:select type(aa=>obj)
 type is(integer)
   print*,'pass2/2'
 class default
  select type(aa=>obj)
  end select
end select nam2
end
