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
                 integer function fun(dmy1)  bind(c)
                  implicit none
                  integer::dmy1
                         fun=300
                        dmy1=fun+dmy1
                 end 
                interface
                integer function fun(dmy1)  bind(c)
                  implicit none
                  integer::dmy1
                 end 
                end interface
               type ty2
                 procedure(fun),pointer,nopass::prc1=>fun
               end type
                  type(ty2)::obj
                integer::ss=10
                if(fun(ss) /= 300)print*,"501"
                if(ss /= 310)print*,"502"
                
                call zzz(fun(ss),obj%prc1(ss))
                call zzz2()
                print*,"pass"
              contains

                subroutine zzz(dmy4,dmy5)
               interface
                 integer function fun(dmy1)  bind(c,name='ss2')
                  implicit none
                  integer::dmy1
                 end 
                end interface
               type ty3
                 procedure(fun),pointer,nopass::prc1=>fun
               end type
                  type(ty3)::obj
                   integer::ss=20
                integer::dmy4,dmy5
                 if(dmy4/=300)print*,"601"
                 if(dmy5/=300)print*,"602"
                 call in_sub(fun)
                 call in_sub(fun)
                 call in_sub(obj%prc1)
                call zzz3(fun(ss),obj%prc1(ss))
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

               subroutine zzz3(dmy1,dmy2)
                integer::dmy1,dmy2
                if(dmy1 /=100)print*,"801"
                if(dmy2/= 100)print*,"802"
               end subroutine

            end


