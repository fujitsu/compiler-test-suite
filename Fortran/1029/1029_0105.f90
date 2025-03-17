      integer::mm(10)
      integer::n
      n=7
      mm=(/1,2,3,4,5,6,7,8,9,10/)

      call sub (mm,n)
     print *,'pass'
    end

    subroutine sub(mm,n)
      integer::mm(10)

      do i=1,9
        j=i+1
        if ( ( (mm(i).le.n) .AND. (n.lt.mm(j)) ) .OR.  &
             ( (mm(j).le.n) .AND. (n.lt.mm(i)) ) ) then
           if(i/=7) write(6,*) "NG"
        endif
      enddo

      if (i/=10) write(6,*) "NG"

    end
