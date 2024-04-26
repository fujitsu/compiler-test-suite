      real*16 r16(11)/1.1,1.2,1.3,1.4,1.5,1.6,1.7,1.8,1.9,2.0,2.1/
      real*8 r8(11)/1.1,1.2,1.3,1.4,1.5,1.6,1.7,1.8,1.9,2.0,2.1/
      real  r4(11)/1.1,1.2,1.3,1.4,1.5,1.6,1.7,1.8,1.9,2.0,2.1/
      integer*2 i24(11),i28(11),i216(11),ii/0/,ichk

      do i=1,11
         i24(i) = nint(r4(i),2)
      enddo
      ii = ii + ichk(i24,0)
      do i=1,11
         i28(i) = nint(r8(i),2)
      enddo
      ii = ii + ichk(i28,0)
      do i=1,11
         i216(i) = nint(r16(i),2)
      enddo
      ii = ii + ichk(i216,0)
      if (ii.eq.0) then
         write(6,*) " OK "
      else
         write(6,*) " NG "
         write(6,*) i24
         write(6,*) i28
         write(6,*) i216
      endif

      do i=1,11
         i24(i) = nint(r4(i)+1,2)
      enddo
      ii = ii + ichk(i24,1)
      do i=1,11
         i28(i) = nint(r8(i)+1,2)
      enddo
      ii = ii + ichk(i28,1)
      do i=1,11
         i216(i) = nint(r16(i)+1,2)
      enddo
      ii = ii + ichk(i216,1)
      if (ii.eq.0) then
         write(6,*) " OK "
      else
         write(6,*) " NG "
         write(6,*) i24
         write(6,*) i28
         write(6,*) i216
      endif
      end

      integer*2 function ichk(icalc,jj)
      integer*2 icalc(11)
      integer*2 res(11)/1,1,1,1,2,2,2,2,2,2,2/
      ichk = 0
      do i=1,11
         if ((res(i)+jj) .ne. icalc(i)) then
            ichk=1
            return
         endif
      enddo
      return
      end

