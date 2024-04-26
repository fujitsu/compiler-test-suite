      program main
      implicit none
      integer a,b,c,i,m,w,x,y,z
      parameter (w=100,x=73,y=40,z=17,m=0)
      a=-10
      do i=a,-1,3
        a=+m
        b=26+a
        c=MIN(x,w*y,z)
        c=21
      enddo
      if (a.ne.0.or.b.ne.26.or.c.ne.21.or.i.ne.2) then
        write(6,*) 'ng'
        write(6,*) a,b,c,i
      else
        write(6,*) 'ok'
      endif
      stop
      end program
