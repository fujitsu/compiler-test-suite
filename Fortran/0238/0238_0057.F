      subroutine s1
# 3000
     *1
      integer:: x1
      end
      subroutine s2
# 4000
     *1
      integer:: y1
      end
      subroutine s3
# 3000
     *1
      integer:: y1
      end
      call s11
      call s21
      call s31
      print *,'pass'
      end
