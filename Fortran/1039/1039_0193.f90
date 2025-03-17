subroutine s0
  INTEGER, DIMENSION(2,100, 3) :: a
  a=3; a(:,:10,:)=2
  CALL f(10, a(:, :10, :))
  if (a(1,2, 3)/=1)write(6,*) "NG"
  a=3; a(:,:10,:)=2
  CALL f(10, a(:,1:10, :))
  if (a(1,2, 3)/=1)write(6,*) "NG"
  a=3; a(:,91:,:)=2
  CALL f(10, a(:,91:, :))
  if (a(1,92, 3)/=1)write(6,*) "NG"
end
subroutine s1
  INTEGER, DIMENSION(:,:, :) , POINTER :: a
  ALLOCATE(a(2,100, 3))
  a=3; a(:,:10,:)=2
  CALL f(10, a(:, :10, :))
  if (a(1,2, 3)/=1)write(6,*) "NG"
  a=3; a(:,:10,:)=2
  CALL f(10, a(:,1:10, :))
  if (a(1,2, 3)/=1)write(6,*) "NG"
  a=3; a(:,91:,:)=2
  CALL f(10, a(:,91:, :))
  if (a(1,92, 3)/=1)write(6,*) "NG"
end
subroutine s2
  INTEGER, DIMENSION(:,:, :) , allocatable :: a
  ALLOCATE(a(2,100, 3))
  a=3; a(:,:10,:)=2
  CALL f(10, a(:, :10, :))
  if (a(1,2, 3)/=1)write(6,*) "NG"
  a=3; a(:,:10,:)=2
  CALL f(10, a(:,1:10, :))
  if (a(1,2, 3)/=1)write(6,*) "NG"
  a=3; a(:,91:,:)=2
  CALL f(10, a(:,91:, :))
  if (a(1,92, 3)/=1)write(6,*) "NG"
end
subroutine s3
  INTEGER, DIMENSION(2,100, 3) :: a
  call s3s(a)
contains
 subroutine s3s(a)
  INTEGER, DIMENSION(:,:, :) :: a
  a=3; a(:,:10,:)=2
  CALL f(10, a(:, :10, :))
  if (a(1,2, 3)/=1)write(6,*) "NG"
  a=3; a(:,:10,:)=2
  CALL f(10, a(:,1:10, :))
  if (a(1,2, 3)/=1)write(6,*) "NG"
  a=3; a(:,91:,:)=2
  CALL f(10, a(:,91:, :))
  if (a(1,92, 3)/=1)write(6,*) "NG"
 end subroutine
end
subroutine s4
  INTEGER, DIMENSION(:,:, :) , POINTER :: a
  INTEGER, DIMENSION(2,100, 3) , target :: t
  t=3; t(:,:10,:)=2
  a=>t(:,:10,:)
  CALL f(10, a)
  if (t(1,2, 3)/=1)write(6,*) "NG"
  t=3; t(:,1:10,:)=2
  a=>t(:,1:10,:)
  CALL f(10, a)
  if (t(1,2, 3)/=1)write(6,*) "NG"
  t=3; t(:,91:,:)=2
  a=>t(:,91:,:)
  CALL f(10, a)
  if (t(1,92, 3)/=1)write(6,*) "NG"
end
subroutine s5
  INTEGER, DIMENSION(:,:, :) , POINTER :: a
  INTEGER, DIMENSION(:,:, :) , pointer :: p
  allocate(p(2,100,3))
  p=3; p(:,:10,:)=2
  a=>p(:,:10,:)
  CALL f(10, a)
  if (p(1,2, 3)/=1)write(6,*) "NG"
  p=3; p(:,1:10,:)=2
  a=>p(:,1:10,:)
  CALL f(10, a)
  if (p(1,2, 3)/=1)write(6,*) "NG"
  p=3; p(:,91:,:)=2
  a=>p(:,91:,:)
  CALL f(10, a)
  if (p(1,92, 3)/=1)write(6,*) "NG"
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
    INTEGER, DIMENSION(2,n, 3) :: a
    if (any(a/=2))write(6,*) "NG"
    a(1,2, 3) = 1
  END SUBROUTINE f
