      type mod
          integer :: a = 1
          integer :: b = 2
      end type

      type(mod),allocatable :: a(:)
      allocate(a(10))
      print*,a
      deallocate(a)
      end
