c
c
      call s1
      print *,'pass'
      end
      module test
       integer,parameter::l=-2,u=-1
       type st1
        integer     st11(l:u)
        character*2 st12(l:u)
       end type
       type st2
        type (st1) :: st23(l:u)
       end type
       integer,dimension(l:u),parameter::st1p1=(/ 1,2 /)
       integer,dimension(l:u),parameter::st1p2=(/ st1p1+2/)
       integer,dimension(l:u),parameter::st1p3=(/ st1p2+2/)
       integer,dimension(l:u),parameter::st1p4=(/ st1p3+2/)
       character(len=*),dimension(l:u),parameter::st2p1=(/'1','2'/)
       character(len=*),dimension(l:u),parameter::st2p2=
     1  (/ achar(ichar(st2p1)+2) /)
       character(len=*),dimension(l:u),parameter::st2p3=
     1  (/ achar(ichar(st2p2)+2) /)
       character(len=*),dimension(l:u),parameter::st2p4=
     1  (/ achar(ichar(st2p3)+2) /)
       type(st1),dimension(l:u),parameter::st3p1=
     1  (/ (st1( st1p1 , st2p1 ) , st1(st1p2,st2p2) ,m=5,5)  /)
       type(st1),dimension(l:u),parameter::st3p2=
     1  (/ (st1( st1p3 , st2p3 ) , st1(st1p4,st2p4) ,m=5,5)  /)
       type(st2),dimension(l:u),parameter::st4p1=
     1  (/ (st2(st3p1),st2(st3p2), m=2,2) /)
       contains 
         function st2_fun(d) result(r)
           type(st2),pointer,dimension(:)::r
           type(st2)        ,dimension(:)::d
           allocate(r(l:u))
           r=d
         end function
         function st1_fun(d) result(r)
           type(st1),pointer,dimension(:)::r
           type(st1)        ,dimension(:)::d
           allocate(r(l:u))
           r=d
         end function
      end module
      subroutine s1
      use test,z=>u
      integer u
      type (st2)::st2_x1(l:z)
      type (st1)::st1_x1(l:z)
      u=11;open (u,delim='quote')
      write(u,*) st4p1; rewind u; read (u,*) st2_x1
      if (any(st2_x1(-2)%st23(-2)%st11/=st1p1))print *,'fail'
      if (any(st2_x1(-2)%st23(-1)%st11/=st1p2))print *,'fail'
      if (any(st2_x1(-1)%st23(-2)%st11/=st1p3))print *,'fail'
      if (any(st2_x1(-1)%st23(-1)%st11/=st1p4))print *,'fail'
      if (any(st2_x1(-2)%st23(-2)%st12/=st2p1))print *,'fail'
      if (any(st2_x1(-2)%st23(-1)%st12/=st2p2))print *,'fail'
      if (any(st2_x1(-1)%st23(-2)%st12/=st2p3))print *,'fail'
      if (any(st2_x1(-1)%st23(-1)%st12/=st2p4))print *,'fail'
      u=12;open (u,delim='quote')
      write(u,*) (/st4p1/); rewind u; read (u,*) st2_x1
      if (any(st2_x1(-2)%st23(-2)%st11/=st1p1))print *,'fail'
      if (any(st2_x1(-2)%st23(-1)%st11/=st1p2))print *,'fail'
      if (any(st2_x1(-1)%st23(-2)%st11/=st1p3))print *,'fail'
      if (any(st2_x1(-1)%st23(-1)%st11/=st1p4))print *,'fail'
      if (any(st2_x1(-2)%st23(-2)%st12/=st2p1))print *,'fail'
      if (any(st2_x1(-2)%st23(-1)%st12/=st2p2))print *,'fail'
      if (any(st2_x1(-1)%st23(-2)%st12/=st2p3))print *,'fail'
      if (any(st2_x1(-1)%st23(-1)%st12/=st2p4))print *,'fail'
      u=13;open (u,delim='quote')
      write(u,*) st4p1(z); rewind u; read (u,*) st2_x1(z)
      if (any(st2_x1(z)%st23(-2)%st11/=st1p3))print *,'fail'
      if (any(st2_x1(z)%st23(-1)%st11/=st1p4))print *,'fail'
      if (any(st2_x1(z)%st23(-2)%st12/=st2p3))print *,'fail'
      if (any(st2_x1(z)%st23(-1)%st12/=st2p4))print *,'fail'
      u=14;open (u,delim='quote')
      write(u,*) (/st4p1(z)/); rewind u; read (u,*) st2_x1(z)
      if (any(st2_x1(z)%st23(-2)%st11/=st1p3))print *,'fail'
      if (any(st2_x1(z)%st23(-1)%st11/=st1p4))print *,'fail'
      if (any(st2_x1(z)%st23(-2)%st12/=st2p3))print *,'fail'
      if (any(st2_x1(z)%st23(-1)%st12/=st2p4))print *,'fail'
      u=15;open (u,delim='quote')
      write(u,*) st2_fun(st4p1); rewind u; read (u,*) st2_x1
      if (any(st2_x1(-2)%st23(-2)%st11/=st1p1))print *,'fail'
      if (any(st2_x1(-2)%st23(-1)%st11/=st1p2))print *,'fail'
      if (any(st2_x1(-1)%st23(-2)%st11/=st1p3))print *,'fail'
      if (any(st2_x1(-1)%st23(-1)%st11/=st1p4))print *,'fail'
      if (any(st2_x1(-2)%st23(-2)%st12/=st2p1))print *,'fail'
      if (any(st2_x1(-2)%st23(-1)%st12/=st2p2))print *,'fail'
      if (any(st2_x1(-1)%st23(-2)%st12/=st2p3))print *,'fail'
      if (any(st2_x1(-1)%st23(-1)%st12/=st2p4))print *,'fail'
      u=16;open (u,delim='quote')
      write(u,*) (/st2_fun(st4p1)/); rewind u; read (u,*) st2_x1
      if (any(st2_x1(-2)%st23(-2)%st11/=st1p1))print *,'fail'
      if (any(st2_x1(-2)%st23(-1)%st11/=st1p2))print *,'fail'
      if (any(st2_x1(-1)%st23(-2)%st11/=st1p3))print *,'fail'
      if (any(st2_x1(-1)%st23(-1)%st11/=st1p4))print *,'fail'
      if (any(st2_x1(-2)%st23(-2)%st12/=st2p1))print *,'fail'
      if (any(st2_x1(-2)%st23(-1)%st12/=st2p2))print *,'fail'
      if (any(st2_x1(-1)%st23(-2)%st12/=st2p3))print *,'fail'
      if (any(st2_x1(-1)%st23(-1)%st12/=st2p4))print *,'fail'
      u=21;open (u,delim='quote')
      write(u,*) st4p1(z)%st23; rewind u; read (u,*) st1_x1
      if (any(st1_x1(-2)%st11/=st1p3))print *,'fail'
      if (any(st1_x1(-1)%st11/=st1p4))print *,'fail'
      if (any(st1_x1(-2)%st12/=st2p3))print *,'fail'
      if (any(st1_x1(-1)%st12/=st2p4))print *,'fail'
      u=22;open (u,delim='quote')
      write(u,*) (/st4p1(z)%st23/); rewind u; read (u,*) st1_x1
      if (any(st1_x1(-2)%st11/=st1p3))print *,'fail'
      if (any(st1_x1(-1)%st11/=st1p4))print *,'fail'
      if (any(st1_x1(-2)%st12/=st2p3))print *,'fail'
      if (any(st1_x1(-1)%st12/=st2p4))print *,'fail'
      u=23;open (u,delim='quote')
      write(u,*) st4p1%st23(z); rewind u; read (u,*) st1_x1
      if (any(st1_x1(-2)%st11/=st1p2))print *,'fail'
      if (any(st1_x1(-1)%st11/=st1p4))print *,'fail'
      if (any(st1_x1(-2)%st12/=st2p2))print *,'fail'
      if (any(st1_x1(-1)%st12/=st2p4))print *,'fail'
      u=24;open (u,delim='quote')
      write(u,*) (/st4p1(z)%st23/); rewind u; read (u,*) st1_x1
      if (any(st1_x1(-2)%st11/=st1p3))print *,'fail'
      if (any(st1_x1(-1)%st11/=st1p4))print *,'fail'
      if (any(st1_x1(-2)%st12/=st2p3))print *,'fail'
      if (any(st1_x1(-1)%st12/=st2p4))print *,'fail'
      u=25;open (u,delim='quote')
      write(u,*) st4p1(z)%st23(z); rewind u; read (u,*) st1_x1(z)
      if (any(st1_x1(z)%st11/=st1p4))print *,'fail'
      if (any(st1_x1(z)%st12/=st2p4))print *,'fail'
      u=26;open (u,delim='quote')
      write(u,*) (/ st4p1(z)%st23(z)/); rewind u; read (u,*) st1_x1(-2)
      if (any(st1_x1(-2)%st11/=st1p4))print *,'fail'
      if (any(st1_x1(-2)%st12/=st2p4))print *,'fail'
      u=27;open (u,delim='quote')
      write(u,*) st1_fun(st4p1(z)%st23); rewind u; read (u,*) st1_x1
      if (any(st1_x1(-2)%st11/=st1p3))print *,'fail'
      if (any(st1_x1(-1)%st11/=st1p4))print *,'fail'
      if (any(st1_x1(-2)%st12/=st2p3))print *,'fail'
      if (any(st1_x1(-1)%st12/=st2p4))print *,'fail'
      u=28;open (u,delim='quote')
      write(u,*) st1_fun((/st4p1(z)%st23/)); rewind u; read (u,*) st1_x1
      if (any(st1_x1(-2)%st11/=st1p3))print *,'fail'
      if (any(st1_x1(-1)%st11/=st1p4))print *,'fail'
      if (any(st1_x1(-2)%st12/=st2p3))print *,'fail'
      if (any(st1_x1(-1)%st12/=st2p4))print *,'fail'
      u=29;open (u,delim='quote')
      write(u,*) st1_fun(st4p1%st23(z)); rewind u; read (u,*) st1_x1
      if (any(st1_x1(-2)%st11/=st1p2))print *,'fail'
      if (any(st1_x1(-1)%st11/=st1p4))print *,'fail'
      if (any(st1_x1(-2)%st12/=st2p2))print *,'fail'
      if (any(st1_x1(-1)%st12/=st2p4))print *,'fail'
      u=30;open (u,delim='quote')
      write(u,*) st1_fun((/st4p1(z)%st23/)); rewind u; read (u,*) st1_x1
      if (any(st1_x1(-2)%st11/=st1p3))print *,'fail'
      if (any(st1_x1(-1)%st11/=st1p4))print *,'fail'
      if (any(st1_x1(-2)%st12/=st2p3))print *,'fail'
      if (any(st1_x1(-1)%st12/=st2p4))print *,'fail'
      end
