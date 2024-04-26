     module m1
     interface NUM
      function fun1(a,b)
      type(*)::a(:,:),b(:,:,:)
      integer::fun1
      end function
     end interface
     type NUM
      integer :: ii
    end type
    end module

    use m1
    type(NUM),pointer::ptr1(:,:)
    type(NUM),pointer::ptr2(:,:,:)
    allocate(ptr1(2,3))
    allocate(ptr2(3,4,5))
     if(NUM(ptr1(:,:),ptr2(:,:,:))/=2)print*,203
     print*,"PASS"
     end

      function fun1(a,b)
      type(*)::a(:,:),b(:,:,:)
        integer::fun1
        fun1=rank(a)
        if (rank(a) /= 2)print*,101
        if (rank(b) /= 3)print*,102
      end function


