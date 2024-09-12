  type t
  class(*),pointer::a
  class(*),allocatable::b
  end type t
  type(t),target::ttt
  allocate(integer::ttt%a)
  allocate(integer::ttt%b)
  ttt%a=>ttt%b
  if(.not.associated(ttt%a,ttt%b)) print *,'err'
  print *,'pass'
end
