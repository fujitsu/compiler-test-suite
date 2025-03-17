      integer::YP(10)
      integer::Y

      YP=(/1,2,3,4,5,6,7,8,9,10/)
      Y=5

      m=0
      do i=1,9
        j=i+1
        if ( ( (YP(i).le.Y) .AND. (Y.lt.YP(j)) ) .OR.  &
             ( (YP(j).le.Y) .AND. (Y.lt.YP(i)) ) ) then
          m=m+1
          n=i
        endif
      enddo

      if (m/=1.or.n/=5) write(6,*) "NG"
      print *,'pass'

      end
