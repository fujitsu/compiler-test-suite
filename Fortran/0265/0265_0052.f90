              function fun(dmy1)  
                implicit none
                interface
                 integer  function f2(dmy1)  bind(c,name='ss3')
                  implicit none
                   integer::dmy1
                 end function
                end interface
                 procedure(f2) :: dmy1
                 integer :: aa,bb 
                 integer::fun
                  aa=1
                  bb=1
                 fun = dmy1(bb) + 10
                    if(dmy1(aa) .ne. 500) print*,"301"
                    if(aa .ne. 501) print*,"302",aa
                end

               integer  function f2(dmy1)  bind(c,name='ss3')
                  implicit none
                  integer::dmy1
                      f2 = 500
                      dmy1=f2+dmy1
                end function
               integer  function f2(dmy1)  bind(c,name='ss4')
                  implicit none
                  integer::dmy1
                      f2 = 700
                      dmy1=f2+dmy1
                end

                interface 
                 integer  function f2(dmy1)  bind(c,name='ss4')
                  implicit none
                   integer::dmy1
                 end function
              end interface
              integer::dd=2
              if(f2(dd) /= 700) print*,"201"
              if(dd /= 702)print*,"203"
              call zzz()
         
             print*,"pass"
             contains

             subroutine zzz()
                interface
                 function  fun(dmy1)  
                  implicit none
                  interface
                   integer  function f2(dmy1)  bind(c,name='ss3')
                    implicit none
                    integer::dmy1
                   end function
                  end interface
                 procedure(f2) :: dmy1
                 integer::fun
                end 
                 integer  function f2(dmy1)  bind(c,name='ss3')
                  implicit none
                   integer::dmy1
                 end function
               end interface
               
                if( fun(f2) /= 510) print*,"142",fun(f2)
                if( fun(f2) /= 510) print*,"143"
                if( fun(f2) /= 510) print*,"144"
            end
end

