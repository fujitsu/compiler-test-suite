module m_com
  complex(8), dimension(:),pointer :: c
  real(8), dimension(:),pointer :: r
end module m_com

subroutine sub()
  use m_com
  real :: res,ans
  ans = 224.0

  do i=1,16
     c(i) = c(i) + 1
     r(i) = r(i) + 1
  end do

  res=sum(c)
  res=res+sum(r)

  if(res == ans) then
     print *,"ok"
  else
     print *,"ng:",res
  endif  

end subroutine sub

program main
  use m_com
  complex(8),dimension(:),allocatable,target :: ccc
  real(8),dimension(:),allocatable,target :: rrr
  allocate(ccc(16))
  allocate(rrr(16))

  c => ccc
  r => rrr

  ccc=5
  rrr=7
  call sub()

end program main
