
program main
  interface
     subroutine sub(a1,a2,a3,a4,b1,b2,b3,b4,c,n)
       integer,dimension(:),allocatable,intent(inout)::a1,a2,a3,a4
       integer,dimension(n),intent(inout)::b1,b2,b3,b4
       integer,dimension(n),intent(inout)::c
       integer,intent(in)::n
     end subroutine sub
  end interface

  integer,dimension(:),allocatable::a1,a2,a3,a4
  integer,dimension(2)::b1,b2,b3,b4
  integer,dimension(2)::c
  integer::n=2

  allocate(a1(n))
  allocate(a2(n))
  allocate(a3(n))
  allocate(a4(n))

  a1=10
  a2=20
  a3=30
  a4=40
  b1=10
  b2=20
  b3=30
  b4=40
  c=0

  call sub(a1,a2,a3,a4,b1,b2,b3,b4,c,n)

  err=0
  do i=1,n
     if (c(i).ne.0) err=err +1
  end do
  if (err.eq.0) then
     print *,"OK"
  else
     print *,"NG"
  endif

end program main

subroutine sub(a1,a2,a3,a4,b1,b2,b3,b4,c,n)
  integer,dimension(:),allocatable,intent(inout)::a1,a2,a3,a4
  integer,dimension(n),intent(inout)::b1,b2,b3,b4
  integer,dimension(n),intent(inout)::c
  integer,intent(in)::n
  !$omp parallel private(a1,b1) firstprivate(a2,b2) reduction(+:a3,b3) reduction(*:a4,b4)
  do i=1,n
     if (a2(i).ne.20.or.b2(i).ne.20) then
        c(i)=c(i)+1
     end if
     a1(i)=1
     b1(i)=1
     a2(i)=a2(i)+1
     b2(i)=b2(i)+1
     a3(i)=a3(i)+20
     b3(i)=b3(i)+20
     a4(i)=a4(i)*5
     b4(i)=b4(i)*5
     if (a1(i).ne.b1(i).or.a2(i).ne.b2(i).or.a3(i).ne.b3(i).or.a4(i).ne.b4(i)) c(i)=c(i)+1
  end do
  !$omp end parallel
  return
end subroutine sub
