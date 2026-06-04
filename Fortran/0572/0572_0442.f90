     module m1
     interface gnr
      function fun1(a,b)
      type(*),intent(in)::a(..),b(..)
      integer::fun1
      end function
     end interface


     type gnr
      integer :: ii
    end type
    end module

    use m1
     type(gnr) :: a(2,3),b(3,4,5)
       a%ii=4
       b%ii=4
     if(gnr(a,b)/=2)print*,203
     print*,"PASS"
     end

      function fun1(a,b)
      type(*),intent(in)::a(..),b(..)
        integer::fun1
        fun1=rank(a)
        if (rank(a) /= 2)print*,101
        if (rank(b) /= 3)print*,102
      end function


