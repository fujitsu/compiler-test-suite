
program main

integer,parameter :: n=10
integer,parameter :: ans=10

  type str2
    sequence
    integer(4),pointer,dimension(:) ::leaf
  end type str2

  type str1
    sequence
    type(str2),pointer,dimension(:) :: innerNode
  end type str1

  type(str1),pointer,dimension(:) :: strRoot

  allocate(strRoot(10))
  do i=1,10
    allocate(strRoot(i)%innerNode(10))
    do j=1,10
      allocate(strRoot(i)%innerNode(j)%leaf(10))
    enddo
  enddo
  call testFunc(strRoot)


  if (int(sum(strRoot(1)%innerNode(1)%leaf)) .eq. ans) then
    print *,"ok: "
  else
    print *,"ng: "
  endif
  

  contains
  subroutine testFunc(strRoot)

  type str2
    sequence
    integer(4),pointer,dimension(:) ::leaf
  end type str2
  type str1
    sequence
    type(str2),pointer,dimension(:) :: innerNode
  end type str1
  type(str1),pointer,dimension(:) :: strRoot
  i1 = 1
  i2 = 1
  do i1=1,n
    strRoot(i1)%innerNode(i2)%leaf(:) = 1
  enddo

  end subroutine testFunc
end program main
