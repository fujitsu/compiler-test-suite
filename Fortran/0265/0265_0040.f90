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
                procedure(sub),pointer :: prc=>sub
                integer :: aa=1
                call prc(aa)
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
                procedure(sub),pointer :: prc=>sub
       
                call prc(aa)
                if(aa .ne. 100)print*,"102",aa
                end subroutine
            end

