subroutine distribute1(a,b,c,n)
  real*4 a(n),b(n),c(n)

  interface 
     pure function pfunc(x)
       real(4),intent(in) :: x
       real(4) :: pfunc
     end function pfunc
  end interface

  do concurrent(i=1:n)
     a(i) = a(i) + c(i)
     b(i) = pfunc(b(i))
  enddo
end

subroutine distribute2(a,b,c,n,m)
  real*4 a(n),b(n),c(n),m(n)

  interface 
     pure function pfunc(x)
       real(4),intent(in) :: x
       real(4) :: pfunc
     end function pfunc
  end interface

  do concurrent(i=1:n, m(i).ne.0)
     a(i) = a(i) + c(i)
     b(i) = pfunc(b(i))
  enddo
end

pure function pfunc(x)
  real(4),intent(in) :: x
  real(4) :: pfunc
  pfunc = x+2
end function pfunc


program main
  parameter(n=200)
  real*4 a(n,n),b(n,n),c(n,n),s,m(n)

  call init(a,b,c,n,s,m)
  call distribute1(a,b,c,n)
  print *,sum(a)

  call init(a,b,c,n,s,m)
  call distribute2(a,b,c,n,m)
  print *,sum(a)

end program main


subroutine init(a,b,c,n,s,m)
  real*4 a(n,n),b(n,n),c(n,n),s,m(n)

  do j=1,n
    do i=1,n
       a(i,j)=i+j+10
       b(i,j)=i+j+20
       c(i,j)=i+j+30
    enddo
    m(j)=mod(j,3)
  enddo
  s = 0
end subroutine init
