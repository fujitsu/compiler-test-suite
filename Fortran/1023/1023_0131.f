      subroutine s15
      character(len=2,kind=1),pointer,dimension(:):: a1
      character(len=2,kind=1),allocatable,target,dimension(:,:)::
     1  target
      allocate (target(2,3))
      a1=>target(:,3)
      call s151(a1)
      contains
      subroutine s151(a1)
      character(len=*,kind=1),pointer,dimension(:):: a1
      end subroutine
      end
      call s15
      end
