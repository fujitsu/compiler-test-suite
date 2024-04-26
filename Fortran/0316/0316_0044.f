
      integer           ::a(10) =(/1,2,3,4,5,6,7,8,9,10/)
      integer,parameter ::p(10) =(/1,2,3,4,5,6,7,8,9,10/)
      do i=1,10
        if (a(i).ne.p(i)) then
          print *,'?? NG ??'
          stop
        endif
      enddo
      print *,'** OK **'
      end
