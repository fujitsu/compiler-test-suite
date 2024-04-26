      program main
      do 10 j=1,10
         i=mod(j,2)
         call sub(i)
   10 continue
      n=i
      if(n.eq.1) then
        write(6,*) '*** ok ***'
        goto 1
      endif
      write(6,*) '*** ng ***'
    1 stop
      end
      subroutine sub(k)
      if(k.eq.1) then
         k=k+1
      else
         k=1
      endif

      return
      end
