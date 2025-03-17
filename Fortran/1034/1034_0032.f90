      character*6  cx
      namelist /xyz123456789/ cx
      namelist /xyz12345678a/ cx
      namelist /xyz12345678b/ cx
      namelist /xyz12345678c/ cx
      namelist /xyz12345678d/ cx
      cx='OpenMP'
      call sub
      rewind (UNIT=22)
      read(UNIT=22,xyz123456789)
      if (cx/='OpenMP') write(6,*) "NG"
      rewind (UNIT=23)
      read(UNIT=23,xyz12345678a)
      if (cx/='OpenMP') write(6,*) "NG"
      rewind (UNIT=24)
      read(UNIT=24,xyz12345678b)
      if (cx/='OpenMP') write(6,*) "NG"
      rewind (UNIT=25)
      read(UNIT=25,xyz12345678c)
      if (cx/='OpenMP') write(6,*) "NG"
      rewind (UNIT=26)
      read(UNIT=26,xyz12345678d)
      if (cx/='OpenMP') write(6,*) "NG"
      print *,'pass'
      contains
      subroutine sub
      if (cx/='OpenMP') write(6,*) "NG"
      write(UNIT=22,xyz123456789)
      write(UNIT=23,xyz12345678a)
      write(UNIT=24,xyz12345678b)
      write(UNIT=25,xyz12345678c)
      write(UNIT=26,xyz12345678d)
      end subroutine
      end
