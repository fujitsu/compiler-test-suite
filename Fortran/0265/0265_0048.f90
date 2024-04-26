              function fun(dmy1)  bind(c,name='ss1')
                implicit none
                interface
                 subroutine f2(dmy1)  bind(c,name='ss3')
                  implicit none
                   integer::dmy1
                 end 
                end interface
                 procedure(f2) :: dmy1
                 integer :: aa
                 integer::fun
                  aa=1
                 call dmy1(aa) 
                  fun =aa+10
                    if(aa .ne. 501) print*,"302",aa
                end
 
               function  fun(dmy1)  bind(c,name='ss2')
                implicit none
                interface
                 subroutine  f2(dmy1)  bind(c,name='ss4')
                  implicit none
                   integer::dmy1
                 end 
                end interface
                 procedure(f2) :: dmy1
                 integer::fun
                 integer :: aa
                 aa=2
                 call dmy1(aa) 
                  fun =aa+10
                    if(aa .ne. 702) print*,"602",aa
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
                 function  fun(dmy1)  bind(c,name='ss1')
                  implicit none
                  interface
                   subroutine f2(dmy1)  bind(c,name='ss3')
                    implicit none
                    integer::dmy1
                   end 
                  end interface
                 procedure(f2) :: dmy1
                 integer::fun
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
                if( fun(f2) /= 511) print*,"142"
                if( fun(f2) /= 511) print*,"143"
                call insub()
                if( fun(f2) /= 511) print*,"144"
                call obj%prc(aa)
                 if(aa /= 501)print*,"141"
                print*,"pass"
                contains
                subroutine insub()
                interface
                 function fun(dmy1)  bind(c,name='ss2')
                  implicit none
                  interface
                   subroutine   f2(dmy1)  bind(c,name='ss4')
                    implicit none
                    integer::dmy1
                   end 
                  end interface
                 procedure(f2) :: dmy1
                 integer::fun
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
                if(fun(f2) /= 712) print*,"145"
                 end 
            end

