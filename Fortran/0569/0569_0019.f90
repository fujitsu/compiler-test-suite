         type ty
            integer :: t
         end type
         type tty
         class(ty),pointer :: alc
         end type
        integer :: a=2
        type(tty) :: b
        b = fun(a)
        if(b%alc%t /= 102)print*,"121"
        print*,"PASS"
        contains
           pure function fun(x)
              integer,intent(in) :: x
              type(tty),allocatable :: fun
               allocate(fun)
               allocate(fun%alc)
               fun%alc%t=x+100
           end function
        end
