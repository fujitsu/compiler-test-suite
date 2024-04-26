
      type tag
        complex*32  c32
        complex*16  c16
        real*16     r16
        complex*8   c8
        real*8      r8
        integer*8   i8
        real*4      r4
        integer*4   i4
        logical*4   l4
        integer*2   i2
        integer*1   i1
        logical*1   l1
        character*3 ch
      end type
      type (tag) ::t
      complex  (kind=kind(t%c32)) :: c32b
      complex  (kind=kind(t%c16)) :: c16b
      complex  (kind=kind(t%c8 )) :: c8b
      real     (kind=kind(t%r16)) :: r16b
      real     (kind=kind(t%r8 )) :: r8b
      real     (kind=kind(t%r4 )) :: r4b
      integer  (kind=kind(t%i8 )) :: i8b
      integer  (kind=kind(t%i4 )) :: i4b
      integer  (kind=kind(t%i2 )) :: i2b
      integer  (kind=kind(t%i1 )) :: i1b
      logical  (kind=kind(t%l4 )) :: l4b
      logical  (kind=kind(t%l1 )) :: l1b
      character(kind=kind(t%ch )) :: chb
      
      call checki4 (kind(t%c32) , kind(c32b) )
      call checki4 (kind(t%c16) , kind(c16b) )
      call checki4 (kind(t%c8 ) , kind(c8b ) )
      call checki4 (kind(t%r16) , kind(r16b) )
      call checki4 (kind(t%r8 ) , kind(r8b ) )
      call checki4 (kind(t%r4 ) , kind(r4b ) )
      call checki4 (kind(t%i8 ) , kind(i8b ) )
      call checki4 (kind(t%i4 ) , kind(i4b ) )
      call checki4 (kind(t%i2 ) , kind(i2b ) )
      call checki4 (kind(t%i1 ) , kind(i1b ) )
      call checki4 (kind(t%l4 ) , kind(l4b ) )
      call checki4 (kind(t%l1 ) , kind(l1b ) )
      call checki4 (kind(t%ch ) , kind(chb ) )
      print *,'*** ok ***'
      end

      subroutine checki4 (i ,ti)
      integer*4 i,ti
      if (i.ne.ti)  then
        print *,'??? ng ???'
        stop 1
      endif
      end
