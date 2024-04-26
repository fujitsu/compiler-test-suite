
      n=10
      call sub(n)
      print *,'*** ok ***'
      end

      recursive  subroutine sub(n)
      integer*1   i1
      integer*2   i2
      integer*4   i4, i4a(10)
      real*8      r8
      complex*16  c16
      character   ch
      type tag
        integer   i
      end type
      type (tag) t

      n=n-1
      m=n
      i1=m
      i2=m
      i4=m
      i4a=m
      r8=m
      c16=m
      ch=char(ichar('a')+m)
      t%i=m

      if (n.eq.0) then
        return
      endif
      
      call sub(n)

      if (i1.ne.m .or. i2.ne.m .or. i4.ne.m) then
        print *,'??? ng ???'
        stop 1
      endif
      if (dabs(r8-dble(m))/dble(m).gt.1.0d-14) then
        print *,'??? ng ???'
        stop 2
      endif
      if (dabs(dble(c16)-dble(m))/dble(m).gt.1.0d-14) then
        print *,'??? ng ???'
        stop 3
      endif
      if (ch.ne.char(ichar('a')+m)) then
        print *,'??? ng ???'
        stop 4
      endif
      if (t%i.ne.m) then
        print *,'??? ng ???'
        stop 5
      endif
      do i=1,10
        if (i4a(i).ne.m) then
          print *,'??? ng ???'
          stop 6
        endif
      enddo
      end
