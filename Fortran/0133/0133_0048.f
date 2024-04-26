      program main
      integer,parameter::N=16
      integer var(N)
      integer atai(2,2,2,2)
      integer isum
      integer,parameter::ANS=24

      atai = reshape((/(mod(i,4),i=1,N)/),(/2,2,2,2/))
      do i=1,N
         var = reshape(reshape(reshape(reshape(atai,(/N/)),
     &        (/2,2,2,2/)),(/4,4/)),(/N/))
      enddo
      
      isum = sum(var)
      if (isum.eq.ANS) then
         print *,"OK"
      else
         print *,isum
         print *,"NG"
      endif
      end
