
      type tag
        real*16     r16(10,10)
        real*8      r8(10,10)
        real*4      r4(10,10)
      end type
      type tag2
        integer     i
      end type
      integer,parameter     ::i=1
      type (tag)            ::t
      type (tag2),parameter ::t2=tag2(1)

      integer*4,parameter ::i1=precision(t%r16(i,t2%i))
      integer*4,parameter ::i2=precision(t%r8 (i,t2%i))
      integer*4,parameter ::i3=precision(t%r4 (i,t2%i))
      integer*4,parameter ::j1=radix(t%r16(1:10:1,i))
      integer*4,parameter ::j2=radix(t%r8 (1:10:1,i))
      integer*4,parameter ::j3=radix(t%r4 (1:10:1,i))
      integer*4,parameter ::k1=range(t%r16(i,i))
      integer*4,parameter ::k2=range(t%r8 (i,i))
      integer*4,parameter ::k3=range(t%r4 (i,i))
      
      call checki4 (i1 , precision(t%r16(i,t2%i)) )
      call checki4 (i2 , precision(t%r8 (i,t2%i)) )
      call checki4 (i3 , precision(t%r4 (i,t2%i)) )
      call checki4 (j1 , radix(t%r16(1:10:1,i)) )
      call checki4 (j2 , radix(t%r8 (1:10:1,i)) )
      call checki4 (j3 , radix(t%r4 (1:10:1,i)) )
      call checki4 (k1 , range(t%r16(i,i)) )
      call checki4 (k2 , range(t%r8 (i,i)) )
      call checki4 (k3 , range(t%r4 (i,i)) )
      print *,'*** ok ***'
      end

      subroutine checki4  (i ,ti)
      integer*4  i,ti
      if (i.ne.ti)  then
        print *,'??? ng ???'
        stop 1
      endif
      end
