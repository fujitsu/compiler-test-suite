
      program main
      logical mask(5),a(5),F,T
      parameter (F=.FALSE. ,T=.TRUE.)
      data mask/T,F,T,F,T/,a/5*F/
      integer b(5)/5*0/,n(5)/5*0/,err/0/

      where (mask) a=T

      where (a)
        b=1
      elsewhere
        b=0
      endwhere
      
      where(a(1:3))
        n(1:3)=1
      elsewhere
        n(1:3)=0
      endwhere
      where(a(4:5:1))
        n(4:5:1)=1
      elsewhere
        n(4:5:1)=0
      endwhere

      do i=1,5
         if ( n(i) .ne. b(i) )then
            err=1
         endif
      end do
      if (err .eq. 0)then
         write(6,*)'*** ok    ***'
      else
         write(6,*)'*** ng ?? ***'
      endif
      stop
      end
