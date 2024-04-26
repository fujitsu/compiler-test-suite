      subroutine s1
# 1000
# 1100
      integer:: x1
      end
      subroutine s2
# 2000
# 2100
      integer:: y1
      end
      subroutine s3
# 3000
# 3100
      integer:: y1
      end
      call s1
      call s2
      call s3
      print *,'pass'
      end
