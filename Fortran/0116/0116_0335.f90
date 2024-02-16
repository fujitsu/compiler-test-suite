
program main

integer,parameter :: n=10
real(8),parameter :: ans=1000.0

  type str2
    real(8),pointer,dimension(:,:) ::leaf
  end type str2

  type str1
    type(str2),pointer :: innerNode
  end type str1

  type(str1),dimension(10,10) :: op1,op2,result


  do i=1,10
    do j=1,10
      allocate(op1(i,j)%innerNode)
      allocate(op2(i,j)%innerNode)
      allocate(result(i,j)%innerNode)
      allocate(op1(i,j)%innerNode%leaf(10,10))
      allocate(op2(i,j)%innerNode%leaf(10,10))
      allocate(result(i,j)%innerNode%leaf(10,10))
      op1(i,j)%innerNode%leaf = 0
      op2(i,j)%innerNode%leaf = 0
      result(i,j)%innerNode%leaf = 0
    enddo
  enddo

  op1(1,1)%innerNode%leaf = 1
  op2(1,1)%innerNode%leaf = 1

  do i1 = 1,n
    result(1,1)%innerNode%leaf(:,:) = matmul(op1(1,1)%innerNode%leaf(:,:),op2(1,1)%innerNode%leaf(:,:))
  end do

  if (int(sum(result(1,1)%innerNode%leaf)) .eq. ans) then
    print *,"ok: "
  else
    print *,"ng: ",sum(result(1,1)%innerNode%leaf)
  endif

  
end program main
