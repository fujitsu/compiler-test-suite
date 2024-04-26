
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

      integer,parameter ::ia=radix(X=i1)
      integer,parameter ::ib=radix(i2)
      integer,parameter ::ic=radix(i4)
      integer,parameter ::id=radix(i8)
      integer,parameter ::ie=radix(r4)
      integer,parameter ::if=radix(r8)
      integer,parameter ::ig=radix(r16)
      integer,parameter ::ih=radix(X=i1a)
      integer,parameter ::ii=radix(i2a)
      integer,parameter ::ij=radix(i4a)
      integer,parameter ::ik=radix(i8a)
      integer,parameter ::il=radix(r4a)
      integer,parameter ::im=radix(r8a)
      integer,parameter ::in=radix(r16a)
      integer,parameter ::io=radix(X=i1v)
      integer,parameter ::ip=radix(i2v)
      integer,parameter ::iq=radix(i4v)
      integer,parameter ::is=radix(i8v)
      integer,parameter ::it=radix(r4v)
      integer,parameter ::iu=radix(r8v)
      integer,parameter ::iv=radix(r16v)

      call checki4(ia,radix(X=i1))
      call checki4(ib,radix(i2))
      call checki4(ic,radix(i4))
      call checki4(id,radix(i8))
      call checki4(ie,radix(r4))
      call checki4(if,radix(r8))
      call checki4(ig,radix(r16))
      call checki4(ih,radix(X=i1a))
      call checki4(ii,radix(i2a))
      call checki4(ij,radix(i4a))
      call checki4(ik,radix(i8a))
      call checki4(il,radix(r4a))
      call checki4(im,radix(r8a))
      call checki4(in,radix(r16a))
      call checki4(io,radix(X=i1v))
      call checki4(ip,radix(i2v))
      call checki4(iq,radix(i4v))
      call checki4(is,radix(i8v))
      call checki4(it,radix(r4v))
      call checki4(iu,radix(r8v))
      call checki4(iv,radix(r16v))

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
