      real*16 r16(11)/1.1,1.2,1.3,1.4,1.5,1.6,1.7,1.8,1.9,2.0,2.1/
      real*8 r8(11)/1.1,1.2,1.3,1.4,1.5,1.6,1.7,1.8,1.9,2.0,2.1/
      real  r4(11)/1.1,1.2,1.3,1.4,1.5,1.6,1.7,1.8,1.9,2.0,2.1/
      integer*1 i14(11),i18(11),i116(11),ii/0/,ichk

      do i=1,11
         i14(i) = nint(r4(i),1)
      enddo
      ii = ii + ichk(i14,0)
      do i=1,11
         i18(i) = nint(r8(i),1)
      enddo
      ii = ii + ichk(i18,0)
      do i=1,11
         i116(i) = nint(r16(i),1)
      enddo
      ii = ii + ichk(i116,0)
      if (ii.eq.0) then
         write(6,*) " OK "
      else
         write(6,*) " NG "
         write(6,*) i14
         write(6,*) i18
         write(6,*) i116
      endif

      do i=1,11
         i14(i) = nint(r4(i)+1,1)
      enddo
      ii = ii + ichk(i14,1)
      do i=1,11
         i18(i) = nint(r8(i)+1,1)
      enddo
      ii = ii + ichk(i18,1)
      do i=1,11
         i116(i) = nint(r16(i)+1,1)
      enddo
      ii = ii + ichk(i116,1)
      if (ii.eq.0) then
         write(6,*) " OK "
      else
         write(6,*) " NG "
         write(6,*) i14
         write(6,*) i18
         write(6,*) i116
      endif
      end

      integer*1 function ichk(icalc,jj)
      integer*1 icalc(11)
      integer*1 res(11)/1,1,1,1,2,2,2,2,2,2,2/
      ichk = 0
      do i=1,11
         if ((res(i)+jj) .ne. icalc(i)) then
            ichk=1
            return
         endif
      enddo
      return
      end

