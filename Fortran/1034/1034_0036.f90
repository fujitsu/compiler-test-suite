      character*6  cx
      namelist /xyz123456789/ cx
      namelist /xyz12345678a/ cx
      cx='OpenMP'
      call sub
      rewind (UNIT=22)
      read(UNIT=22,xyz123456789)
      if (cx/='OpenMP') write(6,*) "NG"
      rewind (UNIT=23)
      read(UNIT=23,xyz12345678a)
      if (cx/='OpenMP') write(6,*) "NG"
      print *,'pass'
      contains
      subroutine sub
      if (cx/='OpenMP') write(6,*) "NG"
      write(UNIT=22,xyz123456789)
      write(UNIT=23,xyz12345678a)
      end subroutine
      end
