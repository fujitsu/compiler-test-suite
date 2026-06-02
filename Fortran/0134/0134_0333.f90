subroutine s
interface
  pure function fun(r)
  intent(in)::r
  end function
end interface
intrinsic sin
type x
 integer ::x1
 procedure(fun),pointer,nopass::p1
 procedure(sin),pointer,nopass::p2
end type
type(x),dimension(3)::z
dimension c(3)
forall (i=1:3)
  z(i)%p1=>fun
end forall
do i=1,3
 c(i)=z(i)%p1(.1)
 if (abs(c(i)-fun(0.1))>0.001)print *,101,i,c(i)
end do
forall (i=1:3)
  z(i)%p2=>sin
  c(i)=z(i)%p2(.1)
end forall
do i=1,3
 if (abs(c(i)-sin(0.1))>0.001)print *,201,i,c(i)
end do
end
call s
print *,'pass'
end
pure function fun(r)
intent(in)::r
fun=r
end function
