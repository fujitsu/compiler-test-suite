      namelist /nam/a,b
      integer ::a=1,b(10)=2
      open(1,file='test008')
      write(1,nam)
      close(1)
      n=2
      call sub(n)
      print *,'** OK **'
      open(1,file='test008')
      close(1,status='delete')
      end

      recursive subroutine sub(n)
      namelist /nam/a,b
      integer ::a,b(10)

      n = n-1
      if (n.gt.0) call sub(n)

      open(1,file='test008')
      read(1,nam)
      close(1)
      if (a.ne.1) then
	print *,'?? NG ??'
	stop 'stop(1)'
      endif
      do 10 i=1,10
	if (b(i).ne.2) then
	  print *,'?? NG ??'
	  stop 'stop(2)'
      endif
   10 continue
      end
