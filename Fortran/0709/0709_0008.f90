 call s1
 print *,'pass'
 end
 module m1
  integer,parameter::kd=1
  integer ::nn
  integer::x=3
  character(kd),parameter::p1='12345',p2='6789a',p100='xx'
  interface        operator(+)
  module procedure r1,r2,r3
  end interface
  contains
 function r1(a) result(r)
 character*(*),intent(in):: a
 character(len=len(a))::r
 r=a
 end function
 function r2(a) result(r)
 character*(*),intent(in),dimension(:):: a
 character(len=len(a)),dimension(size(a))::r
 r=a
 end function
 function r3(a) result(r)
 character*(*),intent(in),dimension(:,:,:):: a
 character(len=len(a)),dimension(size(a,1),size(a,2),size(a,3))::r
 r=a
 end function
 subroutine i1s
  character(nn) ::i,j
  i=p1;j=p100
  call ins(j,(i),i)
  if (j/=p1)print *,'fail'; if (i/=p2)print *,'fail'
  i=p1;j=p100
  call ins(j,+i,i)
  if (j/=p1)print *,'fail'; if (i/=p2)print *,'fail'
  contains 
    subroutine ins(k1,k2,k3)
    character(nn) ::k1,k2,k3
    k3=p2; k1=k2
    end subroutine
  end subroutine
 subroutine i1a(i,j)
  character(nn),dimension(5) ::i,j
  i=p1;j=p100
  call ins(j,(i),i)
  if (any(j/=p1))print *,'fail'; if (any(i/=p2))print *,'fail'
  i=p1;j=p100
  call ins(j,+i,i)
  if (any(j/=p1))print *,'fail'; if (any(i/=p2))print *,'fail'
  i=p1;j=p100
  call insx(j(5),(i(5)),i(5))
  if ((j(5)/=p1))print *,'fail'; if ((i(5)/=p2))print *,'fail'
  i=p1;j=p100
  call insx(j(x),+i(x),i(x))
  if ((j(x)/=p1))print *,'fail'; if ((i(x)/=p2))print *,'fail'
  contains 
    subroutine ins(k1,k2,k3)
    character(nn),dimension(5) ::k1,k2,k3
    k3=p2; k1=k2
    end subroutine
    subroutine insx(k1,k2,k3)
    character(nn) ::k1,k2,k3
    k3=p2; k1=k2
    end subroutine
  end subroutine
 subroutine i1b(i,j)
  character(nn),dimension(:) ::i,j
  i=p1;j=p100
  call ins(j,(i),i)
  if (any(j/=p1))print *,'fail'; if (any(i/=p2))print *,'fail'
  i=p1;j=p100
  call ins(j,+i,i)
  if (any(j/=p1))print *,'fail'; if (any(i/=p2))print *,'fail'
  i=p1;j=p100
  call insx(j(5),(i(5)),i(5))
  if ((j(5)/=p1))print *,'fail'; if ((i(5)/=p2))print *,'fail'
  i=p1;j=p100
  call insx(j(x),+i(x),i(x))
  if ((j(x)/=p1))print *,'fail'; if ((i(x)/=p2))print *,'fail'
  contains 
    subroutine ins(k1,k2,k3)
    character(nn),dimension(5) ::k1,k2,k3
    k3=p2; k1=k2
    end subroutine
    subroutine insx(k1,k2,k3)
    character(nn) ::k1,k2,k3
    k3=p2; k1=k2
    end subroutine
  end subroutine
 subroutine i1c(i,j)
  character(nn),dimension(:,:,:) ::i,j
  i=p1;j=p100
  call ins(j,(i),i)
  if (any(j/=p1))print *,'fail'; if (any(i/=p2))print *,'fail'
  i=p1;j=p100
  call ins(j,+i,i)
  if (any(j/=p1))print *,'fail'; if (any(i/=p2))print *,'fail'
  i=p1;j=p100
  call insx(j(2,3,2),(i(2,3,2)),i(2,3,2))
  if ((j(2,3,2)/=p1))print *,'fail'; if ((i(2,3,2)/=p2))print *,'fail'
  i=p1;j=p100
  call insx(j(2,x,2),+i(2,x,2),i(2,x,2))
  if ((j(2,x,2)/=p1))print *,'fail'; if ((i(2,x,2)/=p2))print *,'fail'
  contains 
    subroutine ins(k1,k2,k3)
    character(nn),dimension(2,3,2) ::k1,k2,k3
    k3=p2; k1=k2
    end subroutine
    subroutine insx(k1,k2,k3)
    character(nn) ::k1,k2,k3
    k3=p2; k1=k2
    end subroutine
  end subroutine
end
 subroutine s1
  use m1
  nn=kd
  call ss1
contains 
  subroutine ss1
  character(nn),dimension(5)::a,b
  character(nn),dimension(2,3,2)::c,d
  call i1s
  call i1a(a,b)
  call i1b(a,b)
  call i1c(c,d)
  end subroutine 
 end
