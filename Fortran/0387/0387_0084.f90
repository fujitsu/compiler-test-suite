interface
 subroutine sub1() bind(c)
 end subroutine
 function func1() bind(c)
 end function
end interface

procedure(sub1),  bind(c),            pointer  :: ppp1
procedure(sub1),  bind(c, name = 'a')          :: xxxx

procedure(func1), bind(c),            pointer  :: ppp2
procedure(func1), bind(c, name = 'b')          :: yyyy

ppp1 => xxxx

ppp2 => yyyy

if (ppp2().ne.1.0) print *,'error'
if (yyyy().ne.1.0) print *,'error'

print *,'pass'

end

subroutine sub1() bind(c)
end subroutine

subroutine xxxx() bind(c, name = 'a')
end subroutine

function func1() bind(c)
 func1 = 1.0
end function

function yyyy() bind(c, name = 'b')
 yyyy = 1.0
end function
