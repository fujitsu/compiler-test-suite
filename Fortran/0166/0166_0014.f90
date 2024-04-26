       interface operator(.oper.)
       function sub1(i,j)
       integer :: sub1
       real :: i
       intent(in) :: i
       integer :: j
       intent(in) :: j
       end function
       end interface

      complex(kind=4):: a
      character :: cc
      integer :: p ,sub
      cc='a'
      p = sub(a%re,1)
      if (a%re.ne.1.0) print *,'err'
      p = (a%re).oper.(1)
      if (p.ne.1.0) print *,'err'
      print *,'pass'
      end
      function sub(i,j)
      real(kind=4) :: i
      intent(inout) :: i
      integer :: j,sub
      intent(in) :: j
      i=1.0
      sub = i + 2
      end function

       function sub1(i,j)
       integer :: sub1
       real :: i
       intent(in) :: i
       integer :: j
       intent(in) :: j
        sub1=i
       end function
