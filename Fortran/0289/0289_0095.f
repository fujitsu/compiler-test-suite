      program    main
      c=5
      call sub(2,2,2,10,c)
      stop
      end
      subroutine sub(j,k,l,n,c)
      dimension a(10)
      do 1 i=1,10
         a(i)=i
    1 continue
      do 2 i=1,n
         b=a(j)
         d=a(k)
         e=a(l)
         a(j)=c
    2 continue
      f=b+d+e+a(j)
      if (f.eq.20) then
      write(*,*)'** ok **'
      else
      write(*,*)'** ng **',f
      endif
      return
      end
