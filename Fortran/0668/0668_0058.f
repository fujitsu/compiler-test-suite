      program main
      real*8    a(10)/10*0.0d0/,dx(10),dy(10),aa(10)/10*0.0d0/
      data      dx/ 1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/
      data      dy/10.0,9.0,8.0,7.0,6.0,5.0,4.0,3.0,2.0,1.0/
      integer*4  basem(10)
      logical*4  mask(10)
      integer*2  fl/0/
      data       basem/1,1,0,0,0,1,0,0,1,1/
      do 3 i = 1,10
        if(basem(i).eq.1) then
          mask(i)=.true.
        else
          mask(i)=.false.
        endif
    3 continue
      call sub1(a,dx,dy,mask)
      call sub2(aa,dx,dy,mask)
   21 fl=0
      do 30 i=1,10
        if(mask(i)) then
          if(a(i).ne.aa(i)) then
             write(6,100) i,aa(i),a(i)
             fl=1
          endif
        endif
   30 continue
      if(fl.eq.0) write(6,200)
      stop
  100 format(1h ,' *** ng ',i2,' ***',' nil=',z16,
     *           ' vil=',z16)
  200 format(1h ,' === ok ===')
      end
      subroutine sub1(a,dx,dy,mask)
      real*8 a(10),dx(10),dy(10)
      logical*4  mask(10)
      do 10 i=1,10
        if(mask(i)) then
          a(i)=dx(i)**dy(i)
        endif
   10 continue
      return
      end
      subroutine sub2(aa,dx,dy,mask)
      real*8 aa(10),dx(10),dy(10)
      logical*4  mask(10)
      do 10 i=1,10
        if(mask(i)) then
          aa(i)=dx(i)**dy(i)
        endif
   10 continue
      return
      end
