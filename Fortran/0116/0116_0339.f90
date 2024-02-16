program main

integer,parameter :: n=10
real(8),parameter :: ans=0.0

  type str2
    real(8),pointer,dimension(:) ::leaf
    real(8),pointer,dimension(:,:) ::leaf2
  end type str2

  type str1
    type(str2),dimension(10) :: innerNode
  end type str1

  type(str1),pointer,dimension(:,:) :: op1,op2,result


  allocate(op1(10,10))
  allocate(op2(10,10))
  allocate(result(10,10))
  do i=1,10
    do j=1,10
      do k=1,10
        do l=1,10
          allocate(op1(i,j)%innerNode(k)%leaf(10))
          allocate(op2(i,j)%innerNode(k)%leaf(10))
          allocate(result(i,j)%innerNode(k)%leaf(10))

          allocate(op2(i,j)%innerNode(k)%leaf2(10,10))
          op1(i,j)%innerNode(k)%leaf = 0
          op2(i,j)%innerNode(k)%leaf = 0
          result(i,j)%innerNode(k)%leaf = 0
          op2(i,j)%innerNode(k)%leaf2 = 0
        enddo
      enddo
    enddo
  enddo


  i1 = 1
  i2 = 1
  j1 = 2


  op1(1,1)%innerNode(1)%leaf = 1
  op2(1,1)%innerNode(1)%leaf2 = 1
  do i2=1,n
    result(i1,i2)%innerNode(j1)%leaf(:) = matmul(op1(i1,i2)%innerNode(j1)%leaf(:),op2(i1,i2)%innerNode(j1)%leaf2(:,:))
  end do

  if (int(sum(result(1,1)%innerNode(2)%leaf)) .eq. ans) then
    print *,"ok: "
  else
    print *,"ng: ",sum(result(1,1)%innerNode(2)%leaf)
  endif
  
end program main
