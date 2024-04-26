
      type tag
        integer i
        integer j
      end type
      type (tag)::a(10)=tag(10,20)
      do n=1,10
        if (a(n)%i.ne.10 .or. a(n)%j.ne.20) then
          print *,'?? NG ??'
          stop
        endif
      enddo
      print *,'** OK **'
      end
