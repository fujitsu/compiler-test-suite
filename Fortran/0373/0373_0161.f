      parameter(n=10)
      type mod
          integer :: a = 1
          integer :: b = 2
      end type

      type(mod),allocatable :: a(:)
      integer,dimension(:),allocatable :: b
      allocate(a(n),b(n))
      b = 2
      print*,a,b
      deallocate(a,b)
      call sub1
      call sub2
      end

      subroutine sub1
      parameter(n=10)
      type mod
          integer :: a = 1
          integer :: b = 2
      end type
      type(mod),allocatable :: a(:)
      integer,dimension(:),allocatable :: b
      allocate(a(n))
      allocate(b(n))
      b = 2
      print*,a,b
      deallocate(a)
      deallocate(b)
      end

      subroutine sub2
      parameter(n=10)
      type mod
          integer :: a = 1
          integer :: b = 2
      end type
      type(mod),allocatable :: a(:)
      integer,dimension(:),allocatable :: b
      allocate(a(n))
      allocate(b(n))
      b = 2
      print*,a,b
      deallocate(a,b)
      end
