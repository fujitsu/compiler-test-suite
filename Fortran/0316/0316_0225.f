
      n=10
      call sub(n)
      print *,'*** ok ***'
      end

      recursive  subroutine sub(n)
      integer*1   i1,i1e
      integer*2   i2,i2e
      integer*4   i4,i4e, i4a(10),i4ae(10)
      real*8      r8,r8e
      complex*16  c16,c16e
      character   ch,che
      type tag
        sequence
        integer   i
      end type
      type (tag) t,te
      equivalence (i1,i1e),(i2,i2e),(i4,i4e),(i4a,i4ae)
      equivalence (r8,r8e),(c16,c16e),(ch,che),(t,te)

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

      if (i1e.ne.m .or. i2e.ne.m .or. i4e.ne.m) then
        print *,'??? ng ???'
        stop 1
      endif
      if (dabs(r8e-dble(m))/dble(m).gt.1.0d-14) then
        print *,'??? ng ???'
        stop 2
      endif
      if (dabs(dble(c16e)-dble(m))/dble(m).gt.1.0d-14) then
        print *,'??? ng ???'
        stop 3
      endif
      if (che.ne.char(ichar('a')+m)) then
        print *,'??? ng ???'
        stop 4
      endif
      if (te%i.ne.m) then
        print *,'??? ng ???'
        stop 5
      endif
      do i=1,10
        if (i4ae(i).ne.m) then
          print *,'??? ng ???'
          stop 6
        endif
      enddo
      end
