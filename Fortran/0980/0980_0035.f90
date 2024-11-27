interface
  subroutine sub(ip)
    integer ,pointer :: ip
    intent(in) :: ip
  end subroutine
end interface
end

subroutine sub(ip)
  integer :: ip
  intent(in) :: ip

  if (ip==1) then
  end if
end
