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
       procedure(sub),pointer :: prc
       integer :: aa=1
       prc=>sub
       call prc(aa)
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
           call in_sub(sub)
           call in_sub(sub)
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

