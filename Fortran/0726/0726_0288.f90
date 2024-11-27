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
      subroutine s1
      use test
      type(st2),parameter::st2x=&
     & st2((/m101,m102/),(/m103,m104/),&
     &     (/ st1((/m105,m106/),(/m107,m108/)),&
     &        st1((/m109,m110/),(/m111,m112/)) /) ),&
     &                     st2y=&
     & st2(st4p1(-1)%st21,st4p1(-1)%st22,&
     &  (/st1((/st4p1(-1)%st23(-2)%st11/),(/st4p1(-1)%st23(-2)%st12/)),&
     &    st1((/st4p1(-1)%st23(-1)%st11/),(/st4p1(-1)%st23(-1)%st12/))/)&
     & ),&
     &                     st2z=&
     & st2(st4p1(-1)%st21,st4p1(-1)%st22,&
     &  (/st1(  st4p1(-1)%st23(-2)%st11  ,  st4p1(-1)%st23(-2)%st12  ),&
     &    st1(  st4p1(-1)%st23(-1)%st11  ,  st4p1(-1)%st23(-1)%st12  )/)&
     & ),&
     &                     st2w=&
     & st2(st4p1(-1)%st21,st4p1(-1)%st22,&
     &  (/      st4p1(-1)%st23(-2)                                    ,&
     &          st4p1(-1)%st23(-1)                               /)  ),&
     &                     st2v=&
     & st2(st4p1(-1)%st21,st4p1(-1)%st22,&
     &  (/      st4p1(-1)%st23  /)  ),&
     &                     st2u=&
     & st2(st4p1(-1)%st21,st4p1(-1)%st22,&
     &          st4p1(-1)%st23      ),&
     &                     st2t=&
     & st2((/st4p1(-1)%st21/),(/st4p1(-1)%st22/),(/st4p1(-1)%st23 /) ),&
     &                     st2s=&
     &                       st4p1(-1) 
      call chk_scaler(st2x)
      call chk_scaler(st2y)
      call chk_scaler(st2z)
      call chk_scaler(st2w)
      call chk_scaler(st2v)
      call chk_scaler(st2u)
      call chk_scaler(st2t)
      call chk_scaler(st2s)
      call chk_scaler( st2((/m101,m102/),(/m103,m104/), (/ st1((/m105,m106/),(/m107,m108/)), st1((/m109,m110/),(/m111,m112/)) /) ))
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
