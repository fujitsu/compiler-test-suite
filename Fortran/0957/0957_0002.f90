          type ty
            integer::q
          end type
          class(*),allocatable:: cptr

          select type (asc=>fun())
           class default
               print*,"901"
           type is (ty)
               if(asc%q.ne.12)print*,"101"
           end select     
          select type (asc=>fun2())
           class default
               print*,"911"
           type is(integer)
               print*,"912"
           type is(character(len=*))
               if(asc(1:3).ne."abc")print*,"504"
           end select     
          allocate(cptr,source=.true.)
          select type (asc=>cptr)
           class default
               print*,"911"
           type is(integer)
               print*,"912"
           type is(logical)
               if(asc.neqv..true.)print*,"534"
           end select     
         print*,"PASS"
         contains
         function fun()
          class(*),allocatable:: fun
          allocate(ty::fun)
           select type (asc=>fun)
            class default
              print*,"101"
            type is(ty)
              asc%q =12
            end select
         end function      
         function fun2()
          class(*),allocatable:: fun2
          allocate(fun2,source="abc")
         end function      
        end
       
       

