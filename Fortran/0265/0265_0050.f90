               integer  function fun(dmy1)  bind(c,name='ss1')
                  implicit none
                  integer::dmy1
                      fun = 200
                      fun =fun+dmy1
                end function
               integer  function fun(dmy1)  bind(c,name='ss2')
                  implicit none
                  integer::dmy1
                      fun = 300
                      fun =fun+dmy1
                end function
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
                end function

                interface
                 integer  function fun(dmy1)  bind(c,name='ss2')
                  implicit none
                   integer::dmy1
                 end function
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
                if(fun(obj%prc(aa)) /= 800) print*,"101"
                if( aa /= 501) print*,"102",aa
                call insub() 
                print*,"pass"
                contains
                subroutine insub()
                interface
                 integer  function fun(dmy1)  bind(c,name='ss1')
                  implicit none
                   integer::dmy1
                 end function
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
                if(fun(obj%prc(aa)) /= 900) print*,"201",fun(obj%prc(aa))
                if( aa /= 701) print*,"202",aa
                 end 
            end

