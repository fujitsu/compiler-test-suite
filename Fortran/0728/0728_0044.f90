print *,'pass'
end

module mod
contains
pure function   n(a)
real,dimension(:),intent(in)::a
integer n
n=size(a)
end function
SUBROUTINE S6(A)
   REAL :: A(:)
   REAL :: TEMP(N(A))
   REAL :: T(nn(A))
print*,size(temp)
print*,size(t)
end SUBROUTINE
pure function   nn(a)
real,dimension(:),intent(in)::a
integer nn
nn=size(a)
end function
end
