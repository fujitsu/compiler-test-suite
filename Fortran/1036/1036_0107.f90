function is(k) result(n)
interface
 pure function if(i)
  common /x/ j(2,2)
  intent(in)::i
 end function
end interface
integer::n(if(k))
if (any(shape(n)/=3))print *,'error'
n(1)=1
n(2)=2
n(3)=3
end

interface
function is(k) result(n)
interface
 pure function if(i)
  common /x/ j(2,2)
  intent(in)::i
 end function
end interface
integer::n(if(k))
end function
end interface
integer m(2)
call set
m(2)=2
mm=2
call chk(is(m(mm)))
print *,'pass'
end

pure function if(i)
common /x/ j(2,2)
intent(in)::i
if=j(2,2)-i
end function

subroutine chk(is)
integer is(3)
if (any(is/=(/1,2,3/)))print *,'error-2'
end

subroutine set
common /x/ j(2,2)
j(2,2)=5
end
