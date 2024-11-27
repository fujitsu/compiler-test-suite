module m1
integer:: a(2)
contains
subroutine s1()
interface
pure function f(k) result(r)
integer,intent(in)::k
integer::r
end function
end interface
!$omp workshare
  a=f(2)
!$omp end workshare
end subroutine
end
print *,'pass'
end
pure function f(k) result(r)
integer,intent(in)::k
integer::r
r=k    
end function
