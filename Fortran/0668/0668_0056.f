      program main
      integer*4 fl
      real*8    a(10),dx(10),dy(10),aa(10)
      data      dx/ 1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/
      data      dy/10.0,9.0,8.0,7.0,6.0,5.0,4.0,3.0,2.0,1.0/
      call sub1(a,dx,dy)
      call sub2(aa,dx,dy)
      fl=0
      do 10 i=1,10
        if(a(i).ne.aa(i)) then
           write(6,100) i,aa(i),a(i)
           fl=1
        endif
   10 continue
      if(fl.eq.0) write(6,200)
      stop
  100 format(1h ,' *** ng ',i2,' ***',' nil=',z16,
     *           ' vil=',z16)
  200 format(1h ,' === ok ===')
      end
      subroutine sub1(a,dx,dy)
      real*8 a(10),dx(10),dy(10)
      do 10 i=1,10
        a(i)=dx(i)**dy(i)
   10 continue
      return
      end
      subroutine sub2(aa,dx,dy)
      real*8 aa(10),dx(10),dy(10)
      do 10 i=1,10
        aa(i)=dx(i)**dy(i)
   10 continue
      return
      end
