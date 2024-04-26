       subroutine sub(dmy1)  bind(c,name='ss1')
       implicit none
       integer::dmy1
       dmy1=200
       end subroutine
       subroutine sub(dmy1) bind(c,name='ss2')
       implicit none
       integer::dmy1
       dmy1=100
       end subroutine
  
       interface
       subroutine sub(dmy1) bind(c,name='ss1')
       implicit none
       integer::dmy1
       end subroutine
       end interface
       type ty
           procedure(sub),nopass,pointer :: prc=>sub
       end type
       integer :: aa=1
       type(ty)::obj
       procedure(sub),pointer :: prc
       prc=>obj%prc
       call prc(aa)
       if(aa .ne. 200)print*,"100",aa
       call sub(aa)
       if(aa .ne. 200)print*,"101",aa
       call zzz
       print*,"pass"
       contains

       subroutine zzz
       interface
       subroutine sub(dmy1) bind(c,name='ss2')
       implicit none
       integer::dmy1
       end subroutine
       end interface
       type ty1
           procedure(sub),nopass,pointer :: prc=>sub
       end type
       procedure(sub),pointer :: prc
       type(ty1)::obj
       prc=>obj%prc
 
           call in_sub(prc)
           call in_sub(prc)
       end subroutine

       subroutine in_sub(dproc)
       interface
       subroutine sub(dmy1) bind(c,name='ss2')
       implicit none
       integer::dmy1
       end subroutine
       end interface
       procedure(sub),pointer,intent(IN) :: dproc
       integer :: bb=2
            call dproc(bb)
            call dproc(bb)
       if(bb .ne. 100)print*,"102",bb
       end
       end

