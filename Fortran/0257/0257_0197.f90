         interface
          function f(dmy)
           integer :: f
           integer::dmy(5)
         end function
          subroutine sub(dmy)
          integer::dmy(5)
          end subroutine
         end interface
          procedure(f),pointer :: dptr 
          procedure(sub),pointer :: dptr2
          integer,target :: ii(5) = [1,2,3,4,5]
          integer,target :: ii2(5) = [1,2,3,4,5]
          integer,pointer::ptr(:)
          integer,pointer::ptr2(:)
           ptr=>ii(:)
           ptr2=>ii2(1:5:1)
          dptr=>f
          dptr2=>sub
          if(dptr(ptr(:)) .ne.1)  print*,"121"
          call dptr2(ptr2(:))
          print*,"Pass"
         end
         function f(dmy)
          integer :: f
          integer::dmy(5)
          f= dmy(1)
          if(any(dmy.ne.[1,2,3,4,5]))print*,"102"
         end function
         subroutine sub(dmy)
         integer::dmy(5)
          if(any(dmy.ne.[1,2,3,4,5]))print*,"102"
         end subroutine
