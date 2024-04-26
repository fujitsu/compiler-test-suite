          integer function fun(dmy1)  bind(c,name='ss1')
                  implicit none
                  integer::dmy1
                         fun=200
                        dmy1=fun+dmy1
                 end 
                 integer function fun(dmy1)  bind(c,name='ss2')
                  implicit none
                  integer::dmy1
                         fun=100
                        dmy1=fun+dmy1
                 end 
                interface
                integer function fun(dmy1)  bind(c,name='ss1')
                  implicit none
                  integer::dmy1
                 end 
                end interface
                call zzz
                call zzz2
                print*,"pass"
              contains

                subroutine zzz
               interface
                 integer function fun(dmy1)  bind(c,name='ss2')
                  implicit none
                  integer::dmy1
                 end 
                end interface
                 call in_sub(fun)
                 call in_sub(fun)
                end subroutine
                subroutine zzz2
               interface
                 integer function fun(dmy1)  bind(c,name='ss1')
                  implicit none
                  integer::dmy1
                 end 
                end interface
                 call in_sub2(fun)
                 call in_sub2(fun)
                end subroutine

             subroutine in_sub(dproc)
                interface
                 integer function fun(dmy1)  bind(c,name='ss2')
                  implicit none
                  integer::dmy1
                 end 
                end interface
              procedure(fun):: dproc
                integer :: bb
                 bb=2
                if( dproc(bb) /=100) print*,"401" 
                if(bb .ne. 102)print*,"402",bb
             end
             subroutine in_sub2(dproc)
                interface
                 integer function fun(dmy1)  bind(c,name='ss1')
                  implicit none
                  integer::dmy1
                 end 
                end interface
              procedure(fun) :: dproc
                integer :: bb 
                bb=2
                if(dproc(bb) /=200) print*,"501" 
                if(bb .ne. 202)print*,"502",bb
             end
            end


