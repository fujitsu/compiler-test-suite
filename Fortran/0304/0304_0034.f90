subroutine sub()
  common/com/c,r
  complex(8),dimension(16) :: c
  real(4),dimension(16) :: r
  real res,ans
  ans = 280.0
  do i=1,16
     c(i) = i + 1
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
  common/com/c,r
  complex(8),dimension(16) :: c
  real(4),dimension(16) :: r

  c=5
  r=7
  call sub()

end program main
