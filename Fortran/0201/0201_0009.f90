    1         subroutine sub(dmy1)  bind(c,name='ss1')
        2          implicit none
        3          integer::dmy1
        4                dmy1=dmy1+200
        5         end subroutine
        6         subroutine sub(dmy1) bind(c,name='ss2')
        7             implicit none
        8             integer::dmy1
        9                dmy1=dmy1+100
       10         end subroutine
       11         subroutine s1(dmy1) bind(c)
       12           implicit none
       13            integer::dmy1
       14                dmy1=dmy1+300
       15         end subroutine

       17         interface
       18         subroutine sub(dmy1) bind(c,name='ss1')
       19           implicit none
       20            integer::dmy1
       21         end subroutine
       22         subroutine s1(dmy1) bind(c)
       23           implicit none
       24            integer::dmy1
       25         end subroutine
       26         end interface
       27         type ty
       28           integer :: ii
       29           contains
       30            procedure,nopass :: prc=>s1
       31         end type
       32         type,extends(ty) :: tty
       33           integer :: jj
       34           contains
       35            procedure,nopass :: prc=>sub
       36         end type
       37         class(ty),pointer :: obj
       38         type(tty),target:: trg
       39         integer :: aa = 2
       40         obj=>trg
       41         call obj%prc(aa)

       43         if(aa .ne. 202)print*,"101",aa

       45         call zzz
       46         print*,"pass"

       48       contains
       49         subroutine zzz
       50         interface
       51          subroutine sub(dmy1) bind(c,name='ss2')
       52           implicit none
       53            integer::dmy1
       54          end subroutine
       55         end interface
       56         type,extends(ty) :: tty2
       57           integer :: jj
       58           contains
       59            procedure,nopass :: prc=>sub
       60         end type
       61         class(ty),pointer :: obj
       62         type(tty2),target:: trg
       63         integer :: aa = 2
       64         obj=>trg
       65         call obj%prc(aa)

       67         if(aa .ne. 102)print*,"201",aa
       68         end subroutine
       69       end
