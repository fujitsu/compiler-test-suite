subroutine sub(n)
  implicit none
  integer n
  real  aaaa(n)
  aaaa = 1
  block 
    real aaaa(n)
    aaaa = 2
    block 
      real aaaa(n)
      if (n .eq. 0) return 
      aaaa = 3
      aaaa = aaaa + 5
      if (all(aaaa .ne. 8) ) stop "NG0"
    end block
    aaaa = aaaa + 3
    if (all(aaaa .ne. 5) ) stop "NG1"
  end block
  aaaa = aaaa + 1
  if (all(aaaa .ne. 2) ) stop "NG2"
  print *, "PASS"
end 

program main
call sub(0)
call sub(10)
end
