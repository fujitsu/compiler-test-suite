print *,'pass'
end

module mod
type,public  :: ty1
private
integer,public :: ty11
end type
end


module mod1
type,public,bind(c)  :: ty1
private
integer,public :: ty11
end type
end

module mod2
type,private,bind(c):: ty1
private
integer,public :: ty11
end type
type(ty1),bind(c,name='aaa') :: ttt
end

module mod3
type,private:: tY1
 integer :: aaa
end type
type,private,extends(tY1) :: ty2
 integer :: bbb
end type
 
end


module mod5
integer :: vvv,xxx,zzz
bind(c,name='aaaaaa') :: vvv
!$omp threadprivate(zzz)
end

module mod4
common /com/ aaa
bind(c,name='aaaaaa2') :: /com/
end 
module mod6
integer :: vvv
bind(c,name='vvvvv') :: vvv
end
module mod7
use mod6,kkk=>vvv
use mod6,CCC=>vvv
use mod6,jjj=>vvv
integer :: vvv
bind(c,name='vvvv') :: vvv
end

subroutine subbb()
use mod7
vvv=1
end
