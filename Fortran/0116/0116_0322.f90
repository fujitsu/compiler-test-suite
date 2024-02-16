
program main

integer,parameter :: n=10
real(8),parameter :: ans=10.0

  type str2
    real(8),pointer,dimension(:,:) ::leaf
  end type str2

  type str1
    type(str2),pointer,dimension(:,:) :: innerNode
  end type str1

  type(str1),dimension(10,10) :: strRoot

  do i=1,10
    do j=1,10
      allocate(strRoot(i,j)%innerNode(10,10))
      do k=1,10
        do l=1,10
          allocate(strRoot(i,j)%innerNode(k,l)%leaf(10,10))
          strRoot(i,j)%innerNode(k,l)%leaf = 0
        enddo
      enddo
    enddo
  enddo
  i1 = 1
  i2 = 1
  j1 = 2
  j2 = 2
  k2 = 1
  do i1=1,n
    strRoot(i1,i2)%innerNode(j1,j2)%leaf(:,k2) = 1
  enddo


  if (int(sum(strRoot(1,1)%innerNode(2,2)%leaf)) .eq. ans) then
    print *,"ok: "
  else
    print *,"ng: ",sum(strRoot(1,1)%innerNode(2,2)%leaf)
  endif
  
end program main
