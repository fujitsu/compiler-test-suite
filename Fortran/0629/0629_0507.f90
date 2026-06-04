      module test
       integer,parameter::l=-2,u=-1
       type xx
         integer xd
       end type
       type sta
        complex     st1(l:u)
        character*2 st2(l:u)
        type(xx)::  st3(l:u)
       end type
       real   ,parameter::r1=1.,ra1(l:u)=r1
       character*(*),parameter::h1='1',h2='12',h3='123'
       character*(*),parameter,dimension(l:u)::ha1='1',ha2='12',
     1      ha3='123'
       type(xx),parameter::y=xx(1) ,ya(l:u)=y
       type (sta),dimension(l:u),parameter::st63=
     1     sta((/ ra1  /),(/ha3 /) ,(/ya/))
      contains
      subroutine sta_chk3(d)
      type(sta)::d(:)

      do m=l,u
      if (any(d%st1(m)/=cmplx(1. )))print *,'fail'
      end do
      end subroutine
      end module
      use test
      call sta_chk3(st63)
      write(6,*) ' end ' 
       end
