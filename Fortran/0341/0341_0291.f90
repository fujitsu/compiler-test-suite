subroutine interchange1(a,c,idx1,idx2,n)
  real*4 a(n,n),c(n,n)
  integer*8 idx1(n),idx2(n) 
  do i=1,n
     do concurrent(j=1:n)
        a(idx1(i),idx2(j)) = a(i,j) + c(i,j)
    enddo
  enddo
end

subroutine interchange2(a,c,idx1,idx2,n)
  real*4 a(n,n),c(n,n)
  integer*8 idx1(n),idx2(n) 
  do concurrent(i=1:n)
     do j=1,n
        a(idx1(i),idx2(j)) = a(i,j) + c(i,j)
    enddo
  enddo
end

subroutine interchange3(a,c,idx1,idx2,n)
  real*4 a(n,n),c(n,n)
  integer*8 idx1(n),idx2(n) 
  do concurrent(i=1:n)
     do concurrent(j=1:n)
        a(idx1(i),idx2(j)) = a(i,j) + c(i,j)
    enddo
  enddo
end


program main
  parameter(n=200)
  real*4 a(n,n),c(n,n)
  integer*8 idx1(n),idx2(n)

  call init(a,c,idx1,idx2,n)
  call interchange1(a,c,idx1,idx2,n)
  print *,sum(a)

  call init(a,c,idx1,idx2,n)
  call interchange2(a,c,idx1,idx2,n)
  print *,sum(a)

  call init(a,c,idx1,idx2,n)
  call interchange3(a,c,idx1,idx2,n)
  print *,sum(a)

end program main


subroutine init(a,c,idx1,idx2,n)
  real*4 a(n,n),c(n,n)
  integer*8 idx1(n),idx2(n)

  do j=1,n
    do i=1,n
       a(i,j)=i+j+10
       c(i,j)=i+j+30
       idx1(i)=i
    enddo
    idx2(j)=j
  enddo

end subroutine init
