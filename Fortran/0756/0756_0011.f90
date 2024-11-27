module m1
type x
integer:: a(2,2,2,2)
end type
type(x)::z
integer::n1=2,n2=2
contains
pure function f(n2,n3,k2,k1,k) result(r)
integer,intent(in)::n2,n3,k2,k1,k
integer::r(k2,k1)
r=n2+n3
end function
subroutine s1(k1,k2,k3,k4)
!$omp workshare
do      n2=1,k1
do     n3=1,k3
  z%a(n2,:,n3,:)=f(n2,n3,k2,k4,1)
end do     
end do     
!$omp end workshare
end subroutine
end
print *,'pass'
end
