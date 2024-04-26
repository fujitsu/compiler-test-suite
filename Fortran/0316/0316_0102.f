
      real*4   ,parameter::  r4=0.0
      real*8   ,parameter::  r8=0.0
      real*16  ,parameter:: r16=0.0
      real*4   ,parameter::  r4a(10)=0.0
      real*8   ,parameter::  r8a(10)=0.0
      real*16  ,parameter:: r16a(10)=0.0
      real*4     r4v
      real*8     r8v
      real*16   r16v

      integer,parameter ::ia=minexponent(r4)
      integer,parameter ::ib=minexponent(r8)
      integer,parameter ::ic=minexponent(r16)
      integer,parameter ::id=minexponent(r4a)
      integer,parameter ::ie=minexponent(r8a)
      integer,parameter ::if=minexponent(r16a)
      integer,parameter ::ig=minexponent(r4v)
      integer,parameter ::ih=minexponent(r8v)
      integer,parameter ::ii=minexponent(r16v)

      call checki4(ia,minexponent(r4))
      call checki4(ib,minexponent(r8))
      call checki4(ic,minexponent(r16))
      call checki4(id,minexponent(r4a))
      call checki4(ie,minexponent(r8a))
      call checki4(if,minexponent(r16a))
      call checki4(ig,minexponent(r4v))
      call checki4(ih,minexponent(r8v))
      call checki4(ii,minexponent(r16v))

      print *,'*** ok ***'
      end

      subroutine checki4(i4,i4t)
      integer*4 i4,i4t
      if (i4.ne.i4t) then
        print *,i4,i4t
        print *,'??? ng ???'
        stop 1
      endif
      end
