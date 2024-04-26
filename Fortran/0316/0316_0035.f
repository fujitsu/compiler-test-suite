
      type  tag2 
        integer     i(4)
      end type       
      type (tag2) ::t2 
      parameter (t2=tag2( (/10,20,30,40/) ))

      type  tag 
        type  (tag2):: xx(2)
      end type        
      type (tag):: t(3)
      parameter (t=tag(t2))

      do k=1,4
        if (t2%i(k).ne.10*k) then
          print *,'?? NG ??'
          stop 1
        endif
      enddo
     
      do n=1,3
        do m=1,2
          do k=1,4
            if (t(n)%xx(m)%i(k).ne.10*k) then
              print *,'?? NG ??'
              stop 2
            endif
          enddo
        enddo
      enddo
      print *,'** OK **'
      end
