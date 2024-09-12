      call EULERZ
      print *,'OK'
      end
      SUBROUTINE EULERZ
      integer id, kd
      parameter( psi=1./3., c1=4. )
      parameter( id=20, kd=20 )
      dimension     d(4,id,kd),u(4,id,kd),v(4,id,kd),w(4,id,kd)
     &             ,h(4,id,kd),p(4,id,kd),c(4,id,kd)
     &             ,rx(4,id,kd),ry(4,id,kd),rz(4,id,kd)
     &             ,rr(4,id,kd),qo(4,id,kd,2,5),qqo(4,id,kd),uv(4,id,kd)
     &             ,sp(4,0:id,0:kd,5),sm(4,0:id,0:kd,5)
     &             ,flux(4,id,kd,5)
      imax=20; j=2; gami=3; km=4
      qo=1
      d=1; u=0; v=3; w=4; h=5; rx=6; ry=7; rz=8
      r1=1; r2=2
      do 33 k = 1, km
      do 33 l = 1, 4
      do 33 i = 1, imax
         d(l,i,k)  = r1*d(l,i,k) + r2*d(l,i,k+1)
         u(l,i,k)  = r1*u(l,i,k) + r2*u(l,i,k+1)
         v(l,i,k)  = r1*v(l,i,k) + r2*v(l,i,k+1)
         w(l,i,k)  = r1*w(l,i,k) + r2*w(l,i,k+1)
         h(l,i,k)  = r1*h(l,i,k) + r2*h(l,i,k+1)
         uv(l,i,k) = .5*( u(l,i,k)**2 + v(l,i,k)**2 + w(l,i,k)**2 )
         rr(l,i,k) = sqrt( rx(l,i,k)**2 + ry(l,i,k)**2 + rz(l,i,k)**2 )
         rx(l,i,k) = rx(l,i,k)/rr(l,i,k)
         ry(l,i,k) = ry(l,i,k)/rr(l,i,k)
         rz(l,i,k) = rz(l,i,k)/rr(l,i,k)
         qqo(l,i,k) = 
     &        rx(l,i,k)*u(l,i,k)+ry(l,i,k)*v(l,i,k)+rz(l,i,k)*w(l,i,k)
 33   continue
  300 continue
      return
      end
