call s1(4)
print *,'pass'
contains
  subroutine s1(d1)
   integer :: d1
   character(len=4),target,save :: trg='1234'
  character(len=4),pointer :: cptr4 =>trg
if (cptr4/='1234') print *,101
  end
end
