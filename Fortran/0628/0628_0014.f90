interface
 subroutine sub(ip)
  integer :: ip
  pointer :: ip
  intent(in) :: ip
 end subroutine
end interface

  integer :: ii
  pointer :: ii
  allocate(ii)
  call sub(ii)
  print *,"pass"
end

subroutine sub(ip)
  integer :: ip
  pointer :: ip
  intent(in) :: ip

  do ip=1,100
  end do
end subroutine
