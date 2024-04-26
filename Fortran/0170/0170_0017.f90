subroutine s1(n)
complex :: a1(n),a2(10,10),a3(10,10),a4(100+100)
a1=1
a2=cmplx(reshape([(k,k=1,100)],[10,10]), reshape([(k,k=1,100)],[10,10]))
a3=cmplx(reshape([(k,k=1,100)],[10,10]), reshape([(k,k=1,100)],[10,10]))
a4=[real:: a1, a1, a1 ,a1 , a2 , a3  ]
if (any(a4/=real([ &
  cmplx(reshape([(k,k=1,100)],[10,10]), reshape([(k,k=1,100)],[10,10])), &
  cmplx(reshape([(k,k=1,100)],[10,10]), reshape([(k,k=1,100)],[10,10])) &
 ] ))) print *,101,a4
if (any([ real:: a1, a1, a1 , a2 , a3  ]/=real([ &
  cmplx(reshape([(k,k=1,100)],[10,10]), reshape([(k,k=1,100)],[10,10])), &
  cmplx(reshape([(k,k=1,100)],[10,10]), reshape([(k,k=1,100)],[10,10])) &
 ] ))) print *,102
if (size( [ real:: a1, a1, a1 , a2 , a3  ] ) /= 100+100) print *,103
if (any( ubound( [ real:: a1, a1, a1 , a2 , a3  ] ) /= 100+100)) print *,104
call foo( [ real:: a1, a1, a1 , a2 , a3  ] )
contains
subroutine foo( x )
real :: x(:)
if (any(x/=real([  &
  cmplx(reshape([(k,k=1,100)],[10,10]), reshape([(k,k=1,100)],[10,10])), &
  cmplx(reshape([(k,k=1,100)],[10,10]), reshape([(k,k=1,100)],[10,10])) &
 ] )) )print *,105
end subroutine
end
do k=1,1
call s1(0)
end do
print *,'pass'
end

