interface fun
function ifun(ii) result(ians)
end function
function jfun(i,j) result(ians)
integer,intent(in) :: i
logical,intent(in) :: j
end function
end interface
integer arr(10)
do i=1,10
 arr(i)=fun(i)
end do
if (all(arr.ne.(/1,2,3,4,5,6,7,8,9,10/))) write(6,*) "NG"
call test()
call test2()
call test3()
print *,"pass"
end


function ifun(ii) result(ians)
ians=ii
end function


subroutine test()
interface assignment(=)
subroutine sub1(i,j)
integer,intent(inout) :: i
logical,intent(in) :: j
end subroutine
end interface
i=.false.
if (i.ne.100) write(6,*) "NG"
end


subroutine sub1(i,j)
integer,intent(inout) :: i
logical,intent(in) :: j
i=100
end subroutine


subroutine test2()
interface operator(+)
function  kfun(i,j)
integer,intent(in) :: i
logical,intent(in) :: j
end function
end interface
i=1
i=i+.false.
if (i.ne.100) write(6,*) "NG"
end

function  kfun(i,j)
integer,intent(in) :: i
logical,intent(in) :: j
kfun=100
end function


subroutine test3()
interface operator(.aaa.)
function  jfun(i,j)
integer,intent(in) :: i
logical,intent(in) :: j
end function
end interface
i=1
i=i.aaa..false.
if (i.ne.100) write(6,*) "NG"
end

function  jfun(i,j)
integer,intent(in) :: i
logical,intent(in) :: j
jfun=100
end function

