      program main
      complex*8  c1(20),c2(20),c3(20),cx,cy
      complex*16 cd1(20),cd2(20),cd3(20),cdx,cdy
      data  c1,c2,c3/20*(1.,2.),20*(2.,3.),20*(3.,4.)/
      data  cd1,cd2,cd3/20*(1.d0,2.d0),20*(2.d0,3.d0),20*(3.d0,4.d0)/
      cy=(1.,2.)
      do 10 i=2,20
        cx = c1(i)+c2(i)
        c3(i)= cx/cy
  10  continue
      write(6,*) c3
      do 20 i=1,18
        cx = c1(i)+c2(i)
        cy = c2(i)-c1(i)
        c3(i)= cx*cy
  20  continue
      write(6,*) 'c3= ',c3
      do 30 i=1,20
        cdx= cd1(i)*cd2(1)
        cdy= cdx/cdx
        cd3(i)=cdy**2.
  30  continue
      write(6,*) 'cd3= ',cd3
      cdx=(2.d0,3.d0)
      cdy=(12.d0,30.d0)
      do 40 i=11,20
        cd1(i)=cd2(i)/cdx
        cd2(i)=cdy/cd3(i)
  40  continue
      write(6,*) 'cd1= ',cd1
      write(6,*) 'cd2= ',cd2
      stop
      end
