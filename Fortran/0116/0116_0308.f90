program main

integer,parameter :: n=10
integer,parameter :: ans=10

  type selfstr
    type(selfstr),pointer,dimension(:) :: innerNode
    integer(4),pointer,dimension(:) :: val
  end type selfstr
  type(selfstr),pointer,dimension(:) :: sstr

  allocate(sstr(10))
  do i=1,10
    allocate(sstr(i)%innerNode(10))
    do j=1,10
      allocate(sstr(i)%innerNode(j)%innerNode(10))
      do k=1,10
        allocate(sstr(i)%innerNode(j)%innerNode(k)%val(10))
        sstr(i)%innerNode(j)%innerNode(k)%val=0
      enddo 
    enddo
  enddo
  call testFunc(sstr)

  if (int(sum(sstr(1)%innerNode(1)%innerNode(1)%val)) .eq. ans) then
    print *,"ok: "
  else
    print *,"ng: "
  endif

  contains
  subroutine testFunc(sstr)
  type(selfstr),pointer,dimension(:) :: sstr
  i1 = 1
  i2 = 1
  i3 = 1
  i4 = 1
  do i1=1,n
    sstr(i1)%innerNode(i2)%innerNode(i3)%val(:) = 1
  enddo

  end subroutine testFunc
end program main
