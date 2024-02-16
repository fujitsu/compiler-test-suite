subroutine s
interface
  function fun(r)
  intent(in)::r
  end function
end interface
intrinsic sin
type x
 integer ::x1
 procedure(fun),pointer,nopass::p1
 procedure(sin),pointer,nopass::p2
end type
type(x),dimension(100)::z
dimension c(100)
forall (i=1:100)
  z(i)%p1=>fun
end forall

do i=1,100
 c(i)=z(i)%p1(.1)
 c(i) = c(i)-fun(0.1)
end do
do i=1,100
 if (c(i) > 0.001) print *,101,i,c(i)
end do

forall (i=1:100)
  z(i)%p2=>sin
  c(i)=z(i)%p2(.1)
end forall
do i=1,100
 if (abs(c(i)-fun(0.1))>0.001)print *,101,i,c(i)
end do
end
call s
print *,'pass'
end

 function fun(r)
intent(in)::r
fun=r
end function
