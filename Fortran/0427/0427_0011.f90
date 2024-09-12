print *,"pass"
end
subroutine test01()
interface
subroutine sub() bind(c) 
end subroutine
function   fun() bind(c)
end function   fun
end interface
call sub()
i=fun()
end

subroutine sub() bind(c)
end subroutine
function   fun() bind(c)
end function   fun

module mod
contains
subroutine suba() bind(c)
entry suba1() bind(c)
end subroutine
function   funa() bind(c)
entry funa1() bind(c)
end function   
subroutine subb()
call suba()
call suba1()
i=funa1()
i=funa()
end subroutine
end

subroutine sss()
use mod
call suba()
call suba1()
i=funa1()
i=funa()
end

subroutine sss2()
use mod,xsuba=>suba
use mod,xsuba1=>suba1
use mod,xfuna=>funa
use mod,xfuna1=>funa1
call xsuba()
call xsuba1()
i=xfuna1()
i=xfuna()
end

module mod1
interface
subroutine sub() bind(c)
end subroutine
function   fun() bind(c)
end function   fun
end interface
end

subroutine sss3()
use mod1
call sub()
i=fun()
end

subroutine sss4()
use mod1,xsub=>sub
use mod1,xfun=>fun
call xsub()
i=xfun()
end

subroutine sss5()
use mod1,xsub=>sub
use mod1,xfun=>fun
use mod1,only:sub,fun
call xsub()
i=xfun()
call sub()
i=fun()
end

subroutine sss6()
use mod,only:xsuba=>suba
use mod,only:xsuba1=>suba1
use mod,only:xfuna=>funa
use mod,only:xfuna1=>funa1
use mod,only:suba
use mod,only:suba1
use mod,only:funa
use mod,only:funa1
call xsuba()
call xsuba1()
i=xfuna1()
i=xfuna()
i=funa1()
i=funa()
call suba1()
call suba()
end
