      character*6  cx
      namelist /xyz123456789/ cx
      namelist /xyz12345678a/ cx
      namelist /xyz12345678b/ cx
      namelist /xyz12345678c/ cx
      namelist /xyz12345678d/ cx
      cx='OpenMP'
!$OMP parallel
!$OMP single
      write(UNIT=122,xyz123456789)
      write(UNIT=123,xyz12345678a)
      write(UNIT=124,xyz12345678b)
      write(UNIT=125,xyz12345678c)
      write(UNIT=126,xyz12345678d)
!$OMP end single
!$OMP end parallel
      rewind (UNIT=122)
      read(UNIT=122,xyz123456789)
      if (cx/='OpenMP') write(6,*) "NG"
      rewind (UNIT=123)
      read(UNIT=123,xyz12345678a)
      if (cx/='OpenMP') write(6,*) "NG"
      rewind (UNIT=124)
      read(UNIT=124,xyz12345678b)
      if (cx/='OpenMP') write(6,*) "NG"
      rewind (UNIT=125)
      read(UNIT=125,xyz12345678c)
      if (cx/='OpenMP') write(6,*) "NG"
      rewind (UNIT=126)
      read(UNIT=126,xyz12345678d)
      if (cx/='OpenMP') write(6,*) "NG"
      print *,'pass'
      end
