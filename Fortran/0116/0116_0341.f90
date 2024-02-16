program main

integer,parameter :: n=10
real(8),parameter :: ans=0.0

  type str2
    real(8),allocatable,dimension(:,:) ::leaf
  end type str2

  type str1
    type(str2),pointer,dimension(:,:) :: innerNode
  end type str1

  type(str1),dimension(10,10) :: op1,op2,result

  
  do i=1,10
    do j=1,10
      allocate(op1(i,j)%innerNode(10,10))
      allocate(op2(i,j)%innerNode(10,10))
      allocate(result(i,j)%innerNode(10,10))
      do k=1,10
        do l=1,10
          allocate(op1(i,j)%innerNode(k,l)%leaf(10,10))
          allocate(op2(i,j)%innerNode(k,l)%leaf(10,10))
          allocate(result(i,j)%innerNode(k,l)%leaf(10,10))
          op1(i,j)%innerNode(k,l)%leaf = 0
          op2(i,j)%innerNode(k,l)%leaf = 0
          result(i,j)%innerNode(k,l)%leaf = 0
        enddo
      enddo
    enddo
  enddo


  j1 = 2
  j2 = 2

  op1(1,1)%innerNode(1,1)%leaf = 1
  op2(1,1)%innerNode(1,1)%leaf = 1
  do j1 = 1,n
    result(1,1)%innerNode(j1,j2)%leaf(:,:) = matmul(op1(1,1)%innerNode(j1,j2)%leaf(:,:),op2(1,1)%innerNode(j1,j2)%leaf(:,:))
  end do

  if (int(sum(result(1,1)%innerNode(1,1)%leaf)) .eq. ans) then
    print *,"ok: "
  else
    print *,"ng: ",sum(result(1,1)%innerNode(1,1)%leaf)
  endif
  
end program main
