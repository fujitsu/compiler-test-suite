                module m
                  procedure(integer):: f2
                  integer,parameter::x =30
                  type ty
                    procedure(integer),nopass,pointer :: pp
                    integer::y
                  end type
                  
                  type ty2
                    type(ty)::obj = ty(f2,x)
                  end type
                  procedure(integer),pointer :: pp2=>f2

                  end
                  use m, only:ty2
                  procedure(integer) :: f2
                  type(ty2)::obj2
                  if(associated(obj2%obj%pp).neqv..true.)print*,"101"
                  if(obj2%obj%pp().ne.12)print*,"101"
                  end

                  function f2()
                  integer::f2
                  f2=12
                  print*,"PASS"
                 end

