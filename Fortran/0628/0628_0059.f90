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
  assign 1 to ip
  1 return
end subroutine
