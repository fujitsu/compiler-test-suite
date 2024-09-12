      parameter(n=10)
      type mod
          integer :: a = 1
          integer :: b = 2
      end type

      type(mod),allocatable :: a(:),b(:)
      allocate(a(n),b(n))
      print*,a
      deallocate(a,b)
      end
