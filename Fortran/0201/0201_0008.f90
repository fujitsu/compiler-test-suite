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

                   procedure(sub),pointer :: prc
                      integer :: bb=2
                      call sub(bb)
                      if(bb .ne. 100)print*,"102",bb
                      end subroutine
                     end
