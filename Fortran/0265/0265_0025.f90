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
                
                if( zzz(fun(ss),obj%prc1(ss)) /= 09) print*,"131"
                call zzz2()
                print*,"pass"
              contains

                integer function zzz(dmy4,dmy5)
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
                zzz =09
                 if(in_sub(fun) /=19)print*,"132"
                 if(in_sub(fun) /=19)print*,"133"
                 if(in_sub(obj%prc1) /=19)print*,"134"
                if( zzz3(fun(ss),obj%prc1(ss)) /=29)print*,"135"
                end function
                subroutine zzz2
               interface
                 integer function fun(dmy1)  bind(c,name='ss1')
                  implicit none
                  integer::dmy1
                 end 
                end interface
                 if(in_sub2(fun) /=39) print*,"136"
                 if(in_sub2(fun) /=39) print*,"137"
                end subroutine

             integer function in_sub(dproc)
                interface
                 integer function fun(dmy1)  bind(c,name='ss2')
                  implicit none
                  integer::dmy1
                 end 
                end interface
              procedure(fun):: dproc
                integer :: bb
                 in_sub=19
                 bb=2
                if( dproc(bb) /=100) print*,"401" 
                if(bb .ne. 102)print*,"402",bb
             end
             integer function in_sub2(dproc)
                interface
                 integer function fun(dmy1)  bind(c,name='ss1')
                  implicit none
                  integer::dmy1
                 end 
                end interface
              procedure(fun) :: dproc
                integer :: bb 
                in_sub2=39
                bb=2
                if(dproc(bb) /=200) print*,"501" 
                if(bb .ne. 202)print*,"502",bb
             end

               integer function zzz3(dmy1,dmy2)
                integer::dmy1,dmy2
                zzz3=29
                if(dmy1 /=100)print*,"801"
                if(dmy2/= 100)print*,"802"
               end 

            end


