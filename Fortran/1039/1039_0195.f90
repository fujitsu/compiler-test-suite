subroutine s0
type x
  SEQUENCE
  INTEGER, DIMENSION(100, 3) :: a
end type
type(x)::v(2)
  v(2)%a=3; v(2)%a(:10,:)=2
  CALL f(10, v(2)%a( :10, :))
  if (v(2)%a(2, 3)/=1)write(6,*) "NG"
  v(2)%a=3; v(2)%a(:10,:)=2
  CALL f(10, v(2)%a(1:10, :))
  if (v(2)%a(2, 3)/=1)write(6,*) "NG"
  v(2)%a=3; v(2)%a(91:,:)=2
  CALL f(10, v(2)%a(91:, :))
  if (v(2)%a(92, 3)/=1)write(6,*) "NG"
end
subroutine s1
type x
  SEQUENCE
  INTEGER, DIMENSION(:, :) , POINTER :: a
end type
type(x)::v(2)
  ALLOCATE(v(2)%a(100, 3))
  v(2)%a=3; v(2)%a(:10,:)=2
  CALL f(10, v(2)%a( :10, :))
  if (v(2)%a(2, 3)/=1)write(6,*) "NG"
  v(2)%a=3; v(2)%a(:10,:)=2
  CALL f(10, v(2)%a(1:10, :))
  if (v(2)%a(2, 3)/=1)write(6,*) "NG"
  v(2)%a=3; v(2)%a(91:,:)=2
  CALL f(10, v(2)%a(91:, :))
  if (v(2)%a(92, 3)/=1)write(6,*) "NG"
end
subroutine s2
type x
  SEQUENCE
  INTEGER, DIMENSION(:, :) , allocatable :: a
end type
type(x)::v(2)
  ALLOCATE(v(2)%a(100, 3))
  v(2)%a=3; v(2)%a(:10,:)=2
  CALL f(10, v(2)%a( :10, :))
  if (v(2)%a(2, 3)/=1)write(6,*) "NG"
  v(2)%a=3; v(2)%a(:10,:)=2
  CALL f(10, v(2)%a(1:10, :))
  if (v(2)%a(2, 3)/=1)write(6,*) "NG"
  v(2)%a=3; v(2)%a(91:,:)=2
  CALL f(10, v(2)%a(91:, :))
  if (v(2)%a(92, 3)/=1)write(6,*) "NG"
end
subroutine s3
type x
  SEQUENCE
  INTEGER, DIMENSION(:, :) , allocatable :: a
end type
type(x)::v(2)
  ALLOCATE(v(2)%a(100, 3))
 call s3s(v)
contains
 subroutine s3s(v)
type x
  SEQUENCE
  INTEGER, DIMENSION(:, :) , allocatable :: a
end type
type(x)::v(:)
  v(2)%a=3; v(2)%a(:10,:)=2
  CALL f(10, v(2)%a( :10, :))
  if (v(2)%a(2, 3)/=1)write(6,*) "NG"
  v(2)%a=3; v(2)%a(:10,:)=2
  CALL f(10, v(2)%a(1:10, :))
  if (v(2)%a(2, 3)/=1)write(6,*) "NG"
  v(2)%a=3; v(2)%a(91:,:)=2
  CALL f(10, v(2)%a(91:, :))
  if (v(2)%a(92, 3)/=1)write(6,*) "NG"
 end subroutine
end
subroutine s4
type x
  SEQUENCE
  INTEGER, DIMENSION(:, :) , POINTER :: a
  INTEGER, DIMENSION(100, 3) :: t
end type
type(x),target::v(2)
  v(2)%t=3; v(2)%t(:10,:)=2
  v(2)%a=>v(2)%t(:10,:)
  CALL f(10, v(2)%a)
  if (v(2)%t(2, 3)/=1)write(6,*) "NG"
  v(2)%t=3; v(2)%t(1:10,:)=2
  v(2)%a=>v(2)%t(1:10,:)
  CALL f(10, v(2)%a)
  if (v(2)%t(2, 3)/=1)write(6,*) "NG"
  v(2)%t=3; v(2)%t(91:,:)=2
  v(2)%a=>v(2)%t(91:,:)
  CALL f(10, v(2)%a)
  if (v(2)%t(92, 3)/=1)write(6,*) "NG"
end
subroutine s5
type x
  SEQUENCE
  INTEGER, DIMENSION(:, :) , POINTER :: a
  INTEGER, DIMENSION(:, :) , pointer :: p
end type
type(x)::v(2)
  allocate(v(2)%p(100,3))
  v(2)%p=3; v(2)%p(:10,:)=2
  v(2)%a=>v(2)%p(:10,:)
  CALL f(10, v(2)%a)
  if (v(2)%p(2, 3)/=1)write(6,*) "NG"
  v(2)%p=3; v(2)%p(1:10,:)=2
  v(2)%a=>v(2)%p(1:10,:)
  CALL f(10, v(2)%a)
  if (v(2)%p(2, 3)/=1)write(6,*) "NG"
  v(2)%p=3; v(2)%p(91:,:)=2
  v(2)%a=>v(2)%p(91:,:)
  CALL f(10, v(2)%a)
  if (v(2)%p(92, 3)/=1)write(6,*) "NG"
end
call s0
call s1
call s2
call s3
call s4
call s5
print *,'pass'
end
  SUBROUTINE f(n, a)
    INTEGER :: n
    INTEGER, DIMENSION(n, 3) :: a
    if (any(a/=2))write(6,*) "NG"
    a(2, 3) = 1
  END SUBROUTINE f
