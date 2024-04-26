                subroutine  fun(dmy1)  bind(c,name='ss1')
                  implicit none
                  integer::dmy1
                        dmy1=200+dmy1
                 end 
                 subroutine  fun(dmy1)  bind(c,name='ss2')
                  implicit none
                  integer::dmy1
                        dmy1=100+dmy1
                 end 
                call zzz
                call zzz2
                print*,"pass"
              contains

                subroutine zzz
               interface
                  subroutine fun(dmy1)  bind(c,name='ss2')
                  implicit none
                  integer::dmy1
                 end 
                end interface
                 call in_sub(fun)
                 call in_sub(fun)
                end subroutine
                subroutine zzz2
               interface
                 subroutine fun(dmy1)  bind(c,name='ss1')
                  implicit none
                  integer::dmy1
                 end 
                end interface
                 call in_sub2(fun)
                 call in_sub2(fun)
                end subroutine

             subroutine in_sub(dproc)
                interface
                 subroutine fun(dmy1)  bind(c,name='ss2')
                 implicit none
                  integer::dmy1
                 end 
                end interface
              procedure(fun),pointer,intent(in) :: dproc
                integer :: bb
                bb=2
                call  dproc(bb)
                if(bb .ne. 102)print*,"301",bb
             end
             subroutine in_sub2(dproc)
                interface
                 subroutine fun(dmy1)  bind(c,name='ss1')
                  implicit none
                  integer::dmy1
                 end 
                end interface
              procedure(fun),pointer,intent(in) :: dproc
                integer :: bb
                  bb=2
               call  dproc(bb)
                if(bb .ne. 202)print*,"302",bb
             end
            end


