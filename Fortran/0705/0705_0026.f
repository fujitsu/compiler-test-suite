      character*7 s4_v,s5_v
      call s1
      call s2
      call s3
      call s4(loc(s4_v)-2147483640)
      call s5(loc(s5_v)-2147483640)
      print *,'pass'
      end
      subroutine err(i)
      print *,'error code :',i
      print *,'fail'
      end
      subroutine s5(ii)
      structure /y/
       character  yb0(2147483640)
       character  yb1(7)
      end structure
      pointer (ii,xx)
      record /y/ xx
      i=-2147483630
      j=-990
      xx.yb1(7)(j+991:1)='4'
      if (xx.yb1(7).ne.'4') call err(5003)
      end
      subroutine s4(ii)
      structure /y/
       character  yb0(2147483640)
       character  yb1(7)
      end structure
      pointer (ii,xx)
      record /y/ xx
      i=-2147483630
      j=-990
      xx.yb1(i+2147483637)='3'
      if (xx.yb1(7).ne.'3') call err(6003)
      end
      subroutine s3
      structure /x/
       character*2 a1(10)
       character a2
      end structure
      structure /y/
       record /x/ b1(10)
      end structure
      structure /yc1/
        character*100 yc1_a
        record /y/ yc1_xx
      end structure
      structure /yc2/
        character*100 yc2_a
        record /yc1/ yc2_xx
      end structure
      record /yc2/ xx
      i=-2147483630
      j=-990
      xx.yc2_xx.yc1_xx.b1(i+2147483638).a1(j+1000)='34'
      if (xx.yc2_xx.yc1_xx.b1(8).a1(10).ne.'34') call err(1003)
      end
      subroutine s2
      structure /x/
       character*1000 a1
       character*2 a2
      end structure
      structure /y/
       record /x/ b1(10)
      end structure
      structure /yc1/
        character*100 yc1_a
        record /y/ yc1_xx
      end structure
      structure /yc2/
        character*100 yc2_a
        record /yc1/ yc2_xx
      end structure
      record /yc2/ xx
      i=-2147483630
      xx.yc2_xx.yc1_xx.b1(i+2147483638).a2='12'
      if (xx.yc2_xx.yc1_xx.b1(8).a2.ne.'12') call err(1002)
      end
      subroutine s1
      structure /x/
       character a01(1000)
       character*2 a02(10)
      end structure
      structure /yc1/
        character*100 yc1_a
        record /x/ yc1_xx
      end structure
      structure /yc2/
        character*100 yc2_a
        record /yc1/ yc2_xx
      end structure
      record /yc2/ xx
      i=-2147483639
      xx.yc2_xx.yc1_xx.a02(i+2147483647)='12'
      if (xx.yc2_xx.yc1_xx.a02(8).ne.'12') call err(1001)
      end
