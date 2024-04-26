program main

integer,parameter :: n=10
integer,parameter :: ans=10

  type str2
    integer(4),pointer,dimension(:) ::leaf
  end type str2

  type str1
    type(str2),pointer,dimension(:) :: innerNode
  end type str1

  type(str1),pointer,dimension(:) :: strRoot

  allocate(strRoot(10))
  do i=1,10
    allocate(strRoot(i)%innerNode(10))
    do j=1,10
      allocate(strRoot(i)%innerNode(j)%leaf(10))
      strRoot(i)%innerNode(j)%leaf = 0
    enddo
  enddo

  i1 = 1
  i2 = 1
  do i1=1,n
    strRoot(i1)%innerNode(i2)%leaf(:) = 1
  enddo

  if (int(sum(strRoot(1)%innerNode(1)%leaf)) .eq. ans) then
    print *,"ok "
  else
    print *,"ng ",sum(strRoot(1)%innerNode(1)%leaf)
  endif
  
end program main
