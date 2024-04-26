
      real*4   ,parameter::  r4=0.0
      real*8   ,parameter::  r8=0.0
      real*16  ,parameter:: r16=0.0
      real*4   ,parameter::  r4a(10)=0.0
      real*8   ,parameter::  r8a(10)=0.0
      real*16  ,parameter:: r16a(10)=0.0
      real*4     r4v
      real*8     r8v
      real*16   r16v
      complex*8 ,parameter::  c8= (0.0,0.0)
      complex*16,parameter::  c16=(0.0,0.0)
      complex*32,parameter::  c32=(0.0,0.0)

      integer,parameter ::ia=precision(r4)
      integer,parameter ::ib=precision(r8)
      integer,parameter ::ic=precision(r16)
      integer,parameter ::id=precision(r4a)
      integer,parameter ::ie=precision(r8a)
      integer,parameter ::if=precision(r16a)
      integer,parameter ::ig=precision(r4v)
      integer,parameter ::ih=precision(r8v)
      integer,parameter ::ii=precision(r16v)
      integer,parameter ::ij=precision(c8)
      integer,parameter ::ik=precision(c16)
      integer,parameter ::il=precision(c32)

      call checki4(ia,precision(r4))
      call checki4(ib,precision(r8))
      call checki4(ic,precision(r16))
      call checki4(id,precision(r4a))
      call checki4(ie,precision(r8a))
      call checki4(if,precision(r16a))
      call checki4(ig,precision(r4v))
      call checki4(ih,precision(r8v))
      call checki4(ii,precision(r16v))
      call checki4(ij,precision(c8))
      call checki4(ik,precision(c16))
      call checki4(il,precision(c32))

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
