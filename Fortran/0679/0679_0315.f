      program main
      real    ev1(10)/10*-10/,ev2(10),ev3(10)/10*5.5/
      real*8  dv1(10)/10*-5/,dv2(10)
      integer iv1(10)/10*6/,iv2(10),iv3(10)/10*-1/
      do 10 i=1,10
       ev2(i)=i
       dv2(i)=i**(i-1)
  10   iv2(i)=i/2
      n=3
      do 20 i=1,9
       ev1(i)=dv1(10)
       dv1(i)=ev1(10)+ev2(10)/ev1(10)
       iv2(iv1(10))=i
       iv3(i)=iv1(10)**(i-1)
       iv1(i)=iv1(10)**n
       ev3(i)=sin(ev1(10))
  20  continue
      write(6,*) ev1,ev3
      write(6,*) iv1,iv2,iv3
      write(6,*) dv1
      do 30 i=1,9
       if(i.ge.10.)  goto  30
       if(dv1(10).eq.0) goto 30
       ev1(i)=dv1(10)
       dv1(i)=ev1(10)+ev2(10)/ev1(10)
       iv2(iv1(10))=i
       iv3(i)=iv1(10)**(i-1)
       iv1(i)=iv1(10)**n
       ev3(i)=sin(ev1(10))
  30  continue
      write(6,*) ev1,ev3
      write(6,*) iv1,iv2,iv3
      write(6,*) dv1
      do 40 i=1,9
       if(i.ge.10.)  goto  40
       if(dv1(10).ne.0) goto 40
       ev1(i)=dv1(10)
       dv1(i)=ev1(10)+(ev2(10)/ev1(10))**iv1(10)
       iv2(iv1(10))=i
       iv3(i)=iv1(10)**(i-1)
       iv1(i)=iv1(10)**n
       ev3(i)=sin(ev1(10))
  40  continue
      write(6,*) ev1,ev3
      write(6,*) iv1,iv2,iv3
      write(6,*) dv1
      end
