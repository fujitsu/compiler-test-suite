print *,'pass'
end

module mod01
contains
SUBROUTINE S6(A)
   REAL :: A(:)
   REAL :: TEMP(N(A))
   REAL :: T(nn(A))
i=size(temp)
i=size(t)
end SUBROUTINE
pure function   nn(a)
real,dimension(:),intent(in)::a
integer nn
nn=size(a)
end function
pure function   n(a)
real,dimension(:),intent(in)::a
integer n
n=size(a)
end function
end

module mod02
contains
pure function   nn(a)
real,dimension(:),intent(in)::a
integer nn
nn=size(a)
end function
pure function   n(a)
real,dimension(:),intent(in)::a
integer n
n=size(a)
end function
SUBROUTINE S6(A)
   REAL :: A(:)
   REAL :: TEMP(N(A))
   REAL :: T(nn(A))
i=size(temp)
i=size(t)
end SUBROUTINE
end

module mod03
contains
subroutine subb()
contains
SUBROUTINE S6(A)
   REAL :: A(:)
   REAL :: TEMP(N(A))
   REAL :: T(nn(A))
i=size(temp)
i=size(t)
end SUBROUTINE
end SUBROUTINE
pure function   nn(a)
real,dimension(:),intent(in)::a
integer nn
nn=size(a)
end function
pure function   n(a)
real,dimension(:),intent(in)::a
integer n
n=size(a)
end function
end

module mod04
contains
pure function   nn(a)
real,dimension(:),intent(in)::a
integer nn
nn=size(a)
end function
pure function   n(a)
real,dimension(:),intent(in)::a
integer n
n=size(a)
end function
subroutine subb()
contains
SUBROUTINE S6(A)
   REAL :: A(:)
   REAL :: TEMP(N(A))
   REAL :: T(nn(A))
i=size(temp)
i=size(t)
end SUBROUTINE
end SUBROUTINE
end

module mod05
contains
pure function   nn(a)
real,dimension(:),intent(in)::a
integer nn
nn=size(a)
end function
pure function   n(a)
real,dimension(:),intent(in)::a
integer n
n=size(a)
end function
end
subroutine subb004()
use mod05
contains
SUBROUTINE S6(A)
   REAL :: A(:)
   REAL :: TEMP(N(A))
   REAL :: T(nn(A))
i=size(temp)
i=size(t)
end SUBROUTINE
end SUBROUTINE

module mod06
contains
pure function   nn(a)
real,dimension(:),intent(in)::a
integer nn
nn=size(a)
end function
pure function   n(a)
real,dimension(:),intent(in)::a
integer n
n=size(a)
end function
end
subroutine subb006()
contains
SUBROUTINE S6(A)
use mod06
   REAL :: A(:)
   REAL :: TEMP(N(A))
   REAL :: T(nn(A))
i=size(temp)
i=size(t)
end SUBROUTINE
end SUBROUTINE
