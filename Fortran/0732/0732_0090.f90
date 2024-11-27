  character (len=4):: a,b
  integer :: i=1094861636
  b=transfer(i,a)
  if (b=='DCBA' .or. b=='ABCD')then
    print *,'pass'
   else
    print *,'error'
   endif
  end
