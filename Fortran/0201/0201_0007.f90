module m1
                     interface
                      subroutine sub(dmy1) bind(c,name='ss2')
                        implicit none
                        integer::dmy1
                       end subroutine
                      end interface
end
module m2
                     interface
                     subroutine sub(dmy1) bind(c,name='ss1')
                       implicit none
                         integer::dmy1
                     end subroutine
                      end interface
end
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

use m2
                      procedure(sub),pointer :: prc
                      integer :: aa=1
                      prc=>sub
                      call prc(aa)

                      if(aa .ne. 200)print*,"101",aa

                      call zzz
                      print*,"pass"

                    contains
                      subroutine zzz
use m1

                   procedure(sub),pointer :: prc
                      integer :: bb=2
                     prc=>sub
                      call prc(bb)
                      if(bb .ne. 100)print*,"102",bb
                      end subroutine
                     end
