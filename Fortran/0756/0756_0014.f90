module m1
integer:: a(2)
contains
pure function f(k) result(r)
integer,intent(in)::k
integer::r
r=k    
end function
subroutine s1()
!$omp workshare
do     n3=1,2
  a(n3)=f(2)
end do     
!$omp end workshare
end subroutine
end
print *,'pass'
end
