module m1
integer:: a(2,2)
integer::n1=2,n2=2
contains
pure function f(k) result(r)
integer,intent(in)::k
integer::r(k)
r=k    
end function
subroutine s1(k1,k2,k3,k4)
!$omp workshare
do     n3=1,k3
  a(n3,:)=f(2)
end do     
!$omp end workshare
end subroutine
end
print *,'pass'
end
