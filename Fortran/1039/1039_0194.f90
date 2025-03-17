subroutine s0
type x
  INTEGER, DIMENSION(100, 3) :: a
end type
type(x)::v
  v%a=3; v%a(:10,:)=2
  CALL f(10, v%a( :10, :))
  if (v%a(2, 3)/=1)write(6,*) "NG"
  v%a=3; v%a(:10,:)=2
  CALL f(10, v%a(1:10, :))
  if (v%a(2, 3)/=1)write(6,*) "NG"
  v%a=3; v%a(91:,:)=2
  CALL f(10, v%a(91:, :))
  if (v%a(92, 3)/=1)write(6,*) "NG"
end
subroutine s1
type x
  INTEGER, DIMENSION(:, :) , POINTER :: a
end type
type(x)::v
  ALLOCATE(v%a(100, 3))
  v%a=3; v%a(:10,:)=2
  CALL f(10, v%a( :10, :))
  if (v%a(2, 3)/=1)write(6,*) "NG"
  v%a=3; v%a(:10,:)=2
  CALL f(10, v%a(1:10, :))
  if (v%a(2, 3)/=1)write(6,*) "NG"
  v%a=3; v%a(91:,:)=2
  CALL f(10, v%a(91:, :))
  if (v%a(92, 3)/=1)write(6,*) "NG"
end
subroutine s2
type x
  INTEGER, DIMENSION(:, :) , allocatable :: a
end type
type(x)::v
  ALLOCATE(v%a(100, 3))
  v%a=3; v%a(:10,:)=2
  CALL f(10, v%a( :10, :))
  if (v%a(2, 3)/=1)write(6,*) "NG"
  v%a=3; v%a(:10,:)=2
  CALL f(10, v%a(1:10, :))
  if (v%a(2, 3)/=1)write(6,*) "NG"
  v%a=3; v%a(91:,:)=2
  CALL f(10, v%a(91:, :))
  if (v%a(92, 3)/=1)write(6,*) "NG"
end
subroutine s4
type x
  INTEGER, DIMENSION(:, :) , POINTER :: a
  INTEGER, DIMENSION(100, 3) :: t
end type
type(x),target::v
  v%t=3; v%t(:10,:)=2
  v%a=>v%t(:10,:)
  CALL f(10, v%a)
  if (v%t(2, 3)/=1)write(6,*) "NG"
  v%t=3; v%t(1:10,:)=2
  v%a=>v%t(1:10,:)
  CALL f(10, v%a)
  if (v%t(2, 3)/=1)write(6,*) "NG"
  v%t=3; v%t(91:,:)=2
  v%a=>v%t(91:,:)
  CALL f(10, v%a)
  if (v%t(92, 3)/=1)write(6,*) "NG"
end
subroutine s5
type x
  INTEGER, DIMENSION(:, :) , POINTER :: a
  INTEGER, DIMENSION(:, :) , pointer :: p
end type
type(x)::v
  allocate(v%p(100,3))
  v%p=3; v%p(:10,:)=2
  v%a=>v%p(:10,:)
  CALL f(10, v%a)
  if (v%p(2, 3)/=1)write(6,*) "NG"
  v%p=3; v%p(1:10,:)=2
  v%a=>v%p(1:10,:)
  CALL f(10, v%a)
  if (v%p(2, 3)/=1)write(6,*) "NG"
  v%p=3; v%p(91:,:)=2
  v%a=>v%p(91:,:)
  CALL f(10, v%a)
  if (v%p(92, 3)/=1)write(6,*) "NG"
end
call s0
call s1
call s2
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
