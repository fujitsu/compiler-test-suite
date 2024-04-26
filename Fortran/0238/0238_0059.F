      subroutine s1
# 1000
# 1100
     11
     12
# 1100
      integer:: x1
      end
      subroutine s2
# 2000
# 2100
     11
     12
      integer:: y1
      end
      subroutine s3
# 3000
# 3100
     11
     12
      integer:: y1
      end
      call s112
      call s212
      call s312
      print *,'pass'
      end
