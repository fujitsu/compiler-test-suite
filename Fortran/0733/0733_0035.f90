      implicit none
      integer,dimension(:),allocatable :: ar

      allocate(ar(1:10))
      ar(1)=2
      call sub(ar)
      deallocate(ar)
print *,'pass'
      contains
      subroutine sub(ar)
      implicit none
      integer,dimension(:) :: ar
      ar(1)=2

      end subroutine
      end
