      real*16 r16(11)/1.1,1.2,1.3,1.4,1.5,1.6,1.7,1.8,1.9,2.0,2.1/
      real*8 r8(11)/1.1,1.2,1.3,1.4,1.5,1.6,1.7,1.8,1.9,2.0,2.1/
      real  r4(11)/1.1,1.2,1.3,1.4,1.5,1.6,1.7,1.8,1.9,2.0,2.1/
      integer*8 i84(11),i88(11),i816(11),ii/0/,ichk

      do i=1,11
         i84(i) = nint(r4(i),1)
      enddo
      ii = ii + ichk(i84,0)
      do i=1,11
         i88(i) = nint(r8(i),1)
      enddo
      ii = ii + ichk(i88,0)
      do i=1,11
         i816(i) = nint(r16(i),1)
      enddo
      ii = ii + ichk(i816,0)
      if (ii.eq.0) then
         write(6,*) " OK "
      else
         write(6,*) " NG "
         write(6,*) i84
         write(6,*) i88
         write(6,*) i816
      endif

      do i=1,11
         i84(i) = nint(r4(i)+1,1)
      enddo
      ii = ii + ichk(i84,1)
      do i=1,11
         i88(i) = nint(r8(i)+1,1)
      enddo
      ii = ii + ichk(i88,1)
      do i=1,11
         i816(i) = nint(r16(i)+1,1)
      enddo
      ii = ii + ichk(i816,1)
      if (ii.eq.0) then
         write(6,*) " OK "
      else
         write(6,*) " NG "
         write(6,*) i84
         write(6,*) i88
         write(6,*) i816
      endif
      end

      integer*8 function ichk(icalc,jj)
      integer*8 icalc(11)
      integer*8 res(11)/1,1,1,1,2,2,2,2,2,2,2/
      ichk = 0
      do i=1,11
         if ((res(i)+jj) .ne. icalc(i)) then
            ichk=1
            return
         endif
      enddo
      return
      end

