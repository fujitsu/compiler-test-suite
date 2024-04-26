
      type tag
        real*16     r16(10,10)
        real*8      r8(10,10)
        real*4      r4(10,10)
      end type
      integer,parameter ::i(5)=(/1,2,3,4,5/)
      type (tag) ::t

      integer*4,parameter ::i1=maxexponent(t%r16(1:10:1,i))
      integer*4,parameter ::i2=maxexponent(t%r8 (1:10:1,i))
      integer*4,parameter ::i3=maxexponent(t%r4 (1:10:1,i))
      integer*4,parameter ::j1=minexponent(t%r16(1:10:1,i))
      integer*4,parameter ::j2=minexponent(t%r8 (1:10:1,i))
      integer*4,parameter ::j3=minexponent(t%r4 (1:10:1,i))
      
      call checki4 (i1 , maxexponent(t%r16(1:10:1,i)) )
      call checki4 (i2 , maxexponent(t%r8 (1:10:1,i)) )
      call checki4 (i3 , maxexponent(t%r4 (1:10:1,i)) )
      call checki4 (j1 , minexponent(t%r16(1:10:1,i)) )
      call checki4 (j2 , minexponent(t%r8 (1:10:1,i)) )
      call checki4 (j3 , minexponent(t%r4 (1:10:1,i)) )
      print *,'*** ok ***'
      end

      subroutine checki4  (i ,ti)
      integer*4  i,ti
      if (i.ne.ti)  then
        print *,'??? ng ???'
        stop 1
      endif
      end
