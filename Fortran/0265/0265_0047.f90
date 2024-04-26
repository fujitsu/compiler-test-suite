              function fun(dmy1)  bind(c,name='ss1')
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
 
               function  fun(dmy1)  bind(c,name='ss2')
                implicit none
                interface
                 integer  function f2(dmy1)  bind(c,name='ss4')
                  implicit none
                   integer::dmy1
                 end function
                end interface
                 procedure(f2) :: dmy1
                 integer::fun
                 integer :: aa,bb 
                 aa=2
                 bb=2
                 fun = dmy1(bb) + 10
                    if(dmy1(aa) .ne. 700) print*,"602"
                    if(aa .ne. 702) print*,"603",aa
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
                 function  fun(dmy1)  bind(c,name='ss1')
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
                type ty
                 contains
                  procedure,nopass :: prc=>f2
                end type
                type(ty) :: obj
               
                integer :: aa = 1
                if( fun(f2) /= 510) print*,"142"
                if( fun(f2) /= 510) print*,"143"
                call insub()
                if( fun(f2) /= 510) print*,"144"
                if(obj%prc(aa) /=500)print*,"132"
                print*,"pass"
                contains
                subroutine insub()
                interface
                 function fun(dmy1)  bind(c,name='ss2')
                  implicit none
                  interface
                   integer  function f2(dmy1)  bind(c,name='ss4')
                    implicit none
                    integer::dmy1
                   end function
                  end interface
                 procedure(f2) :: dmy1
                 integer::fun
                end 
                 integer  function f2(dmy1)  bind(c,name='ss4')
                  implicit none
                   integer::dmy1
                 end function
                end interface
                type ty
                 contains
                  procedure,nopass :: prc=>f2
                end type
                type(ty) :: obj
               
                integer :: aa = 0
                 aa=1
                if(obj%prc(aa) /=700)print*,"122"
                 if(aa /= 701)print*,"121"
                if(fun(f2) /= 710) print*,"145"
                 end 
            end

