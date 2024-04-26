program main
  implicit none
  integer  ii
  ii = 1
  call sub(ii)
  if (ii .ne. 2 ) stop "NG2"
  print *, "PASS"
end 

subroutine sub(ii)
integer ii
  block 
    integer,volatile:: ii
    ii = 2
    if (ii .ne. 2) then
      stop "NG1"
    endif
  end block
  ii = ii + 1
end subroutine 
