               subroutine fun(dmy1)  bind(c,name='ss1')
                  implicit none
                  integer::dmy1
                      if(dmy1 .ne. 700) print*,"301"
                end 
               subroutine fun(dmy1)  bind(c,name='ss2')
                  implicit none
                  integer::dmy1
                      if(dmy1 .ne. 500) print*,"401"
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
                 subroutine fun(dmy1)  bind(c,name='ss2')
                  implicit none
                   integer::dmy1
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
                call fun(obj%prc(aa))
                if( aa /= 501) print*,"102",aa
                call fun(f2(aa))
                if( aa /= 1001) print*,"102",aa
                call insub() 
                print*,"pass"
                contains
                subroutine insub()
                interface
                 subroutine fun(dmy1)  bind(c,name='ss1')
                  implicit none
                   integer::dmy1
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
               
                integer :: aa = 1
                call fun(obj%prc(aa))
                if( aa /= 701) print*,"202",aa
                 end 
            end

