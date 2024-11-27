module bug

  public :: foo
  private :: bar

contains

  recursive function foo (x, channel) result (foo_x)
    real, intent(in) :: x
    integer, intent(in) :: channel
    real :: foo_x
    if (channel == 0) then
       foo_x = bar (x, foo)
    else
       foo_x = 1.0
    end if
  end function foo

  function bar (x, f) result (f_x)
    real, intent(in) :: x
    interface
       recursive function f (x, channel) result (fx)
         real, intent(in) :: x
         integer, intent(in) :: channel
         real :: fx
       end function f
    end interface
    real :: f_x
    f_x = f (x, 1)
  end function bar

end module bug

program main
   use bug
   write(1,*) foo(1.0,0), foo(1.0,1)
   rewind 1
   read (1,*) a,b
   if (abs(a-b)>0.00001)write(6,*) "NG"
print *,'pass'
end program main
