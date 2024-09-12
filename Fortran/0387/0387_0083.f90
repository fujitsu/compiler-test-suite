interface
 subroutine sub1() bind(c)
 end subroutine
 function func1() bind(c)
 end function
end interface

procedure(sub1),  bind(c, name = 'a') :: xxxx
procedure(func1), bind(c, name = 'b') :: yyyy

call csub1(xxxx)
call csub2(yyyy)

print *,'pass'

contains
 subroutine csub1(eee)
  procedure(sub1)  , bind(c) :: eee
 end subroutine
 subroutine csub2(fff)
  procedure(func1) , bind(c) :: fff
 end subroutine
end

subroutine sub1() bind(c)
end subroutine

subroutine xxxx() bind(c, name = 'a')
end subroutine

subroutine eee() bind(c)
end subroutine

function func1() bind(c)
 func1 = 1.0
end function

function yyyy() bind(c, name = 'b')
 yyyy = 1.0
end function
