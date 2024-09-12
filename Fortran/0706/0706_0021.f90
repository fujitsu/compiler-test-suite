c
c ow=g1128
c
      call s1
      print *,'pass'
      end
      subroutine s1
      implicit none
      if (kind((1_1,1_1))/=4)call errtra
      if (kind((1  ,1_1))/=4)call errtra
      if (kind((1_1,1  ))/=4)call errtra
      if (kind((1_2,1_1))/=4)call errtra
      if (kind((1_2,1_2))/=4)call errtra
      if (kind((1_2,1_4))/=4)call errtra
      if (kind((1_2,1_8))/=4)call errtra
      if (kind((1_4,1_1))/=4)call errtra
      if (kind((1_4,1_2))/=4)call errtra
      if (kind((1_4,1_4))/=4)call errtra
      if (kind((1_4,1_8))/=4)call errtra
      if (kind((1_8,1_1))/=4)call errtra
      if (kind((1_8,1_2))/=4)call errtra
      if (kind((1_8,1_4))/=4)call errtra
      if (kind((1_8,1_8))/=4)call errtra
      if (kind((1_1,1._4))/=4)call errtra
      if (kind((1_2,1._4))/=4)call errtra
      if (kind((1_4,1._4))/=4)call errtra
      if (kind((1_8,1._4))/=4)call errtra
      if (kind((1_1,1._8))/=8)call errtra
      if (kind((1_2,1._8))/=8)call errtra
      if (kind((1_4,1._8))/=8)call errtra
      if (kind((1_8,1._8))/=8)call errtra
      if (kind((1_1,1._16))/=16)call errtra
      if (kind((1_2,1._16))/=16)call errtra
      if (kind((1_4,1._16))/=16)call errtra
      if (kind((1_8,1._16))/=16)call errtra
      if (kind((1._4,1_1))/=4)call errtra
      if (kind((1._4,1_2))/=4)call errtra
      if (kind((1._4,1_4))/=4)call errtra
      if (kind((1._4,1_8))/=4)call errtra
      if (kind((1._8,1_1))/=8)call errtra
      if (kind((1._8,1_2))/=8)call errtra
      if (kind((1._8,1_4))/=8)call errtra
      if (kind((1._8,1_8))/=8)call errtra
      if (kind((1._16,1_1))/=16)call errtra
      if (kind((1._16,1_2))/=16)call errtra
      if (kind((1._16,1_4))/=16)call errtra
      if (kind((1._16,1_8))/=16)call errtra
      end
