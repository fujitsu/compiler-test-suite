integer  function fun(dmy1)  bind(c,name='ss1')
                  implicit none
                  integer::dmy1
                      fun = 200
                        dmy1=fun+dmy1
                 end function
                integer  function fun(dmy1)  bind(c,name='ss2')
                     implicit none
                     integer::dmy1
                      fun = 100
                        dmy1=fun+dmy1
                 end function
                interface
                integer  function fun(dmy1)  bind(c,name='ss1')
                  implicit none
                   integer::dmy1
                 end function
                end interface
                procedure(fun),pointer :: prc=>fun
                integer :: aa=1
                if(prc(aa) /= 200) print*,"101"
                if( aa /= 201) print*,"102"
                 
                call zzz
                print*,"pass"
              contains
                subroutine zzz
                interface
                integer  function fun(dmy1)  bind(c,name='ss2')
                     implicit none
                     integer::dmy1
                 end function
                end interface
                procedure(fun),pointer :: prc=>fun
                integer :: aa=1
                if(prc(aa) /= 100) print*,"103"
                if( aa /= 101) print*,"104"
                end subroutine
            end

