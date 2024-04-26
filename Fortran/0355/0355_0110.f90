program main
  real(4),dimension(10000) :: mdir1
  real(4),dimension(10000) :: mdir2
  real(4),dimension(10000) :: mdir3
  real(4),dimension(10000) :: mdir4
  real(4),dimension(10000) :: mdir5
  integer i
  integer j
  mdir1=0.0
  mdir1(2)=1
  mdir2=0.0
  mdir2(11)=2
  mdir3=0.0
  mdir3(32)=3
  mdir4=0.0
  mdir4(33)=4
  mdir5=0.0
  mdir5(99)=5

  i=1
  j=1
  call test(mdir1,i)
  call target(mdir1,j)
  if (i .eq. j) then
     print *, "OK";
  else
     print *, "NG", i, " ", j;
  endif

  i=1
  j=1
  call test(mdir2,i)
  call target(mdir2,j)
  if (i .eq. j) then
     print *, "OK";
  else
     print *, "NG", i, " ", j;
  endif

  i=1
  j=1
  call test(mdir3,i)
  call target(mdir3,j)
  if (i .eq. j) then
     print *, "OK";
  else
     print *, "NG", i, " ", j;
  endif

  i=1
  j=1
  call test(mdir4,i)
  call target(mdir4,j)
  if (i .eq. j) then
     print *, "OK";
  else
     print *, "NG", i, " ", j;
  endif

  i=1
  j=1
  call test(mdir5,i)
  call target(mdir5,j)
  if (i .eq. j) then
     print *, "OK";
  else
     print *, "NG", i, " ", j;
  endif

  i=2
  j=2
  call test(mdir5,i)
  call target(mdir5,j)
  if (i .eq. j) then
     print *, "OK";
  else
     print *, "NG", i, " ", j;
  endif

  i=3
  j=3
  call test(mdir5,i)
  call target(mdir5,j)
  if (i .eq. j) then
     print *, "OK";
  else
     print *, "NG", i, " ", j;
  endif

  i=4
  j=4
  call test(mdir5,i)
  call target(mdir5,j)
  if (i .eq. j) then
     print *, "OK";
  else
     print *, "NG", i, " ", j;
  endif
end program main
        
subroutine test (mdir, start)
  real*4, intent(in) :: mdir(10000)
  integer start,j;
  j=start

  do while (mdir(j)==0.0)
     j=j+1
  enddo
  start=j
end subroutine test

subroutine target (mdir, start)
  real*4, intent(in) :: mdir(10000)
  integer start,j;
  j=start

  do while (mdir(j)==0.0)
     j=j+1
  enddo
  start=j
end subroutine target
  
