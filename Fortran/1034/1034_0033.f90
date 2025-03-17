      call sub
      print *,'pass'
      end
      subroutine sub
      character*6  cx
      namelist /xyz123456789/ cx
      cx='OpenMP'
      if (cx/='OpenMP') write(6,*) "NG"
      write(UNIT=22,xyz123456789)
      rewind (UNIT=22)
      read(UNIT=22,xyz123456789)
      if (cx/='OpenMP') write(6,*) "NG"
      end
