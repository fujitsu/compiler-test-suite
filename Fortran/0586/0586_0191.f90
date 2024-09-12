                  procedure(integer) :: f2
                  procedure(integer),pointer :: pp=>f2
                  integer::k
                  pp=>f2
                  if(associated(pp,f2).neqv..true.)print*,"101"
                  k=pp()
                  end
                  function f2()
                  integer::f2
                  f2=12
                  print*,"PASS"
                 end
