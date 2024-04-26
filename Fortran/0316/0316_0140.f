
      integer*1,   parameter ::i1a=0
      integer*2,   parameter ::i2a=0
      integer*4,   parameter ::i4a=0
      integer*8,   parameter ::i8a=0
      real*4,      parameter ::r4a=0.0
      real*8,      parameter ::r8a=0.0
      real*16,     parameter ::r16a=0.0
      complex*8,   parameter ::c8a=(0.0,0.0)
      complex*16,  parameter ::c16a=(0.0,0.0)
      complex*32,  parameter ::c32a=(0.0,0.0)
      logical*1,   parameter ::L1a=.true.
      logical*4,   parameter ::L4a=.false.
      character*1, parameter ::cha='a'
      integer*1   i1b
      integer*2   i2b
      integer*4   i4b
      integer*8   i8b
      real*4      r4b
      real*8      r8b
      real*16     r16b
      complex*8   c8b
      complex*16  c16b
      complex*32  c32b
      logical*1   L1b
      logical*4   L4b
      character*1 chb

      parameter(i1=kind(x=i1a))
      parameter(i2=kind(x=i2a))
      parameter(i3=kind(x=i4a))
      parameter(i4=kind(x=i8a))
      parameter(i5=kind(r4a))
      parameter(i6=kind(r8a))
      parameter(i7=kind(r16a))
      parameter(i8=kind(c8a))
      parameter(i9=kind(c16a))
      parameter(i10=kind(c32a))
      parameter(i11=kind(L1a))
      parameter(i12=kind(L4a))
      parameter(i13=kind(cha))

      parameter(j1=kind(x=i1b))
      parameter(j2=kind(x=i2b))
      parameter(j3=kind(x=i4b))
      parameter(j4=kind(x=i8b))
      parameter(j5=kind(r4b))
      parameter(j6=kind(r8b))
      parameter(j7=kind(r16b))
      parameter(j8=kind(c8b))
      parameter(j9=kind(c16b))
      parameter(j10=kind(c32b))
      parameter(j11=kind(L1b))
      parameter(j12=kind(L4b))
      parameter(j13=kind(chb))

      call checki(i1,kind(i1a))
      call checki(i2,kind(i2a))
      call checki(i3,kind(i4a))
      call checki(i4,kind(i8a))
      call checki(i5,kind(r4a))
      call checki(i6,kind(r8a))
      call checki(i7,kind(r16a))
      call checki(i8,kind(c8a))
      call checki(i9,kind(c16a))
      call checki(i10,kind(c32a))
      call checki(i11,kind(L1a))
      call checki(i12,kind(L4a))
      call checki(i13,kind(cha))

      call checki(j1,kind(i1b))
      call checki(j2,kind(i2b))
      call checki(j3,kind(i4b))
      call checki(j4,kind(i8b))
      call checki(j5,kind(r4b))
      call checki(j6,kind(r8b))
      call checki(j7,kind(r16b))
      call checki(j8,kind(c8b))
      call checki(j9,kind(c16b))
      call checki(j10,kind(c32b))
      call checki(j11,kind(L1b))
      call checki(j12,kind(L4b))
      call checki(j13,kind(chb))
      print *,'*** ok ***'
      end

      subroutine checki(i,it)
      if (i.ne.it) then
        print *,'??? ng ???'
        stop 1
      endif
      end
