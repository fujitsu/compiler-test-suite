         interface
          function  f(dmy)
           integer :: f,dmy
         end function
          subroutine  s(dmy2)
           integer :: dmy2
          end subroutine
         end interface
          procedure(f),pointer :: dptr1=>f
          procedure(s),pointer :: dptr2=>s
          integer :: ii = 5
          integer :: jj = 10
          dptr1=>f
          if(associated(dptr1) .eqv. .false.)print*,"101"
          if(dptr1(ii) .ne. 2)  print*,"102"
          if(associated(dptr2) .eqv. .false.)print*,"103"
          call dptr2(jj)
          if(jj .ne. 15)print*,"104"
          print*,"pass"
         end

         function f(dmy)
          integer :: f,dmy
          f= dmy-3
         end function
         subroutine s(dmy2)
           integer :: dmy2
           dmy2=dmy2+5
         end subroutine
