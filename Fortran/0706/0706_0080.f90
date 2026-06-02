c
c
      call s1
      print *,'pass'
      end
      module test
       integer,parameter::l=-2,u=-1
       type st1
        integer     st11
       end type
       type st2
        integer st21,st22(l:u)
        complex st23,st24(l:u)
        character st25(l:u)
        type (st1)::st26(l:u)
       end type
       integer,parameter::ip1=100
       integer,parameter::ip2=200
       integer,parameter::ip2a(u-l+1)=ip2
       complex,parameter::mp1=(100,100)
       complex,parameter::mp2=(200,200)
       complex,parameter::mp2a(u-l+1)=mp2
       character*(*),parameter::cp1='1'
       character*(*),parameter::cp1a(u-l+1)=cp1
       type (st1),parameter::st1a(u-l+1)=st1(ip1)
       type (st2),parameter,dimension(l:u)::v01=
     1       st2(ip1 , ip2 , mp1 ,mp2 , cp1 , st1( ip1 ) )
       type (st2),parameter,dimension(l:u)::v02= (/
     1       st2(ip1 , ip2 , mp1 ,mp2 , cp1 , st1( ip1 ) ) ,
     1       st2(ip1 , ip2 , mp1 ,mp2 , cp1 , st1( ip1 ) ) /)
       type (st2),parameter,dimension(l:u)::v03=(/ (
     1       st2(ip1 , ip2 , mp1 ,mp2 , cp1 , st1( ip1 ) ) ,m=l,u) /)
       type (st2),parameter,dimension(l:u)::v04=
     1       st2(ip1 , ip2a, mp1 ,mp2a, cp1a, st1a      )
       type (st2),parameter,dimension(l:u)::v05= (/
     1       st2(ip1 , ip2a, mp1 ,mp2a, cp1 , st1a       ) ,
     1       st2(ip1 , ip2a, mp1 ,mp2a, cp1 , st1a       ) /)
       type (st2),parameter,dimension(l:u)::v06=(/ (
     1       st2(ip1 , ip2 , mp1 ,mp2 , cp1 , st1a       ) ,m=l,u) /)
       type (st2),parameter,dimension(l:u)::v07=
     1       st2(mp1 , mp2 , mp1 ,mp2 , cp1 , st1( mp1 ) )
       type (st2),parameter,dimension(l:u)::v08= (/
     1       st2(mp1 , mp2 , mp1 ,mp2 , cp1 , st1( mp1 ) ) ,
     1       st2(mp1 , mp2 , mp1 ,mp2 , cp1 , st1( mp1 ) ) /)
       type (st2),parameter,dimension(l:u)::v09=(/ (
     1       st2(mp1 , mp2 , mp1 ,mp2 , cp1 , st1( mp1 ) ) ,m=l,u) /)
       type (st2),parameter,dimension(l:u)::v10=
     1       st2(mp1 , mp2a, mp1 ,mp2a, cp1a, st1a      )
       type (st2),parameter,dimension(l:u)::v11= (/
     1       st2(mp1 , mp2a, mp1 ,mp2a, cp1 , st1a       ) ,
     1       st2(mp1 , mp2a, mp1 ,mp2a, cp1 , st1a       ) /)
       type (st2),parameter,dimension(l:u)::v12=(/ (
     1       st2(mp1 , mp2 , mp1 ,mp2 , cp1 , st1a       ) ,m=l,u) /)
       type (st2),parameter,dimension(l:u)::v13=
     1       st2(mp1 , mp2 , ip1 ,ip2 , cp1 , st1( mp1 ) )
       type (st2),parameter,dimension(l:u)::v14= (/
     1       st2(mp1 , mp2 , ip1 ,ip2 , cp1 , st1( mp1 ) ) ,
     1       st2(mp1 , mp2 , ip1 ,ip2 , cp1 , st1( mp1 ) ) /)
       type (st2),parameter,dimension(l:u)::v15=(/ (
     1       st2(mp1 , mp2 , ip1 ,ip2 , cp1 , st1( mp1 ) ) ,m=l,u) /)
       type (st2),parameter,dimension(l:u)::v16=
     1       st2(mp1 , mp2a, ip1 ,ip2a, cp1a, st1a      )
       type (st2),parameter,dimension(l:u)::v17= (/
     1       st2(mp1 , mp2a, ip1 ,ip2a, cp1 , st1a       ) ,
     1       st2(mp1 , mp2a, ip1 ,ip2a, cp1 , st1a       ) /)
       type (st2),parameter,dimension(l:u)::v18=(/ (
     1       st2(mp1 , mp2 , ip1 ,ip2 , cp1 , st1a       ) ,m=l,u) /)
      end module
      subroutine s1
      use test
      call chk(v01)
      call chk(v02)
      call chk(v03)
      call chk(v04)
      call chk(v05)
      call chk(v06)
      call chk(v07)
      call chk(v08)
      call chk(v09)
      call chk(v10)
      call chk(v11)
      call chk(v12)
      call chk_x(v13)
      call chk_x(v14)
      call chk_x(v15)
      call chk_x(v16)
      call chk_x(v17)
      call chk_x(v18)
      contains
      subroutine chk(vxx)
      type (st2)::vxx(l:)
      do k=l,u
      if (    abs(vxx(k)%st21-ip1)>1)print *,'fail'
      if (any(abs(vxx(k)%st22-ip2)>1))print *,'fail'
      if (    abs(vxx(k)%st23-mp1)>1)print *,'fail'
      if (any(abs(vxx(k)%st24-mp2)>1))print *,'fail'
      if (any(    vxx(k)%st25 /=cp1 ))print *,'fail'
      if (any(abs(vxx(k)%st26%st11-ip1)>1))print *,'fail'
      end do
      end subroutine
      subroutine chk_x(vxx)
      type (st2)::vxx(l:)
      do k=l,u
      if (    abs(vxx(k)%st21-ip1)>1)print *,'fail'
      if (any(abs(vxx(k)%st22-ip2)>1))print *,'fail'
      if (    abs(cmplx(real(vxx(k)%st23),real(mp1))-mp1)>1)
     1 print *,'fail'
      if (any(abs(cmplx(real(vxx(k)%st24),real(mp2))-mp2)>1))
     1 print *,'fail'
      if (any(    vxx(k)%st25 /=cp1 ))print *,'fail'
      if (any(abs(vxx(k)%st26%st11-ip1)>1))print *,'fail'
      end do
      end subroutine
      end
