program main
  parameter(n=10)
  real a(n,n),b(n,n),x(5,n,n),y(5,n,n)
  real p(5),q(5)
  interface
    pure function fx(p)
      real,dimension(:),intent(in):: p
      real,dimension(size(p))     :: fx
    end function fx
  end interface

  call init(a,b,x,y,n)
  do j=1,n
    do i=1,n
      p(1) = x(1,i,j)
      p(2) = x(2,i,j)
      p(3) = x(3,i,j)
      p(4) = x(4,i,j)
      p(5) = x(5,i,j)
      q = fx(p)+b(i,j)
      a(i,j) = q(1)+q(2)+q(3)+q(4)+q(5)
    enddo
  enddo
  print *,a
end

pure function fx(p)
  real,dimension(:),intent(in):: p
  real,dimension(size(p))     :: fx
  fx = p*p
end function fx

subroutine init(a,b,x,y,n)
  real a(n,n),b(n,n),x(5,n,n),y(5,n,n)
  m = 1
  do i=1,n
    do j=1,n
      a(j,i)=0.0
      b(j,i)=i
      do k=1,5
        x(k,j,i) = m
        y(k,j,i) = m
        m = m+1
      enddo
    enddo
  enddo
end
