
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

      integer,parameter ::ia=digits(X=i1)
      integer,parameter ::ib=digits(i2)
      integer,parameter ::ic=digits(i4)
      integer,parameter ::id=digits(i8)
      integer,parameter ::ie=digits(r4)
      integer,parameter ::if=digits(r8)
      integer,parameter ::ig=digits(r16)
      integer,parameter ::ih=digits(X=i1a)
      integer,parameter ::ii=digits(i2a)
      integer,parameter ::ij=digits(i4a)
      integer,parameter ::ik=digits(i8a)
      integer,parameter ::il=digits(r4a)
      integer,parameter ::im=digits(r8a)
      integer,parameter ::in=digits(r16a)
      integer,parameter ::io=digits(X=i1v)
      integer,parameter ::ip=digits(i2v)
      integer,parameter ::iq=digits(i4v)
      integer,parameter ::is=digits(i8v)
      integer,parameter ::it=digits(r4v)
      integer,parameter ::iu=digits(r8v)
      integer,parameter ::iv=digits(r16v)

      call checki4(ia,digits(X=i1))
      call checki4(ib,digits(i2))
      call checki4(ic,digits(i4))
      call checki4(id,digits(i8))
      call checki4(ie,digits(r4))
      call checki4(if,digits(r8))
      call checki4(ig,digits(r16))
      call checki4(ih,digits(X=i1a))
      call checki4(ii,digits(i2a))
      call checki4(ij,digits(i4a))
      call checki4(ik,digits(i8a))
      call checki4(il,digits(r4a))
      call checki4(im,digits(r8a))
      call checki4(in,digits(r16a))
      call checki4(io,digits(X=i1v))
      call checki4(ip,digits(i2v))
      call checki4(iq,digits(i4v))
      call checki4(is,digits(i8v))
      call checki4(it,digits(r4v))
      call checki4(iu,digits(r8v))
      call checki4(iv,digits(r16v))

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
