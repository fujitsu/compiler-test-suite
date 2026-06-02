IMPLICIT NONE
interface
function fun4()
character(2) :: fun4
end
end interface
integer :: n=2,n3
associate (n3 =>n)
 block
  character(n3) ,  external :: fun4*(2)
 if (len(fun4() ).ne.2) print *,'NG'
 end block
end associate
call sub(2)
print *,'pass'
end
function fun4()
character(2) :: fun4
fun4='aa'
end

subroutine sub(ii)
character(2 ) ,  external :: fun4
 if (len(fun4() ).ne.2) print *,'NG2'
end
