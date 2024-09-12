      real real1(10,10)/100*0./,real2(10,10)/100*0./
      data k/5/
      do 110 i=1,10
        real1(i,i)=float(i)
       do 120 j=1,10
        if(real1(j,i).eq.3.0) goto 130
        if((k.eq.j).or.(mod(j,3).eq.0)) goto 120
        real2(j,i)=1.
        if((j.eq.1).or.(j.eq.3).or.(j.eq.5).or.(j.eq.7).or.(j.eq.9))
     +    goto 140
        goto 120
 130      real2(j,i)=2.
          goto 120
 140    real2(j,i)=3.
 120   continue
 110  continue
      write(6,*) ' **** loop 1 **** '
      write(6,1000) real2
      call sub1(real1,real2)
      do 210 i=1,10
       if (((mod(i,3).eq.0).and.(real1(i,i).gt.real2(i,i)))
     +.or.((mod(i,2).ne.1).or.(real2(i,i).eq.2.0)))    goto 210
       real2(i,i)=99.
  210 continue
      write(6,*) ' **** loop 2 **** '
      write(6,1000) real2
      call sub1(real1,real2)
      s=5.
      do 300 i=1,10
       do 310 j=1,10
        if((i.eq.1).or.(i.eq.10)) goto 320
        real2(i,j)=1.
         if(j.eq.5) goto 310
         if(real1(i,1).gt.3) goto 330
         real2(i,j)=2.
         goto 310
  320   real2(i,j)=3.
        goto 310
  330   real2(i,j)=4.
  310   continue
  300  continue
      write(6,*) ' **** loop 3 **** '
      write(6,1000) real2
      call sub1(real1,real2)
      do 400 i=1,9
       real1(i+1,i+1)=mod(i,3)
       do 410 j=1,9
        if(real1(i,i).gt.real1(i+1,i+1)) goto 410
         real2(i,10-j)=1.0
        if(real1(i,i).lt.real1(i+1,1+i)) real2(i,10-j)=2.0
  410  continue
  400 continue
      write(6,*) ' **** loop 4 **** '
      write(6,1000) real2
 1000 format(10f7.3)
      stop
      end
      subroutine sub1(a,b)
      real a(10,10),b(10,10)
      do 10 i=1,10
       do 20 j=1,10
         a(i,j)=mod(i,5)
         b(i,j)=0.
   20  continue
   10 continue
      return
      end
