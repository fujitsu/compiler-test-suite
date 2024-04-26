      block data blk
      integer :: i=2
      common /cmn/ i
      end
      program test
      integer :: i
      common /cmn/ i
      external :: blk
      if (i==2) print *,"*** ok ***"
      end
