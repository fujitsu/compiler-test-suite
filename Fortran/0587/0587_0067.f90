                  module m
                  type ty
                    procedure(integer),nopass,pointer :: pp=>f2
                  end type
                  procedure(integer) :: f2
                  type(ty)::obj
                  end 
                  use m
                  integer::k
                  if(associated(obj%pp).neqv..true.)print*,"101"
                  k=obj%pp()
                  if(k.ne.12)print*,"101"
                  end
                  function f2()
                  integer::f2
                  f2=12
                  print*,"PASS"
                 end
