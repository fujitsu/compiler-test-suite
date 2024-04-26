
      type tag
        integer i(5)
        integer j
      end type
      type (tag) ::t
      parameter(t = tag((/1,2,3,4,5/),10) )
       
      type tag2
        type (tag) ::xx(2)
      end type
      type (tag2) ::t2(3)
      parameter(t2 = tag2(t) )
       
      do k=1,5
        if (t%i(k).ne.k) then
          print *,'?? NG ??'
          stop 1
        endif
      enddo
      if (t%j.ne.10) then
        print *,'?? NG ??'
        stop 2
      endif

      do n=1,3
        do m=1,2
          do k=1,4
            if (t2(n)%xx(m)%i(k).ne.k) then
              print *,'?? NG ??'
              stop 3
            endif
          enddo
          if (t2(n)%xx(m)%j.ne.10) then
            print *,'?? NG ??'
            stop 4
          endif
        enddo
      enddo
   
      print *,'** OK **'
      end
