      integer::i(4),k(4)
      i=(/1,2,3,4/)
      k=(/1,2,3,4/)

      if ( (i(1)+k(1)-1.eq.k(4)-k(3)+1 .and. i(2).eq.k(3)-k(2)) .or.  &
            i(3).eq.k(4)-k(1) ) then
        n=1
      else
        write(6,*) "NG"
      endif

      print *,'pass'
      end
