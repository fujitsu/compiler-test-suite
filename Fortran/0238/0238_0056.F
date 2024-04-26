      subroutine s1
# 1000
      integer:: x1
      end
      subroutine s2
# 2000
      integer:: y1
      end
      subroutine s3
# 3000
      integer:: y1
      end
      call s1
      call s2
      call s3
      print *,'pass'
      end
