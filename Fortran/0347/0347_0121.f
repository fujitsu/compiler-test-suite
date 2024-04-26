      program main
      real*8   d010(40),d020(40),d030(40),d040(40)
      logical*4  l010(40),l020(40)
      complex*16 cd010(40),cd020(40),cd030(40)
      integer*2  hind

      data    it1/1/,it2/2/,it3/3/,it4/10/,it5/40/
      data    d010/40*1.0d0/,d020/40*1.0d0/,d030/40*1.0d0/,
     *        d040/40*2.0d0/
      data    l010,l020/80*.false./
      data    cd010/40*(2.0d0,4.0d0)/,cd020/40*(1.0d0,2.0d0)/,
     *        cd030/40*(1.0d0,2.0d-1)/

      it3 = 10
      ind = 1
      do 20 j=3,it3*2+1
        hind = j + 1
        ind  = 2*j-3
        cd010(j) = dcmplx( d010(ind) + d030(hind) )
        cd020(j) = dcmplx( d020(ind) + d040(hind) )
        cd020(j) = dcmplx( d010(ind) + d030(hind) )
        l010(j) = .true.
        if ( cd010(j) .eq. cd020(j) ) then
          l020(j) = .true.
          d010(ind) = 0.0d0
          d020(ind) = dreal(cd030(ind))
        endif
        d030(hind) = 1.0d0 + d010(ind)
        d040(hind) = 0.0d0 + d020(ind)
 20   continue
      write(6,*) (d010(k),k=3,39)
      write(6,*) (d020(k),k=3,39)
      write(6,*) (d030(k),k=4,22)
      write(6,*) (d040(k),k=4,22)
      write(6,*) (cd010(k),k=3,21)
      write(6,*) (cd020(k),k=3,21)
      write(6,*) (l010(k),k=3,21)
      write(6,*) (l020(k),k=3,21)
      stop
      end
