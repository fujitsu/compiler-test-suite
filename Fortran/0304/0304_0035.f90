subroutine sub(c,r)
  complex(8),dimension(16) :: c
  real(4),dimension(16) :: r
  real res,ans
  c=5
  r=7
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
  complex(8),dimension(16) :: c1
  real(4),dimension(16) :: r1
  c1=5
  r1=7
  call sub(c1,r1)
end program main
