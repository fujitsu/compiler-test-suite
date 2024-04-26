         interface
          subroutine sub(dmy,loc1)
           integer::dmy(5)
          integer*4::loc1
          end subroutine
         end interface
          procedure(sub),pointer :: dptr2
          dptr2=>sub
          call sub2(dptr2)
          print*,"Pass"
          contains
          subroutine sub2(dptr4)
          procedure(sub):: dptr4
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
         subroutine sub(dmy,loc1)
          integer::dmy(5)
         integer*4::loc1
         if(loc(dmy).ne.loc1)print*,"201", loc(dmy) ,loc1
         if(any(dmy.ne.[1,2,3,4,5]))print*,"202",dmy
         end subroutine
