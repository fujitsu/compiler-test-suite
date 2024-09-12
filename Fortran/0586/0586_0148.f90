   Module m
   contains
   function f1(dmy)
    integer  :: f1,dmy,c1,E1
     entry E1(c1)
       E1 = c1+4
   end function

   function f2()
     integer :: f2
     procedure(E1),pointer :: ptr1=>E1
     integer :: ii = 6
     f2 = ptr1(ii)
     if(associated(ptr1) .eqv. .false.)print*,"101",associated(ptr1)

   end function
   end module

   use m
     procedure(E1),pointer :: ptr2=>E1
     integer :: ii = 4
     if(associated(ptr2) .eqv. .false.)print*,"102",associated(ptr2)
     if(ptr2(ii) .ne. 8) print*,"103"
     if(f2() .ne. 10) print*,"104"
     print*,"pass"
   end

