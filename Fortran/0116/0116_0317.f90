program main

integer,parameter :: n=10
real(8),parameter :: ans=1.0

  type str2
    sequence
    real(8),pointer,dimension(:) ::leaf
  end type str2

  type str1
    sequence
    type(str2),dimension(10) :: innerNode
  end type str1

  type(str1),pointer,dimension(:,:) :: strRoot

  allocate(strRoot(10,10))
  do i=1,10
    do j=1,10
      do k=1,10
        allocate(strRoot(i,j)%innerNode(k)%leaf(10))
        strRoot(i,j)%innerNode(k)%leaf = 0
      enddo
    enddo
  enddo
  call testFunc(strRoot)


  if (int(sum(strRoot(1,1)%innerNode(2)%leaf)) .eq. ans) then
    print *,"ok: "
  else
    print *,"ng: ",sum(strRoot(1,1)%innerNode(2)%leaf)
  endif
  
  contains
  subroutine testFunc(strRoot)

  type str2
    sequence
    real(8),pointer,dimension(:) ::leaf
  end type str2
  type str1
    sequence
    type(str2),dimension(10) :: innerNode
  end type str1
  type(str1),pointer,dimension(:,:) :: strRoot
  i1 = 1
  i2 = 1
  j1 = 2
  k1 = 1
  do i1=1,n
    strRoot(i1,i2)%innerNode(j1)%leaf(k1) = 1
  enddo

  end subroutine testFunc
end program main
