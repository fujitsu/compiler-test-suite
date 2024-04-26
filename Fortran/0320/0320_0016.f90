program main
  implicit none
  integer  ii
  ii = 1
  block 
    integer ii
    ii = 2
    block 
      integer ii
      ii = 3
      ii = ii + 5
      if (ii .ne. 8 ) stop "NG0"
    end block
    ii = ii + 3
    if (ii .ne. 5 ) stop "NG1"
  end block
  ii = ii + 1
  if (ii .ne. 2 ) stop "NG2"
  print *, "PASS"
end 
