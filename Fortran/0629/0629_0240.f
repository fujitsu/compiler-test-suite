      call st1
      print *,"ok"
      end

      subroutine ss1(i2a)
      integer(kind=2) i2a(:)
      end subroutine

      subroutine st1
      implicit none
      integer*2 i,j,k,m
      integer(kind=2)::i1,i2,j1,j2,k1,k2,m1,m2
      i1=1;i2=2;j1=1;j2=2;k1=1;k2=2;m1=1;m2=2
      end
