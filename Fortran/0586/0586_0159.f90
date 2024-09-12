         interface
          function f(dmy,loc1)
           integer :: f
           integer,contiguous::dmy(:)
           integer*4::loc1
         end function
          subroutine sub(dmy,loc1)
          integer,contiguous::dmy(:)
          integer*4::loc1
          end subroutine
         end interface
          procedure(f),pointer :: dptr=>f
          procedure(sub),pointer :: dptr2=>sub
          integer :: ii(5) = [1,2,3,4,5]
          integer :: ii2(5) = [1,2,3,4,5]
          integer::k=1
          integer*4::l
          l =loc(ii)
          if(dptr(ii(1:5:k),l) .ne.1)  print*,"121"
          l = loc(ii2)
          call dptr2(ii2(1:5:k),l)
          print*,"Pass"
         end
         function f(dmy,loc1)
          integer :: f
          integer,contiguous ::dmy(:)
           integer*4::loc1
          f= dmy(1)
          if(loc(dmy).ne.loc1)print*,"101"
          if(any(dmy.ne.[1,2,3,4,5]))print*,"102"
         end function
         subroutine sub(dmy,loc1)
         integer,contiguous::dmy(:)
           integer*4::loc1
          if(loc(dmy).ne.loc1)print*,"101"
          if(any(dmy.ne.[1,2,3,4,5]))print*,"102"
         end subroutine
