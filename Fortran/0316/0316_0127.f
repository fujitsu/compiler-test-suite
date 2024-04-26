
      type tag
        real*16     r16(10)
        real*8      r8(10)
        integer*8   i8(10)
        real*4      r4(10)
        integer*4   i4(10)
        integer*2   i2(10)
        integer*1   i1(10)
      end type
      type (tag) ::t

      integer,parameter ::i1=digits(t%r16(lbound(t%r16,1)
     +                                   :ubound(t%r16,1)))
      integer,parameter ::i2=digits(t%r8 (lbound(t%r8 ,1)
     +                                   :ubound(t%r8 ,1)))
      integer,parameter ::i3=digits(t%r4 (lbound(t%r4 ,1)
     +                                   :ubound(t%r4 ,1)))
      integer,parameter ::i4=digits(t%i8 (lbound(t%i8 ,1)
     +                                   :ubound(t%i8 ,1)))
      integer,parameter ::i5=digits(t%i4 (lbound(t%i4 ,1)
     +                                   :ubound(t%i4 ,1)))
      integer,parameter ::i6=digits(t%i2 (lbound(t%i2 ,1)
     +                                   :ubound(t%i2 ,1)))
      integer,parameter ::i7=digits(t%i1 (lbound(t%i1 ,1)
     +                                   :ubound(t%i1 ,1)))
      
      call checki4 (i1 , digits(t%r16) )
      call checki4 (i2 , digits(t%r8 ) )
      call checki4 (i3 , digits(t%r4 ) )
      call checki4 (i4 , digits(t%i8 ) )
      call checki4 (i5 , digits(t%i4 ) )
      call checki4 (i6 , digits(t%i2 ) )
      call checki4 (i7 , digits(t%i1 ) )
      print *,'*** ok ***'
      end

      subroutine checki4 (i ,ti)
      integer*4 i,ti
      if (i.ne.ti)  then
        print *,'??? ng ???'
        stop 1
      endif
      end
