      real*16 r16(11)/1.1,1.2,1.3,1.4,1.5,1.6,1.7,1.8,1.9,2.0,2.1/
      real*8 r8(11)/1.1,1.2,1.3,1.4,1.5,1.6,1.7,1.8,1.9,2.0,2.1/
      real  r4(11)/1.1,1.2,1.3,1.4,1.5,1.6,1.7,1.8,1.9,2.0,2.1/
      integer i44(11),i48(11),i416(11),ii/0/

      do i=1,11
         i44(i) = nint(r4(i),4)
      enddo
      ii = ii + ichk(i44)
      do i=1,11
         i48(i) = nint(r8(i),4)
      enddo
      ii = ii + ichk(i48)
      do i=1,11
         i416(i) = nint(r16(i),4)
      enddo
      ii = ii + ichk(i416)
      if (ii.eq.0) then
         write(6,*) " OK "
      else
         write(6,*) " NG "
         write(6,*) i44
         write(6,*) i48
         write(6,*) i416
      endif
      end

      integer function ichk(icalc)
      integer icalc(11)
      integer res(11)/1,1,1,1,2,2,2,2,2,2,2/
      ichk = 0
      do i=1,11
         if (res(i) .ne. icalc(i)) then
            ichk=1
            return
         endif
      enddo
      return
      end
