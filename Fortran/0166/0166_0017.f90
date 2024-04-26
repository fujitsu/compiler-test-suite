       interface operator(.oper.)
       function sub(j,i)
       integer :: sub
       real :: i
       intent(in) :: i
       integer :: j
       intent(in) :: j
       end function
       end interface

      complex   :: a
      integer :: cc
      cc=1
      a%re=1
      p = cc.oper.a%re
      if (a%re.ne.1.0) print *,'err'
      print *,'pass'
      end
      function sub(j,i)
       integer :: sub
      real :: i
      intent(in) :: i
      integer :: j
      intent(in) :: j
      sub = i + 2
      end function
