
program main
  interface
     subroutine sub(a1,a2,a3,a4,a5,a6,a7,a8,b1,b2,b3,b4,b5,b6,b7,b8,n)
       integer*8,dimension(:),allocatable,intent(inout)::a1,a2,a3,a4,a5,a6,a7,a8
       integer*8,dimension(n),intent(inout)::b1,b2,b3,b4,b5,b6,b7,b8
       integer,intent(in)::n
    end subroutine sub
  end interface

  integer*8,dimension(:),allocatable::a1,a2,a3,a4,a5,a6,a7,a8
  integer*8,dimension(2)::b1,b2,b3,b4,b5,b6,b7,b8
  integer::n=2

  allocate(a1(n))
  allocate(a2(n))
  allocate(a3(n))
  allocate(a4(n))
  allocate(a5(n))
  allocate(a6(n))
  allocate(a7(n))
  allocate(a8(n))

  a1=1
  a2=2
  a3=3
  a4=4
  a5=5
  a6=6
  a7=7
  a8=8
  b1=1
  b2=2
  b3=3
  b4=4
  b5=5
  b6=6
  b7=7
  b8=8
  call sub(a1,a2,a3,a4,a5,a6,a7,a8,b1,b2,b3,b4,b5,b6,b7,b8,n)

  if (a1(1) .ne. 1) print *, 'NG: a1'
  if (b1(1) .ne. 1) print *, 'NG: b1'
  if (a2(1) .ne. 2) print *, 'NG: a2'
  if (b2(1) .ne. 2) print *, 'NG: b2'

  if (a3(1) .ne. 3) print *, 'NG: a3'
  if (b3(1) .ne. 3) print *, 'NG: b3'
  if (a4(1) .ne. 4) print *, 'NG: a4'
  if (b4(1) .ne. 4) print *, 'NG: b4'

  if (a5(2) .ne. 2) print *, 'NG: a5'
  if (b5(2) .ne. 2) print *, 'NG: b5'
  if (a6(2) .ne. 2) print *, 'NG: a6'
  if (b6(2) .ne. 2) print *, 'NG: b6'

  if (a7(1) .ne. 14) print *, 'NG: a7', a7(1)
  if (b7(1) .ne. 14) print *, 'NG: b7', b7(1)
  if (a8(1) .ne. 16) print *, 'NG: a8', a8(1)
  if (b8(1) .ne. 16) print *, 'NG: b8', a8(1)
  print *, 'pass'
end program main

subroutine sub(a1,a2,a3,a4,a5,a6,a7,a8,b1,b2,b3,b4,b5,b6,b7,b8,n)
  !$ use omp_lib
  integer*8,dimension(:),allocatable,intent(inout)::a1,a2,a3,a4,a5,a6,a7,a8
  integer*8,dimension(n),intent(inout)::b1,b2,b3,b4,b5,b6,b7,b8
  integer,intent(in)::n
  integer::i,j
  integer,dimension(:,:),allocatable::c
  integer::max=1,now=1,err
  max=omp_get_max_threads()
  allocate(c(n,max))
  c=0

!$omp parallel
!$omp do private(a1,b1,a2,b2,now) firstprivate(a3,b3,a4,b4) lastprivate(a5,b5,a6,b6) reduction(*:a7,b7,a8,b8)
  do i = 1, n
     now=omp_get_thread_num()+1

     a1(i)=i
     b1(i)=i
     a2(i)=i
     b2(i)=i

     a3(i)=a3(i)+i
     b3(i)=b3(i)+i
     a4(i)=a4(i)+i
     b4(i)=b4(i)+i

     a5(i)=i
     b5(i)=i
     a6(i)=i
     b6(i)=i

     a7(i)=a7(i)+i
     b7(i)=b7(i)+i
     a8(i)=a8(i)+i
     b8(i)=b8(i)+i

     if (a1(i).ne.b1(i)) c(i,now)=c(i,now)+1
     if (a2(i).ne.b2(i)) c(i,now)=c(i,now)+1
     if (a3(i).ne.b3(i)) c(i,now)=c(i,now)+1
     if (a4(i).ne.b4(i)) c(i,now)=c(i,now)+1
     if (a5(i).ne.b5(i)) c(i,now)=c(i,now)+1
     if (a6(i).ne.b6(i)) c(i,now)=c(i,now)+1
     if (a7(i).ne.b7(i)) c(i,now)=c(i,now)+1
     if (a8(i).ne.b8(i)) c(i,now)=c(i,now)+1
  end do
!$omp end do
  if (a5(2) .ne. 2) print *, 'NG: lp(a5)', a5(1)
  if (b5(2) .ne. 2) print *, 'NG: lp(b5)', b5(1)
  if (a6(2) .ne. 2) print *, 'NG: lp(a6)', a6(1)
  if (b6(2) .ne. 2) print *, 'NG: lp(b6)', b6(1)
!$omp end parallel

  err=0
  do i=1,n
     do j=1,max
        if (c(i,j).ne.0) err=err+1
     end do
  end do
  if (err.ne.0) then
     print *,"NG: c",c
  endif

  return
end subroutine sub
