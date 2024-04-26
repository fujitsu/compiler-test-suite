
      character a(3,3),b(3,3)
      integer,parameter::p(3)=(/3,2,1/)
      data a(p,1:3)(1:1)   /'c','b','a','f','e','d','i','h','g'/
      data b(1:3,1:3)(1:1) /'a','b','c','d','e','f','g','h','i'/

      do i=1,3
        do j=1,3
          if (a(j,i) .ne. b(j,i)) then
            print *,i,j
            print *,a(j,i), b(j,i)
            print *,'?? NG ??'
            stop
          endif
        enddo
      enddo

      print *,'** OK **'
      end
