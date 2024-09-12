   Module m
   contains
   function f1(dmy,l1)
    integer  :: f1,E1
    integer,contiguous::dmy(:)
    integer*4::l1
    integer,contiguous::c1(:)
    integer*4::l2
       if(loc(dmy).ne.l1)print*,"102"
     entry E1(c1,l2)
       if(loc(c1).ne.l2)print*,"101"
       if(any(c1.ne.[1,2,3,4,5]))print*,"103"
       E1 = c1(1)+4
   end function

   function f2()
     integer :: f2
     procedure(E1),pointer :: ptr1=>E1
     integer :: ii(5) = [1,2,3,4,5]
     integer::k=1
     integer*4::l1
     l1=loc(ii)
     f2 = ptr1(ii(1:5:k),l1)
   end function
   end module

   use m
     procedure(E1),pointer :: ptr2=>E1
     integer :: ii(5) = [1,2,3,4,5]
     integer::k
     integer*4::l1
     k=1
     l1=loc(ii)
     if(ptr2(ii(1:5:k),l1) .ne. 5) print*,"121"
     if(f2() .ne. 5) print*,"122"
     print*,"Pass"
   end

