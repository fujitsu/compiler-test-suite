      call s1
      print *,'pass'
      end
      module test
       integer,parameter::l=-2,u=-1
       type st1
        complex     st11(l:u)
        character*2 st12(l:u)
       end type
       type st2
        complex       st21(l:u)
        character*2   st22(l:u)
        type (st1) :: st23(l:u)
       end type
       complex,dimension(l:u),parameter::st1p1=(/ (1,1),(2,2) /)
       complex,dimension(l:u),parameter::st1p2=(/ st1p1+(2,2)/)
       character(len=*),dimension(l:u),parameter::st2p1=(/'1','2'/)
       character(len=*),dimension(l:u),parameter::st2p2= (/ achar(ichar(st2p1)+2) /)
       type(st1),dimension(l:u),parameter::st3p1= (/ (st1( st1p1 , st2p1 ) , m=1,2)  /)
       type(st2),dimension(l:u),parameter::st4p1= (/ (st2(st1p2 ,st2p2 , st3p1),m=1,2) /)
       complex,parameter::m101=st4p1(-2)%st21(-2)
       complex,parameter::m102=st4p1(-2)%st21(-1)
       character*(*),parameter::m103=st4p1(-2)%st22(-2)
       character*(*),parameter::m104=st4p1(-2)%st22(-1)
       complex,parameter::m105=st4p1(-2)%st23(-2)%st11(-2)
       complex,parameter::m106=st4p1(-2)%st23(-2)%st11(-1)
       character*(*),parameter::m107=st4p1(-2)%st23(-2)%st12(-2)
       character*(*),parameter::m108=st4p1(-2)%st23(-2)%st12(-1)
       complex,parameter::m109=st4p1(-2)%st23(-1)%st11(-2)
       complex,parameter::m110=st4p1(-2)%st23(-1)%st11(-1)
       character*(*),parameter::m111=st4p1(-2)%st23(-1)%st12(-2)
       character*(*),parameter::m112=st4p1(-2)%st23(-1)%st12(-1)
       integer,parameter::x11l=lbound(st4p1,dim=1)
       integer,parameter::x11u=ubound(st4p1,dim=1)
       integer,parameter::x12l=lbound(st4p1(-1)%st21,dim=1)
       integer,parameter::x12u=ubound(st4p1(-1)%st21,dim=1)
       integer,parameter::x13l=lbound(st4p1(-1)%st22,dim=1)
       integer,parameter::x13u=ubound(st4p1(-1)%st22,dim=1)
       integer,parameter::x14l=lbound(st4p1(-1)%st23,dim=1)
       integer,parameter::x14u=ubound(st4p1(-1)%st23,dim=1)
       integer,parameter::x15l=lbound(st4p1(-1)%st23(-1)%st11,dim=1)
       integer,parameter::x15u=ubound(st4p1(-1)%st23(-1)%st11,dim=1)
       integer,parameter::x16l=lbound(st4p1(-1)%st23(-1)%st12,dim=1)
       integer,parameter::x16u=ubound(st4p1(-1)%st23(-1)%st12,dim=1)
       integer,parameter::x17l=lbound(st4p1%st21(-1),dim=1)
       integer,parameter::x17u=ubound(st4p1%st21(-1),dim=1)
       integer,parameter::x18l=lbound(st4p1%st23(-1),dim=1)
       integer,parameter::x18u=ubound(st4p1%st23(-1),dim=1)
       integer,parameter::x19l=lbound(st4p1%st23(-1)%st12(-1),dim=1)
       integer,parameter::x19u=ubound(st4p1%st23(-1)%st12(-1),dim=1)
       integer,parameter::x20l=lbound(st4p1(-1)%st23%st12(-1),dim=1)
       integer,parameter::x20u=ubound(st4p1(-1)%st23%st12(-1),dim=1)
       integer,parameter::x21l=lbound(st4p1%st22(-1)(:),dim=1)
       integer,parameter::x21u=ubound(st4p1%st22(-1)(:),dim=1)
       integer,parameter::x22l=lbound(st4p1%st23(-1)%st12(-1)(:),dim=1)
       integer,parameter::x22u=ubound(st4p1%st23(-1)%st12(-1)(:),dim=1)
       integer,parameter::x23l=lbound(st4p1(-1)%st23%st12(-1)(:),dim=1)
       integer,parameter::x23u=ubound(st4p1(-1)%st23%st12(-1)(:),dim=1)
       integer,parameter::y11l=lbound(st4p1(:),dim=1)
       integer,parameter::y11u=ubound(st4p1(:),dim=1)
       integer,parameter::y12l=lbound(st4p1(-1)%st21(:),dim=1)
       integer,parameter::y12u=ubound(st4p1(-1)%st21(:),dim=1)
       integer,parameter::y13l=lbound(st4p1(-1)%st22(:),dim=1)
       integer,parameter::y13u=ubound(st4p1(-1)%st22(:),dim=1)
       integer,parameter::y14l=lbound(st4p1(-1)%st23(:),dim=1)
       integer,parameter::y14u=ubound(st4p1(-1)%st23(:),dim=1)
       integer,parameter::y15l=lbound(st4p1(-1)%st23(-1)%st11(:),dim=1)
       integer,parameter::y15u=ubound(st4p1(-1)%st23(-1)%st11(:),dim=1)
       integer,parameter::y16l=lbound(st4p1(-1)%st23(-1)%st12(:),dim=1)
       integer,parameter::y16u=ubound(st4p1(-1)%st23(-1)%st12(:),dim=1)
       integer,parameter::y17l=lbound(st4p1(:)%st21(-1),dim=1)
       integer,parameter::y17u=ubound(st4p1(:)%st21(-1),dim=1)
       integer,parameter::y18l=lbound(st4p1(:)%st23(-1),dim=1)
       integer,parameter::y18u=ubound(st4p1(:)%st23(-1),dim=1)
       integer,parameter::y19l=lbound(st4p1(:)%st23(-1)%st12(-1),dim=1)
       integer,parameter::y19u=ubound(st4p1(:)%st23(-1)%st12(-1),dim=1)
       integer,parameter::y20l=lbound(st4p1(-1)%st23(:)%st12(-1),dim=1)
       integer,parameter::y20u=ubound(st4p1(-1)%st23(:)%st12(-1),dim=1)
       integer,parameter::y21l=lbound(st4p1(:)%st22(-1)(:),dim=1)
       integer,parameter::y21u=ubound(st4p1(:)%st22(-1)(:),dim=1)
       integer,parameter::y22l= lbound(st4p1(:)%st23(-1)%st12(-1)(:),dim=1)
       integer,parameter::y22u= ubound(st4p1(:)%st23(-1)%st12(-1)(:),dim=1)
       integer,parameter::y23l= lbound(st4p1(-1)%st23(:)%st12(-1)(:),dim=1)
       integer,parameter::y23u= ubound(st4p1(-1)%st23(:)%st12(-1)(:),dim=1)
       contains
        subroutine chk_scaler(st2_var_scaler)
        type (st2),intent(in)::st2_var_scaler 
        if (st2_var_scaler%st21(-2)/= (1,1)+(2,2))write(6,*) "NG"
        if (st2_var_scaler%st21(-1)/= (2,2)+(2,2))write(6,*) "NG"
        if (st2_var_scaler%st22(-2)/= '3'        )write(6,*) "NG"
        if (st2_var_scaler%st22(-1)/= '4'        )write(6,*) "NG"
        if (st2_var_scaler%st23(-2)%st11(-2)/=(1,1))write(6,*) "NG"
        if (st2_var_scaler%st23(-2)%st11(-1)/=(2,2))write(6,*) "NG"
        if (st2_var_scaler%st23(-2)%st12(-2)/='1'  )write(6,*) "NG"
        if (st2_var_scaler%st23(-2)%st12(-1)/='2'  )write(6,*) "NG"
        if (st2_var_scaler%st23(-1)%st11(-2)/=(1,1))write(6,*) "NG"
        if (st2_var_scaler%st23(-1)%st11(-1)/=(2,2))write(6,*) "NG"
        if (st2_var_scaler%st23(-1)%st12(-2)/='1'  )write(6,*) "NG"
        if (st2_var_scaler%st23(-1)%st12(-1)/='2'  )write(6,*) "NG"
        if (st2_var_scaler%st21(-2)/= m101)write(6,*) "NG"
        if (st2_var_scaler%st21(-1)/= m102)write(6,*) "NG"
        if (st2_var_scaler%st22(-2)/= m103)write(6,*) "NG"
        if (st2_var_scaler%st22(-1)/= m104)write(6,*) "NG"
        if (st2_var_scaler%st23(-2)%st11(-2)/=m105)write(6,*) "NG"
        if (st2_var_scaler%st23(-2)%st11(-1)/=m106)write(6,*) "NG"
        if (st2_var_scaler%st23(-2)%st12(-2)/=m107)write(6,*) "NG"
        if (st2_var_scaler%st23(-2)%st12(-1)/=m108)write(6,*) "NG"
        if (st2_var_scaler%st23(-1)%st11(-2)/=m109)write(6,*) "NG"
        if (st2_var_scaler%st23(-1)%st11(-1)/=m110)write(6,*) "NG"
        if (st2_var_scaler%st23(-1)%st12(-2)/=m111)write(6,*) "NG"
        if (st2_var_scaler%st23(-1)%st12(-1)/=m112)write(6,*) "NG"
        end subroutine
        subroutine chk_bound_dcl(x_lower,x_upper)
        integer x_lower,x_upper
        if (x_lower/=l)write(6,*) "NG"
        if (x_upper/=u)write(6,*) "NG"
        end subroutine
        subroutine chk_bound_exp(x_lower,x_upper)
        integer x_lower,x_upper
        if (x_lower/=1)write(6,*) "NG"
        if (x_upper/=2)write(6,*) "NG"
        end subroutine
      end module
      subroutine ss1
      use test
       complex,dimension(l:u)::tt1p1
       complex,dimension(l:u)::tt1p2
       character(len=1),dimension(l:u)::tt2p1
       character(len=1),dimension(l:u)::tt2p2
       type(st1),dimension(l:u)::tt3p1
       type(st2),dimension(l:u)::tt4p1
       complex::t101
       complex::t102
       character*(1)::t103
       character*(1)::t104
       complex::t105
       complex::t106
       character*(1)::t107
       character*(1)::t108
       complex::t109
       complex::t110
       character*(1)::t111
       character*(1)::t112
       integer::xt11l,xt11u,xt12l,xt12u,xt13l, xt13u, xt14l, xt14u,&
               xt15l,xt15u, xt16l, xt16u, xt17l, xt17u, xt18l, xt18u,&
               xt19l,xt19u, xt20l, xt20u, xt21l, xt21u, xt22l, xt22u,&
               xt23l, xt23u
       integer::yt11l,yt11u,yt12l,yt12u,yt13l, yt13u, yt14l, yt14u,&
               yt15l,yt15u, yt16l, yt16u, yt17l, yt17u, yt18l, yt18u,&
               yt19l,yt19u, yt20l, yt20u, yt21l, yt21u, yt22l, yt22u,&
               yt23l, yt23u
      type(st2)::st2s,st2t,st2u,st2v,st2w,st2x,st2y,st2z
       tt1p1=(/ (1,1),(2,2) /)
       tt1p2=(/ st1p1+(2,2)/)
       tt2p1=(/'1','2'/)
       tt2p2=  (/ achar(ichar(tt2p1)+2) /)
       tt3p1= (/ (st1( tt1p1 , tt2p1 ) , m=1,2)  /)
       tt4p1= (/ (st2(tt1p2 ,tt2p2 , tt3p1),m=1,2) /)
       t101=tt4p1(-2)%st21(-2)
       t102=tt4p1(-2)%st21(-1)
       t103=tt4p1(-2)%st22(-2)
       t104=tt4p1(-2)%st22(-1)
       t105=tt4p1(-2)%st23(-2)%st11(-2)
       t106=tt4p1(-2)%st23(-2)%st11(-1)
       t107=tt4p1(-2)%st23(-2)%st12(-2)
       t108=tt4p1(-2)%st23(-2)%st12(-1)
       t109=tt4p1(-2)%st23(-1)%st11(-2)
       t110=tt4p1(-2)%st23(-1)%st11(-1)
       t111=st4p1(-2)%st23(-1)%st12(-2)
       t112=st4p1(-2)%st23(-1)%st12(-1)
       xt11l=lbound(st4p1,dim=1)
       xt11u=ubound(st4p1,dim=1)
       xt12l=lbound(st4p1(-1)%st21,dim=1)
       xt12u=ubound(st4p1(-1)%st21,dim=1)
       xt13l=lbound(st4p1(-1)%st22,dim=1)
       xt13u=ubound(st4p1(-1)%st22,dim=1)
       xt14l=lbound(st4p1(-1)%st23,dim=1)
       xt14u=ubound(st4p1(-1)%st23,dim=1)
       xt15l=lbound(st4p1(-1)%st23(-1)%st11,dim=1)
       xt15u=ubound(st4p1(-1)%st23(-1)%st11,dim=1)
       xt16l=lbound(st4p1(-1)%st23(-1)%st12,dim=1)
       xt16u=ubound(st4p1(-1)%st23(-1)%st12,dim=1)
       xt17l=lbound(st4p1%st21(-1),dim=1)
       xt17u=ubound(st4p1%st21(-1),dim=1)
       xt18l=lbound(st4p1%st23(-1),dim=1)
       xt18u=ubound(st4p1%st23(-1),dim=1)
       xt19l=lbound(st4p1%st23(-1)%st12(-1),dim=1)
       xt19u=ubound(st4p1%st23(-1)%st12(-1),dim=1)
       xt20l=lbound(st4p1(-1)%st23%st12(-1),dim=1)
       xt20u=ubound(st4p1(-1)%st23%st12(-1),dim=1)
       xt21l=lbound(st4p1%st22(-1)(:),dim=1)
       xt21u=ubound(st4p1%st22(-1)(:),dim=1)
       xt22l=lbound(st4p1%st23(-1)%st12(-1)(:),dim=1)
       xt22u=ubound(st4p1%st23(-1)%st12(-1)(:),dim=1)
       xt23l=lbound(st4p1(-1)%st23%st12(-1)(:),dim=1)
       xt23u=ubound(st4p1(-1)%st23%st12(-1)(:),dim=1)
       yt11l=lbound(st4p1(:),dim=1)
       yt11u=ubound(st4p1(:),dim=1)
       yt12l=lbound(st4p1(-1)%st21(:),dim=1)
       yt12u=ubound(st4p1(-1)%st21(:),dim=1)
       yt13l=lbound(st4p1(-1)%st22(:),dim=1)
       yt13u=ubound(st4p1(-1)%st22(:),dim=1)
       yt14l=lbound(st4p1(-1)%st23(:),dim=1)
       yt14u=ubound(st4p1(-1)%st23(:),dim=1)
       yt15l=lbound(st4p1(-1)%st23(-1)%st11(:),dim=1)
       yt15u=ubound(st4p1(-1)%st23(-1)%st11(:),dim=1)
       yt16l=lbound(st4p1(-1)%st23(-1)%st12(:),dim=1)
       yt16u=ubound(st4p1(-1)%st23(-1)%st12(:),dim=1)
       yt17l=lbound(st4p1(:)%st21(-1),dim=1)
       yt17u=ubound(st4p1(:)%st21(-1),dim=1)
       yt18l=lbound(st4p1(:)%st23(-1),dim=1)
       yt18u=ubound(st4p1(:)%st23(-1),dim=1)
       yt19l=lbound(st4p1(:)%st23(-1)%st12(-1),dim=1)
       yt19u=ubound(st4p1(:)%st23(-1)%st12(-1),dim=1)
       yt20l=lbound(st4p1(-1)%st23(:)%st12(-1),dim=1)
       yt20u=ubound(st4p1(-1)%st23(:)%st12(-1),dim=1)
       yt21l=lbound(st4p1(:)%st22(-1)(:),dim=1)
       yt21u=ubound(st4p1(:)%st22(-1)(:),dim=1)
       yt22l=lbound(st4p1(:)%st23(-1)%st12(-1)(:),dim=1)
       yt22u=ubound(st4p1(:)%st23(-1)%st12(-1)(:),dim=1)
       yt23l=lbound(st4p1(-1)%st23(:)%st12(-1)(:),dim=1)
       yt23u=ubound(st4p1(-1)%st23(:)%st12(-1)(:),dim=1)
      st2x=&
      st2((/m101,m102/),(/m103,m104/),&
          (/ st1((/m105,m106/),(/m107,m108/)),&
             st1((/m109,m110/),(/m111,m112/)) /) )
      st2y=&
      st2(st4p1(-1)%st21,st4p1(-1)%st22,&
       (/st1((/st4p1(-1)%st23(-2)%st11/),(/st4p1(-1)%st23(-2)%st12/)),&
         st1((/st4p1(-1)%st23(-1)%st11/),(/st4p1(-1)%st23(-1)%st12/))/)&
      )
      st2z=&
      st2(st4p1(-1)%st21,st4p1(-1)%st22,&
       (/st1(  st4p1(-1)%st23(-2)%st11  ,  st4p1(-1)%st23(-2)%st12  ),&
         st1(  st4p1(-1)%st23(-1)%st11  ,  st4p1(-1)%st23(-1)%st12  )/)&
      ) 
      st2w=&
      st2(st4p1(-1)%st21,st4p1(-1)%st22,&
       (/      st4p1(-1)%st23(-2)                                    ,&
               st4p1(-1)%st23(-1)                               /)  )
      st2v=&
      st2(st4p1(-1)%st21,st4p1(-1)%st22,&
       (/      st4p1(-1)%st23  /)  ) 
      st2u=&
      st2(st4p1(-1)%st21,st4p1(-1)%st22,&
               st4p1(-1)%st23      )
      st2t=&
      st2((/st4p1(-1)%st21/),(/st4p1(-1)%st22/),(/st4p1(-1)%st23 /) )
      st2s=           st4p1(-1) 
      call chk_scaler(st2x)
      call chk_scaler(st2y)
      call chk_scaler(st2z)
      call chk_scaler(st2w)
      call chk_scaler(st2v)
      call chk_scaler(st2u)
      call chk_scaler(st2t)
      call chk_scaler(st2s)
      st2y=&
      st2(tt4p1(-1)%st21,st4p1(-1)%st22,&
       (/st1((/tt4p1(-1)%st23(-2)%st11/),(/tt4p1(-1)%st23(-2)%st12/)),&
         st1((/tt4p1(-1)%st23(-1)%st11/),(/tt4p1(-1)%st23(-1)%st12/))/)&
      )
      call chk_scaler(st2y)
      st2z=&
      st2(tt4p1(-1)%st21,tt4p1(-1)%st22,&
       (/st1(  tt4p1(-1)%st23(-2)%st11  ,  tt4p1(-1)%st23(-2)%st12  ),&
         st1(  tt4p1(-1)%st23(-1)%st11  ,  tt4p1(-1)%st23(-1)%st12  )/)&
      ) 
      call chk_scaler(st2z)
      st2w=&
      st2(tt4p1(-1)%st21,tt4p1(-1)%st22,&
       (/      tt4p1(-1)%st23(-2)                                    ,&
               tt4p1(-1)%st23(-1)                               /)  )
      call chk_scaler(st2w)
      st2v=&
      st2(tt4p1(-1)%st21,tt4p1(-1)%st22,&
       (/      tt4p1(-1)%st23  /)  ) 
      call chk_scaler(st2v)
      st2u=&
      st2(st4p1(-1)%st21,st4p1(-1)%st22,&
               st4p1(-1)%st23      )
      st2t= st2((/st4p1(-1)%st21/),(/st4p1(-1)%st22/),(/st4p1(-1)%st23 /) )
      call chk_scaler(st2t)
      st2s=           tt4p1(-1) 
      call chk_scaler(st2s)
      call chk_scaler(&
      st2((/m101,m102/),(/m103,m104/),&
          (/ st1((/m105,m106/),(/m107,m108/)),&
             st1((/m109,m110/),(/m111,m112/)) /) ))
      call chk_scaler(&
      st2(tt4p1(-1)%st21,tt4p1(-1)%st22,&
       (/st1((/tt4p1(-1)%st23(-2)%st11/),(/tt4p1(-1)%st23(-2)%st12/)),&
         st1((/tt4p1(-1)%st23(-1)%st11/),(/tt4p1(-1)%st23(-1)%st12/))/)&
      ))
      call chk_scaler(&
      st2(tt4p1(-1)%st21,tt4p1(-1)%st22,&
       (/st1(  tt4p1(-1)%st23(-2)%st11  ,  tt4p1(-1)%st23(-2)%st12  ),&
         st1(  tt4p1(-1)%st23(-1)%st11  ,  tt4p1(-1)%st23(-1)%st12  )/)&
      ))
      call chk_scaler(&
      st2(tt4p1(-1)%st21,tt4p1(-1)%st22,&
       (/      tt4p1(-1)%st23(-2)                                    ,&
               tt4p1(-1)%st23(-1)                               /)  ))
      call chk_scaler(&
      st2(tt4p1(-1)%st21,tt4p1(-1)%st22,&
      (/      tt4p1(-1)%st23  /)  ))
      call chk_scaler(&
      st2(tt4p1(-1)%st21,tt4p1(-1)%st22,&
               tt4p1(-1)%st23      ))
      call chk_scaler(&
      st2((/tt4p1(-1)%st21/),(/tt4p1(-1)%st22/),(/tt4p1(-1)%st23 /) ))
      call chk_scaler(       tt4p1(-1)    )
      call chk_bound_dcl(xt11l,xt11u)
      call chk_bound_dcl(xt12l,xt12u)
      call chk_bound_dcl(xt13l,xt13u)
      call chk_bound_dcl(xt14l,xt14u)
      call chk_bound_dcl(xt15l,xt15u)
      call chk_bound_dcl(xt16l,xt16u)
      call chk_bound_exp(xt17l,xt17u)
      call chk_bound_exp(xt18l,xt18u)
      call chk_bound_exp(xt19l,xt19u)
      call chk_bound_exp(xt20l,xt20u)
      call chk_bound_exp(xt21l,xt21u)
      call chk_bound_exp(xt22l,xt22u)
      call chk_bound_exp(xt23l,xt23u)
      call chk_bound_exp(yt11l,yt11u)
      call chk_bound_exp(yt12l,yt12u)
      call chk_bound_exp(yt13l,yt13u)
      call chk_bound_exp(yt14l,yt14u)
      call chk_bound_exp(yt15l,yt15u)
      call chk_bound_exp(yt16l,yt16u)
      call chk_bound_exp(yt17l,yt17u)
      call chk_bound_exp(yt18l,yt18u)
      call chk_bound_exp(yt19l,yt19u)
      call chk_bound_exp(yt20l,yt20u)
      call chk_bound_exp(yt21l,yt21u)
      call chk_bound_exp(yt22l,yt22u)
      call chk_bound_exp(yt23l,yt23u)
      end
      subroutine s1
      use test
      type(st2),parameter::st2x=&
      st2((/m101,m102/),(/m103,m104/),&
          (/ st1((/m105,m106/),(/m107,m108/)),&
             st1((/m109,m110/),(/m111,m112/)) /) ),&
                          st2y=&
      st2(st4p1(-1)%st21,st4p1(-1)%st22,&
       (/st1((/st4p1(-1)%st23(-2)%st11/),(/st4p1(-1)%st23(-2)%st12/)),&
         st1((/st4p1(-1)%st23(-1)%st11/),(/st4p1(-1)%st23(-1)%st12/))/)&
      ),&
                          st2z=&
      st2(st4p1(-1)%st21,st4p1(-1)%st22,&
       (/st1(  st4p1(-1)%st23(-2)%st11  ,  st4p1(-1)%st23(-2)%st12  ),&
         st1(  st4p1(-1)%st23(-1)%st11  ,  st4p1(-1)%st23(-1)%st12  )/)&
      ),&
                          st2w=&
      st2(st4p1(-1)%st21,st4p1(-1)%st22,&
       (/      st4p1(-1)%st23(-2)                                    ,&
               st4p1(-1)%st23(-1)                               /)  ),&
                          st2v=&
      st2(st4p1(-1)%st21,st4p1(-1)%st22,&
       (/      st4p1(-1)%st23  /)  ),&
                          st2u=&
      st2(st4p1(-1)%st21,st4p1(-1)%st22,&
               st4p1(-1)%st23      ),&
                          st2t=&
      st2((/st4p1(-1)%st21/),(/st4p1(-1)%st22/),(/st4p1(-1)%st23 /) ),&
                          st2s=&
                            st4p1(-1) 
      call ss1
      call chk_scaler(st2x)
      call chk_scaler(st2y)
      call chk_scaler(st2z)
      call chk_scaler(st2w)
      call chk_scaler(st2v)
      call chk_scaler(st2u)
      call chk_scaler(st2t)
      call chk_scaler(st2s)
      call chk_scaler(&
      st2((/m101,m102/),(/m103,m104/),&
          (/ st1((/m105,m106/),(/m107,m108/)),&
             st1((/m109,m110/),(/m111,m112/)) /) ))
      call chk_scaler(&
      st2(st4p1(-1)%st21,st4p1(-1)%st22,&
       (/st1((/st4p1(-1)%st23(-2)%st11/),(/st4p1(-1)%st23(-2)%st12/)),&
         st1((/st4p1(-1)%st23(-1)%st11/),(/st4p1(-1)%st23(-1)%st12/))/)&
      ))
      call chk_scaler(&
      st2(st4p1(-1)%st21,st4p1(-1)%st22,&
       (/st1(  st4p1(-1)%st23(-2)%st11  ,  st4p1(-1)%st23(-2)%st12  ),&
         st1(  st4p1(-1)%st23(-1)%st11  ,  st4p1(-1)%st23(-1)%st12  )/)&
      ))
      call chk_scaler(&
      st2(st4p1(-1)%st21,st4p1(-1)%st22,&
       (/      st4p1(-1)%st23(-2)                                    ,&
               st4p1(-1)%st23(-1)                               /)  ))
      call chk_scaler(&
      st2(st4p1(-1)%st21,st4p1(-1)%st22,&
       (/      st4p1(-1)%st23  /)  ))
      call chk_scaler(&
      st2(st4p1(-1)%st21,st4p1(-1)%st22,&
               st4p1(-1)%st23      ))
      call chk_scaler(&
      st2((/st4p1(-1)%st21/),(/st4p1(-1)%st22/),(/st4p1(-1)%st23 /) ))
      call chk_scaler(       st4p1(-1)    )
      call chk_bound_dcl(x11l,x11u)
      call chk_bound_dcl(x12l,x12u)
      call chk_bound_dcl(x13l,x13u)
      call chk_bound_dcl(x14l,x14u)
      call chk_bound_dcl(x15l,x15u)
      call chk_bound_dcl(x16l,x16u)
      call chk_bound_exp(x17l,x17u)
      call chk_bound_exp(x18l,x18u)
      call chk_bound_exp(x19l,x19u)
      call chk_bound_exp(x20l,x20u)
      call chk_bound_exp(x21l,x21u)
      call chk_bound_exp(x22l,x22u)
      call chk_bound_exp(x23l,x23u)
      call chk_bound_exp(y11l,y11u)
      call chk_bound_exp(y12l,y12u)
      call chk_bound_exp(y13l,y13u)
      call chk_bound_exp(y14l,y14u)
      call chk_bound_exp(y15l,y15u)
      call chk_bound_exp(y16l,y16u)
      call chk_bound_exp(y17l,y17u)
      call chk_bound_exp(y18l,y18u)
      call chk_bound_exp(y19l,y19u)
      call chk_bound_exp(y20l,y20u)
      call chk_bound_exp(y21l,y21u)
      call chk_bound_exp(y22l,y22u)
      call chk_bound_exp(y23l,y23u)
      end