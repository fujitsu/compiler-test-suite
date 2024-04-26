
      integer*1,parameter::  i1=0
      integer*2,parameter::  i2=0
      integer*4,parameter::  i4=0
      integer*8,parameter::  i8=0
      real*4   ,parameter::  r4=0.0
      real*8   ,parameter::  r8=0.0
      real*16  ,parameter:: r16=0.0
      integer*1,parameter::  i1a(10)=0
      integer*2,parameter::  i2a(10)=0
      integer*4,parameter::  i4a(10)=0
      integer*8,parameter::  i8a(10)=0
      real*4   ,parameter::  r4a(10)=0.0
      real*8   ,parameter::  r8a(10)=0.0
      real*16  ,parameter:: r16a(10)=0.0
      integer*1  i1v(10)
      integer*2  i2v(10)
      integer*4  i4v(10)
      integer*8  i8v(10)
      real*4     r4v
      real*8     r8v
      real*16   r16v
      complex*8 ,parameter::  c8 =(0.0,0.0)
      complex*16,parameter::  c16=(0.0,0.0)
      complex*32,parameter::  c32=(0.0,0.0)

      integer,parameter ::ia=range(X=i1)
      integer,parameter ::ib=range(i2)
      integer,parameter ::ic=range(i4)
      integer,parameter ::id=range(i8)
      integer,parameter ::ie=range(r4)
      integer,parameter ::if=range(r8)
      integer,parameter ::ig=range(r16)
      integer,parameter ::ih=range(X=i1a)
      integer,parameter ::ii=range(i2a)
      integer,parameter ::ij=range(i4a)
      integer,parameter ::ik=range(i8a)
      integer,parameter ::il=range(r4a)
      integer,parameter ::im=range(r8a)
      integer,parameter ::in=range(r16a)
      integer,parameter ::io=range(X=i1v)
      integer,parameter ::ip=range(i2v)
      integer,parameter ::iq=range(i4v)
      integer,parameter ::is=range(i8v)
      integer,parameter ::it=range(r4v)
      integer,parameter ::iu=range(r8v)
      integer,parameter ::iv=range(r16v)
      integer,parameter ::iw=range(c8)
      integer,parameter ::ix=range(c16)
      integer,parameter ::iy=range(c32)

      call checki4(ia,range(X=i1))
      call checki4(ib,range(i2))
      call checki4(ic,range(i4))
      call checki4(id,range(i8))
      call checki4(ie,range(r4))
      call checki4(if,range(r8))
      call checki4(ig,range(r16))
      call checki4(ih,range(X=i1a))
      call checki4(ii,range(i2a))
      call checki4(ij,range(i4a))
      call checki4(ik,range(i8a))
      call checki4(il,range(r4a))
      call checki4(im,range(r8a))
      call checki4(in,range(r16a))
      call checki4(io,range(X=i1v))
      call checki4(ip,range(i2v))
      call checki4(iq,range(i4v))
      call checki4(is,range(i8v))
      call checki4(it,range(r4v))
      call checki4(iu,range(r8v))
      call checki4(iv,range(r16v))
      call checki4(iw,range(c8))
      call checki4(ix,range(c16))
      call checki4(iy,range(c32))

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
