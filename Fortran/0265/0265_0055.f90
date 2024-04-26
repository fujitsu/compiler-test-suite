   subroutine sub(dmy1)  bind(c,name='ss1')
        implicit none
        integer::dmy1
        dmy1=dmy1+200
      end subroutine
      subroutine sub(dmy1) bind(c,name='ss2')
        implicit none
        integer::dmy1
        dmy1=dmy1+100
     end subroutine
     subroutine s1(dmy1) bind(c)
       implicit none
       integer::dmy1
       dmy1=dmy1+300
       print*,"in s1"
     end subroutine
     interface
     subroutine sub(dmy1) bind(c,name='ss1')
       implicit none
       integer::dmy1
     end subroutine
     subroutine s1(dmy1) bind(c)
       implicit none
       integer::dmy1
     end subroutine
    end interface

       type ty
        integer :: ii
        contains
        procedure,nopass :: prc=>s1
       end type

       type,extends(ty) :: tty
        integer :: jj
        contains
        procedure,nopass :: prc=>sub
       end type

       class(ty),pointer :: obj
       type(tty),target:: trg
       integer :: aa = 2
       obj=>trg
       call obj%prc(aa)
       if(aa .ne. 202)print*,"101",aa
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

       type,extends(ty) :: tty2
         integer :: jj
       contains
         procedure,nopass :: prc=>sub
       end type

         class(ty),pointer :: obj
         type(tty2),target:: trg
         integer :: aa = 2
          obj=>trg
         call obj%prc(aa)
       if(aa .ne. 102)print*,"201",aa
       end subroutine
       end

