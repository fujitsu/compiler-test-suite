program main
  integer,parameter :: n=10
  integer,parameter :: ans=1000

  type str2
    integer(4),pointer,dimension(:,:) ::leaf
  end type str2

  type str1
    type(str2),pointer,dimension(:) :: innerNode
  end type str1

  type(str1),pointer,dimension(:) :: op1,op2,result

  allocate(op1(10))
  allocate(op2(10))
  allocate(result(10))
  do i=1,10
    allocate(op1(i)%innerNode(10))
    allocate(op2(i)%innerNode(10))
    allocate(result(i)%innerNode(10))
    do j=1,10
      allocate(op1(i)%innerNode(j)%leaf(10,10))
      allocate(op2(i)%innerNode(j)%leaf(10,10))
      allocate(result(i)%innerNode(j)%leaf(10,10))
      op1(i)%innerNode(j)%leaf = 0
      op2(i)%innerNode(j)%leaf = 0
      result(i)%innerNode(j)%leaf = 0
    enddo
  enddo
  op1(1)%innerNode(1)%leaf = 1
  op2(1)%innerNode(1)%leaf = 1
  result(1)%innerNode(1)%leaf = matmul(op1(1)%innerNode(1)%leaf,op2(1)%innerNode(1)%leaf)


  if (int(sum(result(1)%innerNode(1)%leaf)) .eq. ans) then
    print *,"ok: "
  else
    print *,"ng: ",sum(result(1)%innerNode(1)%leaf)
  endif
  
end program main
