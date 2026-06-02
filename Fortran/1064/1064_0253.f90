       interface operator(.oper.)
       function sub(i,j)
       integer :: sub
       real :: i
       intent(in) :: i
       character :: j
       intent(in) :: j
     8  end function
     9  end interface
      complex:: a=(2,3)
    12  character :: cc
    13  cc='a'
    14  kp = a%re.oper.cc
if (kp/=99) print *,301,kp
    15  if (a%re.ne.2.0) print *,'err'
    16  print *,'pass'
    17  end
    18  function sub(i,j)
       integer :: sub
    19  real :: i
    20  intent(in) :: i
       character :: j
    22  intent(in) :: j
        sub=i + ichar(j)
    25  end function
