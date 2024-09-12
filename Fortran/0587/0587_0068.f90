                  module m
                  type ty
                    procedure(integer),nopass,pointer :: pp=>f2
                  end type
                  procedure(integer):: f2
                  procedure(integer),pointer :: pp2=>f2

                  end 
                  use m, only:ty
                  procedure(integer) :: f2
                  type(ty)::obj
                  if(associated(obj%pp).neqv..true.)print*,"101"
                  if(obj%pp().ne.12)print*,"101"
                  end

                  function f2()
                  integer::f2
                  f2=12
                  print*,"PASS"
                 end
