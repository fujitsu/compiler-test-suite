module m1
integer:: a(2)
contains
pure function ff(k) result(r)
entry    f(k) result(r)
integer,intent(in)::k
integer::r
r=k    
end function
subroutine s1()
!$omp workshare
  a=f(2)
!$omp end workshare
end subroutine
end
print *,'pass'
end
