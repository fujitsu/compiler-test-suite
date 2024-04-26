
      integer*1   i1a(3),    i1t(3),i1f
      integer*2   i2a(3),    i2t,   i2f(3)
      integer*4   i4a(3),    i4t(3),i4f(3)
      integer*8   i8a(3),    i8t,   i8f
      character*3 cha(3),    cht,   chf(3)
      logical*1   l1a(3),    l1t(3),l1f(3)
      logical*4   l4a,       l4t,   l4f
      logical*4   m4(3),n4
      parameter (i1t=1,     i1f=0)
      parameter (i2t=1,     i2f=0)
      parameter (i4t=1,     i4f=0)
      parameter (i8t=1,     i8f=0)
      parameter (cht='abc', chf='xyz')
      parameter (l1t=.true.,l1f=.false.)
      parameter (l4t=.true.,l4f=.false.)
      parameter (m4 =.true., n4 =.false.)

      parameter(i1a=merge(i1t,i1f,m4)) 
      parameter(i2a=merge(i2t,i2f,n4))
      parameter(i4a=merge(i4t,i4f,n4))
      parameter(i8a=merge(i8t,i8f,m4))
      parameter(cha=merge(cht,chf,m4))
      parameter(l1a=merge(l1t,l1f,m4))
      parameter(l4a=merge(l4t,l4f,n4))


      do i=1,3
        call checki1(i1a(i),merge(i1t(i),i1f,   m4(i)))   
        call checki2(i2a(i),merge(i2t,   i2f(i),n4))
        call checki4(i4a(i),merge(i4t(i),i4f(i),n4))
        call checki8(i8a(i),merge(i8t,   i8f,   m4(i)))
        call checkch(cha(i),merge(cht,   chf(i),m4(i)))
        call checki1(l1a(i),merge(l1t(i),l1f(i),m4(i)))
      enddo
      call checki4(l4a,merge(l4t,l4f,n4))

      print *,'*** ok ***'
      end

      subroutine checki1(i1,i1t)
      integer*1 i1,i1t
      if (i1.ne.i1t) then
        print *,i1,i1t
        print *,'??? ng ???'
        stop 1
      endif
      end

      subroutine checki2(i2,i2t)
      integer*2 i2,i2t
      if (i2.ne.i2t) then
        print *,i2,i2t
        print *,'??? ng ???'
        stop 2
      endif
      end

      subroutine checki4(i4,i4t)
      integer*4 i4,i4t
      if (i4.ne.i4t) then
        print *,i4,i4t
        print *,'??? ng ???'
        stop 3
      endif
      end

      subroutine checki8(i8,i8t)
      integer*8 i8,i8t
      if (i8.ne.i8t) then
        print *,i8,i8t
        print *,'??? ng ???'
        stop 4
      endif
      end

      subroutine checkch(ch,cht)
      character*(*) ch,cht
      if (ch.ne.cht) then
        print *,ch,cht
        print *,'??? ng ???'
        stop 5
      endif
      end
