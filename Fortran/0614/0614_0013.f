      character*4 a(3,3),data(3,3),rslt(3,3)
      integer*4   error/0/
      data    a/'1234','2345','3456'
     +         ,'4567','5678','6789'
     +         ,'7890','8901','9012'/
      data rslt/'9012','8901','7890'
     +         ,'6789','5678','4567'
     +         ,'3456','2345','1234'/

      pointer (idata,data)
      idata = loc(a)
      data(3:1:-1,3:1:-1) = a
      do j=1,3
        do i=1,3
          if(a(i,j).ne.rslt(i,j)) error=error+1
        end do
      end do
      if(error.eq.0) then
        write(6,*) '*** ok ***'
      else
        write(6,*) '*** ng ***'
        write(6,*) 'true   value=',rslt
        write(6,*) 'actual value=',a
      endif
      end
