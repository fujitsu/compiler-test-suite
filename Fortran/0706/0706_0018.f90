c
c ow=g1128
c
      call s1
      print *,'pass'
      end
      subroutine s1
      complex (kind=4) a1
      complex (kind=8) a2
      complex (kind=16) a3
      if (kind((1._4,1._4))/=4)call errtra
      if (kind((1._8,1._8))/=8)call errtra
      if (kind((1._16,1._16))/=16)call errtra
      end
