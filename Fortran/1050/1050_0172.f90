
program main
  interface
     subroutine sub(a1,a2,a3,a4,a5,a6,a7,a8,b1,b2,b3,b4,b5,b6,b7,b8,n)
       real,dimension(:),allocatable,intent(inout)::a1,a2,a3,a4,a5,a6
       logical,dimension(:),allocatable,intent(inout)::a7
       complex,dimension(:),allocatable,intent(inout)::a8
       real,dimension(n),intent(inout)::b1,b2,b3,b4,b5,b6
       logical,dimension(n),intent(inout)::b7
       complex,dimension(n),intent(inout)::b8
       integer,intent(in)::n
    end subroutine sub
  end interface

  real,dimension(:),allocatable::a1,a2,a3,a4,a5,a6
  real,dimension(2)::b1,b2,b3,b4,b5,b6
  logical,dimension(:),allocatable::a7
  complex,dimension(:),allocatable::a8
  logical,dimension(2)::b7
  complex,dimension(2)::b8
  integer::n=2

  allocate(a1(n))
  allocate(a2(n))
  allocate(a3(n))
  allocate(a4(n))
  allocate(a5(n))
  allocate(a6(n))
  allocate(a7(n))
  allocate(a8(n))

  a1 = 1.0
  a2 = 2.0
  a3 = 3.0
  a4 = 4.0
  a5 = 5.0
  a6 = 6.0
  a7 = .true.
  a8 = 1.0
  b1 = 1.0
  b2 = 2.0
  b3 = 3.0
  b4 = 4.0
  b5 = 5.0
  b6 = 6.0
  b7 = .true.
  b8 = 1.0

  call sub(a1,a2,a3,a4,a5,a6,a7,a8,b1,b2,b3,b4,b5,b6,b7,b8,n)

  if (a1(1) .ne. 1.0) print *, 'NG: a1'
  if (b1(1) .ne. 1.0) print *, 'NG: b1'
  if (a2(1) .ne. 2.0) print *, 'NG: a2'
  if (b2(1) .ne. 2.0) print *, 'NG: b2'

  if (a3(1) .ne. 3.0) print *, 'NG: a3'
  if (b3(1) .ne. 3.0) print *, 'NG: b3'
  if (a4(1) .ne. 4.0) print *, 'NG: a4'
  if (b4(1) .ne. 4.0) print *, 'NG: b4'

  if (a5(1) .ne. 12.0) print *, 'NG: a5'
  if (b5(1) .ne. 12.0) print *, 'NG: b5'
  if (a6(1) .ne. 12.0) print *, 'NG: a6'
  if (b6(1) .ne. 12.0) print *, 'NG: b6'

  if (a7(1) .neqv. b7(1)) print *, 'NG: a7(1)', a7(1), b7(1)
  if (a7(2) .neqv. b7(2)) print *, 'NG: a7(2)', a7(2), b7(2)
  if (a8(1) .ne. b8(1)) print *, 'NG: a8(1)', a8(1), b8(1)
  if (a8(2) .ne. b8(2)) print *, 'NG: a8(2)', a8(2), b8(2)
  print *, 'pass'
end program main

subroutine sub(a1,a2,a3,a4,a5,a6,a7,a8,b1,b2,b3,b4,b5,b6,b7,b8,n)
  real,dimension(:),allocatable,intent(inout)::a1,a2,a3,a4,a5,a6
  logical,dimension(:),allocatable,intent(inout)::a7
  complex,dimension(:),allocatable,intent(inout)::a8
  real,dimension(n),intent(inout)::b1,b2,b3,b4,b5,b6
  logical,dimension(n),intent(inout)::b7
  complex,dimension(n),intent(inout)::b8
  integer,intent(in)::n
!$omp parallel
!$omp sections private(a1,b1,a2,b2) firstprivate(a3,b3,a4,b4) lastprivate(a5,b5,a6,b6) reduction(.eqv.:a7,b7) reduction(*:a8,b8)
!$omp section
  if (a3(1) .ne. 3.0) print *, 'NG: fp(a3) 1'
  if (a4(1) .ne. 4.0) print *, 'NG: fp(a4) 1'
  if (b3(1) .ne. 3.0) print *, 'NG: fp(b3) 1'
  if (b4(1) .ne. 4.0) print *, 'NG: fp(b4) 1'
  a1(1)=1.0
  b1(1)=1.0
  a2(1)=1.0
  b2(1)=1.0
  a5 = 11.0
  b5 = 11.0
  a6 = 11.0
  b6 = 11.0
  a7 = a7 .eqv. .true.
  b7 = b7 .eqv. .true.
  a8 = a8 * 2.0
  b8 = b8 * 2.0
!$omp section
  if (a3(1) .ne. 3.0) print *, 'NG: fp(a3) 2', a3(1)
  if (a4(1) .ne. 4.0) print *, 'NG: fp(a4) 2', a4(1)
  if (b3(1) .ne. 3.0) print *, 'NG: fp(b3) 2', b3(1)
  if (b4(1) .ne. 4.0) print *, 'NG: fp(b4) 2', b4(1)
  a1(1)=2.0
  b1(1)=2.0
  a2(1)=2.0
  b2(1)=2.0
  a5 = 12.0
  b5 = 12.0
  a6 = 12.0
  b6 = 12.0
  a7 = a7 .eqv. .false.
  b7 = b7 .eqv. .false.
  a8 = a8 * 2.0
  b8 = b8 * 2.0
!$omp end sections
  if (a5(1) .ne. 12.0) print *, 'NG: lp(a5)'
  if (b5(1) .ne. 12.0) print *, 'NG: lp(b5)'
  if (a6(1) .ne. 12.0) print *, 'NG: lp(a6)'
  if (b6(1) .ne. 12.0) print *, 'NG: lp(b6)'
!$omp end parallel
  return
end subroutine sub
