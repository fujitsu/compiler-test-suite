c
c ow=g1128
c
      call s1
      print *,'pass'
      end
      module l_u
       integer,parameter::l=-3,u=-1
      end module
      module test
       use l_u
        type st1
          integer     st11_m(l:u)
          complex     st12_m(l:u)
          character*1 st13_m(l:u)
        end type
        integer    ,parameter,dimension(l:u):: st11_p=(/1,2,3/)
        complex    ,parameter,dimension(l:u):: st12_p=
     1                                           (/(1,1),(2,2),(3,3)/)
        character*1,parameter,dimension(l:u):: st13_p=(/'1','2','3'/)
        type(st1)  ,parameter,dimension(l:u):: st14_p=
     1  (/ ( st1( (/st11_p(:)/), (/st12_p(:)/),(/st13_p(:)/) ),m=l,u) /)
        type st2
          type (st1),dimension(l:u)::st21
        end type
        type(st2),parameter,dimension(l:u)::st24_p=
     1  (/ ( st2( (/ (st14_p(n),n=l,u) /) ) ,m=l,u) /) 
       integer,parameter::l11=lbound(st11_p,dim=1)
       integer,parameter::l12=lbound(st12_p,dim=1)
       integer,parameter::l13=lbound(st13_p,dim=1)
       integer,parameter::l14=lbound(st14_p,dim=1)
       integer,parameter::u11=ubound(st11_p,dim=1)
       integer,parameter::u12=ubound(st12_p,dim=1)
       integer,parameter::u13=ubound(st13_p,dim=1)
       integer,parameter::u14=ubound(st14_p,dim=1)
       integer,parameter::l21=lbound(st14_p%st11_m(u),dim=1)
       integer,parameter::l22=lbound(st14_p%st12_m(u),dim=1)
       integer,parameter::l23=lbound(st14_p%st13_m(u),dim=1)
       integer,parameter::u21=ubound(st14_p%st11_m(u),dim=1)
       integer,parameter::u22=ubound(st14_p%st12_m(u),dim=1)
       integer,parameter::u23=ubound(st14_p%st13_m(u),dim=1)
       integer,parameter::l31=lbound(st14_p(u)%st11_m,dim=1)
       integer,parameter::l32=lbound(st14_p(u)%st12_m,dim=1)
       integer,parameter::l33=lbound(st14_p(u)%st13_m,dim=1)
       integer,parameter::u31=ubound(st14_p(u)%st11_m,dim=1)
       integer,parameter::u32=ubound(st14_p(u)%st12_m,dim=1)
       integer,parameter::u33=ubound(st14_p(u)%st13_m,dim=1)
       integer,parameter::l41=lbound(st24_p%st21(u)%st11_m(u),dim=1)
       integer,parameter::l42=lbound(st24_p%st21(u)%st12_m(u),dim=1)
       integer,parameter::l43=lbound(st24_p%st21(u)%st13_m(u),dim=1)
       integer,parameter::l44=lbound(st24_p%st21(u)          ,dim=1)
       integer,parameter::u41=ubound(st24_p%st21(u)%st11_m(u),dim=1)
       integer,parameter::u42=ubound(st24_p%st21(u)%st12_m(u),dim=1)
       integer,parameter::u43=ubound(st24_p%st21(u)%st13_m(u),dim=1)
       integer,parameter::u44=ubound(st24_p%st21(u)          ,dim=1)
       integer,parameter::l51=lbound(st24_p(u)%st21%st11_m(u),dim=1)
       integer,parameter::l52=lbound(st24_p(u)%st21%st12_m(u),dim=1)
       integer,parameter::l53=lbound(st24_p(u)%st21%st13_m(u),dim=1)
       integer,parameter::l54=lbound(st24_p(u)%st21          ,dim=1)
       integer,parameter::u51=ubound(st24_p(u)%st21%st11_m(u),dim=1)
       integer,parameter::u52=ubound(st24_p(u)%st21%st12_m(u),dim=1)
       integer,parameter::u53=ubound(st24_p(u)%st21%st13_m(u),dim=1)
       integer,parameter::u54=ubound(st24_p(u)%st21          ,dim=1)
       integer,parameter::l61=lbound(st24_p(u)%st21(u)%st11_m,dim=1)
       integer,parameter::l62=lbound(st24_p(u)%st21(u)%st12_m,dim=1)
       integer,parameter::l63=lbound(st24_p(u)%st21(u)%st13_m,dim=1)
       integer,parameter::u61=ubound(st24_p(u)%st21(u)%st11_m,dim=1)
       integer,parameter::u62=ubound(st24_p(u)%st21(u)%st12_m,dim=1)
       integer,parameter::u63=ubound(st24_p(u)%st21(u)%st13_m,dim=1)
      end module
      subroutine s1
      use test
       if (l11/=l)call errtra
       if (l12/=l)call errtra
       if (l13/=l)call errtra
       if (l14/=l)call errtra
       if (u11/=u)call errtra
       if (u12/=u)call errtra
       if (u13/=u)call errtra
       if (u14/=u)call errtra
       if (l31/=l)call errtra
       if (l32/=l)call errtra
       if (l33/=l)call errtra
       if (u31/=u)call errtra
       if (u32/=u)call errtra
       if (u33/=u)call errtra
       if (l54/=l)call errtra
       if (u54/=u)call errtra
       if (l61/=l)call errtra
       if (l62/=l)call errtra
       if (l63/=l)call errtra
       if (u61/=u)call errtra
       if (u62/=u)call errtra
       if (u63/=u)call errtra
       if (l11/=lbound(st11_p,dim=1))call errtra
       if (l12/=lbound(st12_p,dim=1))call errtra
       if (l13/=lbound(st13_p,dim=1))call errtra
       if (l14/=lbound(st14_p,dim=1))call errtra
       if (u11/=ubound(st11_p,dim=1))call errtra
       if (u12/=ubound(st12_p,dim=1))call errtra
       if (u13/=ubound(st13_p,dim=1))call errtra
       if (u14/=ubound(st14_p,dim=1))call errtra
       if (l31/=lbound(st14_p(-1)%st11_m,dim=1))call errtra
       if (l32/=lbound(st14_p(-1)%st12_m,dim=1))call errtra
       if (l33/=lbound(st14_p(-1)%st13_m,dim=1))call errtra
       if (u31/=ubound(st14_p(-1)%st11_m,dim=1))call errtra
       if (u32/=ubound(st14_p(-1)%st12_m,dim=1))call errtra
       if (u33/=ubound(st14_p(-1)%st13_m,dim=1))call errtra
       if (l54/=lbound(st24_p(-1)%st21          ,dim=1))call errtra
       if (u54/=ubound(st24_p(-1)%st21          ,dim=1))call errtra
       if (l61/=lbound(st24_p(-1)%st21(-1)%st11_m,dim=1))call errtra
       if (l62/=lbound(st24_p(-1)%st21(-1)%st12_m,dim=1))call errtra
       if (l63/=lbound(st24_p(-1)%st21(-1)%st13_m,dim=1))call errtra
       if (u61/=ubound(st24_p(-1)%st21(-1)%st11_m,dim=1))call errtra
       if (u62/=ubound(st24_p(-1)%st21(-1)%st12_m,dim=1))call errtra
       if (u63/=ubound(st24_p(-1)%st21(-1)%st13_m,dim=1))call errtra
       end
