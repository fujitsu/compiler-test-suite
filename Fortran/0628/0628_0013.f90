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
  write(33,*) (ip,ip=1,1)
  rewind 33
  read(33,*) ip
end subroutine
