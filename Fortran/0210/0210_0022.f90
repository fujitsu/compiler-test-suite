call s1
call s2
print *,'pass'
end
subroutine s1
parameter(k=2)
real   (k),parameter, dimension(2) :: bb=(/1,2/)
real   (k),parameter::xx(2,3)=reshape((/1,2,1,2,1,2/),(/2,3/))
complex(k), dimension(2,3) :: x=cmplx(xx,xx)
complex(k), dimension(2) :: b=cmplx(bb,bb)
complex(k), dimension(2,3) :: a
a = spread(b,2,3) 
if(any(a/=x)) print *,'err'
end
subroutine s2
parameter(k=8)
real   (k),parameter, dimension(2) :: bb=(/1,2/)
real   (k),parameter::xx(2,3)=reshape((/1,2,1,2,1,2/),(/2,3/))
complex(k), dimension(2,3) :: x=cmplx(xx,xx)
complex(k), dimension(2) :: b=cmplx(bb,bb)
complex(k), dimension(2,3) :: a
a = spread(b,2,3) 
if(any(a/=x)) print *,'err'
end
