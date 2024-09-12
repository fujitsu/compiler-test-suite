         interface
          function f(dmy)
           integer :: f,dmy
         end function
         end interface
          procedure(f),pointer :: dptr1=>f
          procedure(f),pointer :: dptr2=>f
          integer :: ii = 5
          integer :: jj = 6
          
          if(associated(dptr1) .eqv. .false.)print*,"101"
          if(associated(dptr2) .eqv. .false.)print*,"102"
          if(dptr1(ii) .ne. 2)  print*,"103"
          if(dptr1(ii)+dptr2(jj) .ne. 5)print*,"104"

          print*,"pass"
         end

         function f(dmy)
          integer :: f,dmy
          f= dmy-3
         end function
