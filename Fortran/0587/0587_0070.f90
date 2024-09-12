                module n
                  procedure(integer):: f2
                end 
                  module m
                  use n,f1=>f2
                  type ty
                    procedure(integer),nopass,pointer :: pp=>f1
                  end type
                  procedure(integer),pointer :: pp2=>f1
                  end 
                  use m
                  type(ty)::obj
                  if(obj%pp().ne.12)print*,"101"
                  if(pp2().ne.12)print*,"102"
                  end

                  function f2()
                  integer::f2
                  f2=12
                  print*,"PASS"
                 end
