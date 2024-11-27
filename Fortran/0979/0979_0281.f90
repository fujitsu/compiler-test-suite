interface
  subroutine sub(ip)
    integer ,pointer :: ip
    intent(in) :: ip
  end subroutine
end interface

  integer ,pointer :: ip
  allocate(ip)
  call sub(ip)
  print *,"pass"
end

subroutine sub(ip)
  integer ,pointer :: ip
  intent(in) :: ip

  if (ip==1) then
  end if
end
