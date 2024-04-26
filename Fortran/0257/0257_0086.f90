         interface
          function f(dmy , loc1)
           integer :: f
           integer,contiguous::dmy(:)
           integer*4::loc1
         end function
          subroutine sub(dmy,loc1)
           integer,contiguous::dmy(:)
          integer*4::loc1
          end subroutine
         end interface
          procedure(f),pointer :: dptr 
          procedure(sub),pointer :: dptr2
          integer,target :: ii(5) = [1,2,3,4,5]
          integer,target :: ii2(5) = [1,2,3,4,5]
          integer::k=1
          integer,pointer::ptr1(:)
          integer,pointer::ptr2(:)
          integer*4::l
          ptr1=>ii
          ptr2=>ii2(1:5:1)
          dptr=>f
          dptr2=>sub
          l =loc(ii)
          if(dptr(ptr1(1:5:k),l) .ne.1)  print*,"121"
          l= loc(ii2)
          call dptr2(ptr2(1:5:k),l)
          call sub2(dptr2)
          print*,"Pass"
          contains
          subroutine sub2(dptr4)
          procedure(sub),pointer:: dptr4
          integer,target::x(5) =[1,2,3,4,5]
          integer,pointer::ptr1(:)
          integer::k
          integer*4::l
          k=1
          l = loc(x)
          ptr1=>x(1:5:k)
           call dptr4(ptr1(1:5:k),l)
          end subroutine
         end
         function f(dmy, loc1)
          integer :: f
           integer,contiguous::dmy(:)
           integer*4::loc1
          f= dmy(1)
         if(loc(dmy).ne.loc1)print*,"101",loc(dmy),loc1
         if(any(dmy.ne.[1,2,3,4,5]))print*,"102" ,dmy
         end function
         subroutine sub(dmy,loc1)
          integer,contiguous::dmy(:)
         integer*4::loc1
         if(loc(dmy).ne.loc1)print*,"201", loc(dmy) ,loc1
         if(any(dmy.ne.[1,2,3,4,5]))print*,"202",dmy
         end subroutine
