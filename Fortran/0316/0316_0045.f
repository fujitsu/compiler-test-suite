
      type tag
        integer i
        integer j
      end type
      type (tag)::a=tag(10,20)
      type (tag)::b(5)=(/tag(1,2),tag(2,4),tag(3,6),tag(4,8),tag(5,10)/)
      if (a%i.ne.10 .or. a%j.ne.20) then
        print *,'?? NG ??'
        stop 2
      endif
      do n=1,5
        if (b(n)%i.ne.n .or. b(n)%j.ne.2*n) then
          print *,'?? NG ??'
          stop 2
        endif
      enddo
      print *,'** OK **'
      end
