       interface operator(.oper.)
       function sub(i)
       integer :: sub
       real :: i
       intent(in) :: i
       end function
       end interface

      complex:: a
      real :: p
      character :: cc
      a%re =1.0
      cc='a'
      p = .oper.a%re
      if (a%re.ne.1.0) print *,'err'
      if (p.ne.3.0) print *,'err'
      print *,'pass'
      end
      function sub(i)
       integer :: sub
      real :: i
      intent(inout) :: i
      sub = i + 2
      end function
