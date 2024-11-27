      subroutine calcs( t,tn,tnd,und,vnd,wnd,zmn,zmnd,tkx,tky,tkz
     &                 ,nstep
     &                 ,r,q1,tb,ifrgt )
      parameter  ( i0=55,j0=36,k0=19 , l0= 1,l1= 4 )
      parameter  ( ih1 = 2 )
      common /dxdydz / sx(i0), sy(j0), sz(k0)
      common /a9     / km1,km2,jcn(k0),jcb(l0,k0)
     #                ,jce(l0,k0),icn(j0,k0),icb(l1,j0,k0),ice(l1,j0,k0)
     #     ,ms(i0,j0,k0),ncell(i0,j0)
      parameter ( cc=1000. )
      dimension  t(i0,j0,k0),tn(i0,j0,k0),tnd(i0,j0,k0)
      dimension  und(i0,j0,k0),vnd(i0,j0,k0),wnd(i0,j0,k0)
      dimension  zmn(i0,j0),zmnd(i0,j0)
      dimension  tkx(i0,j0,k0),tky(i0,j0,k0),tkz(i0,j0,k0)
      dimension r(i0,j0,k0)
      common
     & /time/ time,dx,dy,dz,dt  
     & /debug/ itr1,iii
      fnc1( aa,val1,bb,val2 ) = val1 + bb/(aa+bb)*( val2 - val1 )
      do 100 k=km1,km2
      jnn = jcn(k)
      do 100 jn=1,jnn
      j1 = jcb(jn,k)
      j2 = jce(jn,k)
      do 100 j=j1,j2
      inn = icn(j,k)
      do 100 in=1,inn
      i1 = icb(in,j,k)
      i2 = ice(in,j,k)
      do 100 i=i1,i2
      if( ms(i,j,k) .lt. 7 ) go to 100
      tnd333 = tnd(i,j,k)
      tnd133 = tnd(i-1,j,k)
      tnd533 = tnd(i+1,j,k)
      tnd313 = tnd(i,j-1,k)
      tnd353 = tnd(i,j+1,k)
      tnd335 = tnd(i,j,k-1)
      tnd331 = tnd(i,j,k+1)
      tn333 = tn(i,j,k)
      tn133 = tn(i-1,j,k)
      tn533 = tn(i+1,j,k)
      tn313 = tn(i,j-1,k)
      tn353 = tn(i,j+1,k)
      tn335 = tn(i,j,k-1)
      tn331 = tn(i,j,k+1)
      if( ms(i-1,j,k) .le. 0 ) then
          tnd133=tnd333
          tn133=tn333
      end if
      if( ms(i+1,j,k) .le. 0 ) then
          tnd533=tnd333
          tn533=tn333
      end if
      if( ms(i,j-1,k) .le. 0 ) then
          tnd313=tnd333
          tn313=tn333
      end if
      if( ms(i,j+1,k) .le. 0 ) then
          tnd353=tnd333
          tn353=tn333
      end if
      if( ms(i,j,k+1) .le. 0 ) then
          tnd331=tnd333
          tn331=tn333
      end if
      if( ms(i,j,k) .eq. 91 ) then
          tnd133 = tnd(i-1,j,k)
          tn133 = tn(i-1,j,k)
      end if
      if( ms(i,j,k) .eq. 92 ) then
          tnd313 = tnd(i,j-1,k)
          tn313 = tn(i,j-1,k)
      end if
      if( ms(i,j,k) .eq. 93 ) then
          tnd533 = tnd(i+1,j,k)
          tn533 = tn(i+1,j,k)
      end if
      if( ms(i,j,k) .eq. 94 ) then
	    tnd533 = tnd(i+1,j,k)
	    tnd313 = tnd(i,j-1,k)
	    tn533 = tn(i+1,j,k)
	    tn313 = tn(i,j-1,k)
      end if
      if( ms(i,j,k) .eq. 95 ) then 
	    tnd133 = tnd(i-1,j,k)
	    tnd313 = tnd(i,j-1,k)
	    tn133 = tn(i-1,j,k)
	    tn313 = tn(i,j-1,k)
      end if
      if( ms(i,j,k) .eq. 96 ) then
          tnd353 = tnd(i,j+1,k)
          tn353 = tn(i,j+1,k)
      end if
      xk1 = fnc1( sx(i-1),tkx(i,j,k),sx(i),tkx(i-1,j,k) )
      und1 = und(i-1,j,k)
      deltax = ( sx(i-1)+sx(i) )/2.*dx
      pe1 = abs( und1*deltax/2./xk1 )
      if( pe1.lt.1. ) then
          flux1 = und1*fnc1( sx(i-1),tnd333,sx(i),tnd133 )
     &           -xk1*( tn333 - tn133 )/deltax
      else
          flux1 = max(und1,0.)*tnd133 -max(-und1,0.)*tnd333
      end if
      xk2 = fnc1( sx(i+1),tkx(i,j,k),sx(i),tkx(i+1,j,k) )
      und2 = und(i,j,k)
      deltax = ( sx(i+1)+sx(i) )/2.*dx
      pe2 = abs( und2*deltax/2./xk2 )
      if( pe2.lt.1. ) then
          flux2 = und2*fnc1( sx(i+1),tnd333,sx(i),tnd533 )
     &           -xk2*( tn533 - tn333 )/deltax
      else
          flux2 = max(und2,0.)*tnd333 -max(-und2,0.)*tnd533
      end if
      yk3 = fnc1( sy(j-1),tky(i,j,k),sy(j),tky(i,j-1,k) )
      vnd3 = vnd(i,j-1,k)
      deltay = ( sy(j-1)+sy(j) )/2.*dy
      pe3 = abs( vnd3*deltay/2./yk3 )
      if( pe3.lt.1. ) then
          flux3 = vnd3*fnc1( sy(j-1),tnd333,sy(j),tnd313 )
     &           -yk3*( tn333 - tn313 )/deltay
      else
          flux3 = max(vnd3,0.)*tnd313 -max(-vnd3,0.)*tnd333
      end if
      yk4 = fnc1( sy(j+1),tky(i,j,k),sy(j),tky(i,j+1,k) )
      vnd4 = vnd(i,j,k)
      deltay = ( sy(j+1)+sy(j) )/2.*dy
      pe4 = abs( vnd4*deltay/2./yk4 )
      if( pe4.lt.1. ) then
          flux4 = vnd4*fnc1( sy(j+1),tnd333,sy(j),tnd353 )
     &           -yk4*( tn353 - tn333 )/deltay
      else
          flux4 = max(vnd4,0.)*tnd333 -max(-vnd4,0.)*tnd353
      end if
      if( k.eq.km1 ) then
	sz3n = sz(k) + zmn(i,j)/dz
	sz3nd = sz(k) + zmnd(i,j)/dz
        sz5n  = sz(k-1) + zmn(i,j)/dz
        sz5nd = sz(k-1) + zmnd(i,j)/dz
      else if( k.eq.km1+1 ) then
	sz3n = sz(k)
	sz3nd = sz(k)
        sz5n  = sz(k-1) + zmn(i,j)/dz
        sz5nd = sz(k-1) + zmnd(i,j)/dz
      else
	sz3n = sz(k)
	sz3nd = sz(k)
        sz5n = sz(k-1)
        sz5nd = sz(k-1)
      end if
      sz1 = sz(k+1)
      zk5 = fnc1( sz1,tkz(i,j,k),sz3n,tkz(i,j,k+1) )
      wnd5 = wnd(i,j,k+1)
      dltzn = ( sz1+sz3n )/2.*dz
      dltznd = ( sz1+sz3nd )/2.*dz
      pe5 = abs( wnd5*dltznd/2./zk5 )
      if( pe5.lt.1. ) then
          flx5nd = wnd5*fnc1( sz1,tnd333,sz3n,tnd331 )
          flx5n = -zk5*( tn333 - tn331 )/dltzn
      else
          flx5nd = max(wnd5,0.)*tnd331 -max(-wnd5,0.)*tnd333
          flx5n = 0.
      end if
      zk6 = fnc1( sz5n,tkz(i,j,k),sz3n,tkz(i,j,k-1) )
      wnd6 = wnd(i,j,k)
      dltzn = ( sz5n+sz3n )/2.*dz
      dltznd = ( sz5nd+sz3nd )/2.*dz
      pe6 = abs( wnd6*dltznd*dz/2./zk6)
      if( pe6.lt.1.) then
          flx6nd = wnd6*fnc1( sz1,tnd333,sz3nd,tnd335 )
          flx6n = -zk6*( tn335 - tn333 )/dltzn
      else 
          flx6nd = max(wnd6,0.)*tnd333 -max(-wnd6,0.)*tnd335
          flx6n = 0.
      end if
      if( k.eq.km1 ) then
          if( ifrgt.eq.1 ) then
              flx6n = q1/cc/(r(i,j,k)*1000.)*( tn333 - tb )
          else
              flx6n = 0.
          end if
      end if 
      t(i,j,k) = tn(i,j,k)
     &          + float(nstep)*dt*( ( flux1 - flux2 )/sx(i)/dx
     &                             +( flux3 - flux4 )/sy(j)/dy
     &                             +( flx5n - flx6n )/sz3n/dz
     &                             +( flx5nd - flx6nd )/sz3nd/dz )
  100 continue
      return
      end
      print *,'pass'
      end
