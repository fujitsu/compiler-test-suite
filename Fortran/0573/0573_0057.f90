         interface
          function f(loc1)
           integer :: f
           integer,allocatable::loc1
         end function
          subroutine sub(loc1)
          integer,allocatable::loc1
          end subroutine
         end interface
          procedure(f),pointer :: dptr 
          procedure(sub),pointer :: dptr2
          integer*4,allocatable::l
          dptr=>f
          dptr2=>sub
          if(dptr(NULL(l)) .ne.1)  print*,"121"
          call dptr2(NULL(l))
          print*,"Pass"
         end
         function f(loc1)
          integer :: f
           integer*4,allocatable::loc1
           allocate(loc1)
           loc1 =1
          f= loc1
         end function
         subroutine sub(loc1)
           integer*4,allocatable::loc1
           allocate(loc1)
         end subroutine
