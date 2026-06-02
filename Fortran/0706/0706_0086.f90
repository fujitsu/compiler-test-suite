c
c
      call s1
      print *,'pass'
      end
      module test
       integer,parameter::l=-2,u=-1
       type xx
         integer xd
       end type
       type sts
        complex     st1
        character*2 st2
        type(xx)::  st3
       end type
       type sta
        complex     st1(l:u)
        character*2 st2(l:u)
        type(xx)::  st3(l:u)
       end type
       complex,parameter::c1=(1,1),ca1(l:u)=c1
       integer,parameter::i1=1,ia1(l:u)=i1
       real   ,parameter::r1=1.,ra1(l:u)=r1
       character*(*),parameter::h1='1',h2='12',h3='123'
       character*(*),parameter,dimension(l:u)::ha1='1',ha2='12',
     1      ha3='123'
       type(xx),parameter::y=xx(1) ,ya(l:u)=y
       type (sts),dimension(l:u),parameter::st11=sts((1,1),'1'  ,xx(1))
       type (sts),dimension(l:u),parameter::st12=sts( 1   ,'12' ,xx(1))
       type (sts),dimension(l:u),parameter::st13=sts( 1.  ,'123',xx(1))
       type (sts),dimension(l:u),parameter::st31=sts(c1   ,h1   ,y    )
       type (sts),dimension(l:u),parameter::st32=sts(i1   ,h2   ,y    )
       type (sts),dimension(l:u),parameter::st33=sts(r1   ,h3   ,y    )
       type (sta),dimension(l:u),parameter::st21=
     1     sta((/((1,1),m=1,2)/),(/('1',m=1,2) /)  ,
     1        (/(xx(1),m=1,2)/))
       type (sta),dimension(l:u),parameter::st22=
     1     sta((/( 1,m=1,2)   /),(/('12',m=1,2)/)  ,
     1        (/(xx(1),m=1,2)/))
       type (sta),dimension(l:u),parameter::st23=
     1     sta((/( 1.,m=1,2)  /),(/('123',m=1,2)/) ,
     1        (/(xx(1),m=1,2)/))
       type (sta),dimension(l:u),parameter::st41=sta((1,1),'1'  ,xx(1))
       type (sta),dimension(l:u),parameter::st42=sta( 1   ,'12' ,xx(1))
       type (sta),dimension(l:u),parameter::st43=sta( 1.  ,'123',xx(1))
       type (sta),dimension(l:u),parameter::st51=
     1     sta((/(c1,m=1,2)/),(/(h1,m=1,2) /)  ,(/(y,m=1,2)  /))
       type (sta),dimension(l:u),parameter::st52=
     1     sta((/(i1,m=1,2)/),(/(h2,m=1,2) /)  ,(/(y,m=1,2)/))
       type (sta),dimension(l:u),parameter::st53=
     1     sta((/(r1,m=1,2)/),(/(h3,m=1,2) /) ,(/(y,m=1,2)/))
       type (sta),dimension(l:u),parameter::st61=
     1     sta((/ca1/),(/ha1 /)  ,(/ya    /))
       type (sta),dimension(l:u),parameter::st62=
     1     sta((/ia1   /),(/ha2  /)  ,(/ya/))
       type (sta),dimension(l:u),parameter::st63=
     1     sta((/ ra1  /),(/ha3 /) ,(/ya/))
      contains
      subroutine sts_chk1(d)
      type(sts)::d(:)
      if (any(d%st1/=cmplx(1,1)))print *,'fail'
      if (any(d%st2/='1 '))print *,'fail'
      if (any(d%st3%xd/=1))print *,'fail'
      end subroutine
      subroutine sts_chk2(d)
      type(sts)::d(:)
      if (any(d%st1/=cmplx(1  )))print *,'fail'
      if (any(d%st2/='12'))print *,'fail'
      if (any(d%st3%xd/=1))print *,'fail'
      end subroutine
      subroutine sts_chk3(d)
      type(sts)::d(:)
      if (any(d%st1/=cmplx(1. )))print *,'fail'
      if (any(d%st2/='12'))print *,'fail'
      if (any(d%st3%xd/=1))print *,'fail'
      end subroutine
      subroutine sta_chk1(d)
      type(sta)::d(:)
      do m=l,u
      if (any(d%st1(m)/=cmplx(1,1)))print *,'fail'
      if (any(d%st2(m)/='1 '))print *,'fail'
      if (any(d%st3(m)%xd/=1))print *,'fail'
      end do
      end subroutine
      subroutine sta_chk2(d)
      type(sta)::d(:)
      do m=l,u
      if (any(d%st1(m)/=cmplx(1  )))print *,'fail'
      if (any(d%st2(m)/='12'))print *,'fail'
      if (any(d%st3(m)%xd/=1))print *,'fail'
      end do
      end subroutine
      subroutine sta_chk3(d)
      type(sta)::d(:)
      do m=l,u
      if (any(d%st1(m)/=cmplx(1. )))print *,'fail'
      if (any(d%st2(m)/='12'))print *,'fail'
      if (any(d%st3(m)%xd/=1))print *,'fail'
      end do
      end subroutine
      end module
      subroutine s1
      use test
      call sts_chk1(st11)
      call sts_chk2(st12)
      call sts_chk3(st13)
      call sts_chk1(st31)
      call sts_chk2(st32)
      call sts_chk3(st33)
      call sta_chk1(st21)
      call sta_chk2(st22)
      call sta_chk3(st23)
      call sta_chk1(st41)
      call sta_chk2(st42)
      call sta_chk3(st43)
      call sta_chk1(st51)
      call sta_chk2(st52)
      call sta_chk3(st53)
      call sta_chk1(st61)
      call sta_chk2(st62)
      call sta_chk3(st63)
      end
