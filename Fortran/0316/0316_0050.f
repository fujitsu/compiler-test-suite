
      integer a(3,3)
      integer,parameter::p(3)=(/1,2,3/)
      data a(3:1:-1,p) /3,2,1,6,5,4,9,8,7/

      do i=1,3
        do j=1,3
          if (a(j,i) .ne. ((i-1)*3+j)) then
            print *,i,j
            print *,a(j,i), (i-1)*3+j
            print *,'?? NG ??'
            stop
          endif
        enddo
      enddo

      print *,'** OK **'
      end
