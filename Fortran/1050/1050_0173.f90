
program main
  interface
    subroutine sub(a1,a2,a3,a4,a5,a6,b1,b2,b3,b4,b5,b6,n)
      real,dimension(:),allocatable,intent(inout)::a1,a2,a3,a4,a5,a6
      real,dimension(n),intent(inout)::b1,b2,b3,b4,b5,b6
      integer,intent(in)::n
    end subroutine sub
  end interface

  real,dimension(:),allocatable::a1,a2,a3,a4,a5,a6
  real,dimension(2)::b1,b2,b3,b4,b5,b6
  integer::n=2

  allocate(a1(n))
  allocate(a2(n))
  allocate(a3(n))
  allocate(a4(n))
  allocate(a5(n))
  allocate(a6(n))

  a1=1.0
  a2=2.0
  a3=3.0
  a4=4.0
  a5=5.0
  a6=6.0
  b1=1.0
  b2=2.0
  b3=3.0
  b4=4.0
  b5=5.0
  b6=6.0
  call sub(a1,a2,a3,a4,a5,a6,b1,b2,b3,b4,b5,b6,n)

  if (a1(1) .ne. 1.0) print *, 'NG: a1'
  if (a2(1) .ne. 2.0) print *, 'NG: a2'
  if (a3(1) .ne. 3.0) print *, 'NG: a3'
  if (a4(1) .ne. 4.0) print *, 'NG: a4'
  if (b1(1) .ne. 1.0) print *, 'NG: b1'
  if (b2(1) .ne. 2.0) print *, 'NG: b2'
  if (b3(1) .ne. 3.0) print *, 'NG: b3'
  if (b4(1) .ne. 4.0) print *, 'NG: b4'
  print *, 'pass'
end program main

subroutine sub(a1,a2,a3,a4,a5,a6,b1,b2,b3,b4,b5,b6,n)
  real,dimension(:),allocatable,intent(inout)::a1,a2,a3,a4,a5,a6
  real,dimension(n),intent(inout)::b1,b2,b3,b4,b5,b6
  integer,intent(in)::n
!$omp parallel private(a5,b5,a6,b6)
  a5 = 1.0
  b5 = 1.0
  a6 = 1.0
  b6 = 1.0
!$omp single private(a1,b1,a2,b2) firstprivate(a3,b3,a4,b4)
  if (a3(1) .ne. 3.0) print *, 'NG: fp(a3)'
  if (a4(1) .ne. 4.0) print *, 'NG: fp(a4)'
  if (b3(1) .ne. 3.0) print *, 'NG: fp(b3)'
  if (b4(1) .ne. 4.0) print *, 'NG: fp(b4)'
  a1(1)=2.0
  a2(1)=2.0
  a3(1)=2.0
  a4(1)=2.0
  b1(1)=2.0
  b2(1)=2.0
  b3(1)=2.0
  b4(1)=2.0
  a5 = 5.0
  b5 = 5.0
  a6 = 6.0
  b6 = 6.0
!$omp end single copyprivate(a5,b5,a6,b6)
  if (a5(1) .ne. 5.0) print *, 'NG: cp(a5)'
  if (a6(1) .ne. 6.0) print *, 'NG: cp(a6)'
  if (b5(1) .ne. 5.0) print *, 'NG: cp(b5)'
  if (b6(1) .ne. 6.0) print *, 'NG: cp(b6)'
!$omp end parallel
  return
end subroutine sub
