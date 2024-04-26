              subroutine fun(dmy1)  bind(c,name='ss1')
                implicit none
                interface
                 subroutine f2(dmy1)  bind(c,name='ss3')
                  implicit none
                   integer::dmy1
                 end 
                end interface
                 procedure(f2) :: dmy1
                 integer :: aa 
                  aa=1
                 call dmy1(aa) 
                    if(aa .ne. 501) print*,"302",aa
                end
 
               subroutine fun(dmy1)  bind(c,name='ss2')
                implicit none
                interface
                 subroutine  f2(dmy1)  bind(c,name='ss4')
                  implicit none
                   integer::dmy1
                 end 
                end interface
                 procedure(f2) :: dmy1
                 integer :: aa 
                 aa=2
                 call dmy1(aa) 
                    if(aa .ne. 702) print*,"603"
                end 
               subroutine f2(dmy1)  bind(c,name='ss3')
                  implicit none
                  integer::dmy1
                     dmy1 = 500+dmy1
                end 
               subroutine f2(dmy1)  bind(c,name='ss4')
                  implicit none
                  integer::dmy1
                      dmy1=700+dmy1
                end

                interface
                 subroutine   fun(dmy1)  bind(c,name='ss1')
                  implicit none
                  interface
                   subroutine f2(dmy1)  bind(c,name='ss3')
                    implicit none
                    integer::dmy1
                   end 
                  end interface
                 procedure(f2) :: dmy1
                end 
                 subroutine  f2(dmy1)  bind(c,name='ss3')
                  implicit none
                   integer::dmy1
                 end 
               end interface
                type ty
                 contains
                  procedure,nopass :: prc=>f2
                end type
                type(ty) :: obj
               
                integer :: aa = 1
                call fun(f2)
                call fun(f2)
                call insub()
                call fun(f2)
                call obj%prc(aa) 
                if(aa /= 501)print*,"203"
                print*,"pass"
                
                contains
                subroutine insub()
                interface
                 subroutine  fun(dmy1)  bind(c,name='ss2')
                  implicit none
                  interface
                   subroutine   f2(dmy1)  bind(c,name='ss4')
                    implicit none
                    integer::dmy1
                   end 
                  end interface
                 procedure(f2) :: dmy1
                end 
                 subroutine f2(dmy1)  bind(c,name='ss4')
                  implicit none
                   integer::dmy1
                 end 
                end interface
                type ty
                 contains
                  procedure,nopass :: prc=>f2
                end type
                type(ty) :: obj
               
                integer :: aa = 0
                 aa=1
                call obj%prc(aa) 
                 if(aa /= 701)print*,"121"
                call fun(f2) 
                 end 
            end

