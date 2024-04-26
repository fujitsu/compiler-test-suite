program main
  implicit none
  integer  ii
  ii = 1
  block 
    integer,volatile:: ii
    ii = 2
    if (ii .eq. 2) goto 10
    ii = ii + 3
    stop "NG1"
  end block
10 continue
  ii = ii + 1
  if (ii .ne. 2 ) stop "NG2"
  print *, "PASS"
end 
