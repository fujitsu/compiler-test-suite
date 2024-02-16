
program main

integer,parameter :: n=10
real(8),parameter :: ans=1.0

  type str2
    real(8),pointer,dimension(:,:) ::leaf
  end type str2

  type str1
    type(str2),pointer :: innerNode
  end type str1

  type(str1),dimension(10,10) :: strRoot

  do i=1,10
    do j=1,10
      allocate(strRoot(i,j)%innerNode)
      allocate(strRoot(i,j)%innerNode%leaf(10,10))
      strRoot(i,j)%innerNode%leaf = 0
    enddo
  enddo
  i1 = 1
  i2 = 1
  k1 = 1
  k2 = 1
  do i1=1,n
    strRoot(i1,i2)%innerNode%leaf(k1,k2) = 1
  enddo


  if (int(sum(strRoot(1,1)%innerNode%leaf)) .eq. ans) then
    print *,"ok: "
  else
    print *,"ng: ",sum(strRoot(1,1)%innerNode%leaf)
  endif
  
end program main
