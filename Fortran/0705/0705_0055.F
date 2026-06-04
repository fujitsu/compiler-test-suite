      call s1
      print *,'pass'
      end
      subroutine s1
      complex       a(0:9),z/(5,5)/
      call ssx(loc(a),0,9,0_8) 
      call ssy(loc(a),0,9,loc(z )   )
      call ssz(loc(a),0,9,loc(z)    )
      end
      subroutine ssz(ia,k1,k2,iz)
      pointer (ia,a),(iz,z),(ix,x),(iy,y)
      complex a(k1:k2),z
      logical x(0:9),y(0:9)
        integer*8 malloc
        integer,parameter::zzp=8
      iy=malloc(40_zzp)
      ix=malloc(40_zzp)
      iy=loc(y)
      ix=loc(x)
      do i=0,9
      a(i)= cmplx(i,i)
      end do
      x(0:9:2)=a(0:9:2)+z.eq.a(5)+z
      do i=0,9,2
       y(i)=a(i)+z.eq.a(5)+z
      end do
      call sx(x,0,9,0,9,2,y,201)
      x(1:9:2)=a(5)+z.eq.a(1:9:2)+z
      do i=1,9,2
       y(i)=a(5)+z.eq.a(i)+z
      end do
      call sx(x,0,9,1,9,2,y,202)
      x=a+z.eq.a(5)+z
      do i=0,9
       y(i)=a(i)+z.eq.a(5)+z
      end do
      call sx(x,0,9,0,9,1,y,203)
      x=a(5)+z.ne.a+z
      do i=0,9
       y(i)=a(5)+z.ne.a(i)+z
      end do
      call sx(x,0,9,0,9,1,y,204)
      j=0
      do i=0,9,2
       y(j)=a(i)+z.eq.a(5)+z
       j=j+1
      end do
      call sx(a(0:9:2)+z.eq.a(5)+z,1,5,1,5,1,y,205)
      j=0
      do i=0,9
       y(j)=a(i)+z.eq.a(5)+z
       j=j+1
      end do
      call sx(a+z.eq.a(5)+z,1,10,1,10,1,y,206)
      j=0
      do i=0,9,2
       y(j)=a(5)+z.eq.a(i)+z
       j=j+1
      end do
      call sx(a(5)+z.eq.a(0:9:2)+z,1,5,1,5,1,y,207)
      j=0
      do i=0,9
       y(j)=a(5)+z.eq.a(i)+z
       j=j+1
      end do
      call sx(a(5)+z.eq.a+z,1,10,1,10,1,y,208)
      end
      subroutine ssy(ia,k1,k2,iz)
      pointer (ia,a),(iz,z),(ix,x),(iy,y)
      complex a(k1:k2),z
      logical x(0:9),y(0:9)
        integer*8 malloc
        integer,parameter::zzp=8
      iy=malloc(40_zzp)
      ix=malloc(40_zzp)
      iy=loc(y)
      ix=loc(x)
      do i=0,9
        a(i)= cmplx(i,i)
      end do
      x(0:9:2)=z+a(0:9:2).eq.z+a(5)
      do i=0,9,2
       y(i)=z+a(i).eq.z+a(5)
      end do
      call sx(x,0,9,0,9,2,y,101)
      x(1:9:2)=z+a(5).eq.z+a(1:9:2)
      do i=1,9,2
       y(i)=z+a(5).eq.z+a(i)
      end do
      call sx(x,0,9,1,9,2,y,102)
      x=z+a.eq.z+a(5)
      do i=0,9
       y(i)=z+a(i).eq.z+a(5)
      end do
      call sx(x,0,9,0,9,1,y,103)
      x=z+a(5).ne.z+a
      do i=0,9
       y(i)=z+a(5).ne.z+a(i)
      end do
      call sx(x,0,9,0,9,1,y,104)
      j=0
      do i=0,9,2
       y(j)=z+a(i).eq.z+a(5)
       j=j+1
      end do
      call sx(z+a(0:9:2).eq.z+a(5),1,5,1,5,1,y,105)
      j=0
      do i=0,9
       y(j)=z+a(i).eq.z+a(5)
       j=j+1
      end do
      call sx(z+a.eq.z+a(5),1,10,1,10,1,y,106)
      j=0
      do i=0,9,2
       y(j)=z+a(5).eq.z+a(i)
       j=j+1
      end do
      call sx(z+a(5).eq.z+a(0:9:2),1,5,1,5,1,y,107)
      j=0
      do i=0,9
       y(j)=z+a(5).eq.z+a(i)
       j=j+1
      end do
      call sx(z+a(5).eq.z+a,1,10,1,10,1,y,108)
      end
      subroutine ssx(ia,k1,k2,iz)
      pointer (ia,a),(iz,z),(ix,x),(iy,y)
      complex a(k1:k2),z
      logical x(0:9),y(0:9)
        integer*8 malloc
        integer,parameter::zzp=8
      iy=malloc(40_zzp)
      ix=malloc(40_zzp)
      iy=loc(y)
      ix=loc(x)
      do i=0,9
        a(i)= cmplx(i,i)
      end do
      x(0:9:2)=a(0:9:2).eq.a(5)
      do i=0,9,2
       y(i)=a(i).eq.a(5)
      end do
      call sx(x,0,9,0,9,2,y,01)
      x(1:9:2)=a(5).eq.a(1:9:2)
      do i=1,9,2
       y(i)=a(5).eq.a(i)
      end do
      call sx(x,0,9,1,9,2,y,02)
      x=a.eq.a(5)
      do i=0,9
       y(i)=a(i).eq.a(5)
      end do
      call sx(x,0,9,0,9,1,y,03)
      x=a(5).ne.a
      do i=0,9
       y(i)=a(5).ne.a(i)
      end do
      call sx(x,0,9,0,9,1,y,04)
      j=0
      do i=0,9,2
       y(j)=a(i).eq.a(5)
       j=j+1
      end do
      call sx(a(0:9:2).eq.a(5),1,5,1,5,1,y,05)
      j=0
      do i=0,9
       y(j)=a(i).eq.a(5)
       j=j+1
      end do
      call sx(a.eq.a(5),1,10,1,10,1,y,06)
      j=0
      do i=0,9,2
       y(j)=a(5).eq.a(i)
       j=j+1
      end do
      call sx(a(5).eq.a(0:9:2),1,5,1,5,1,y,07)
      j=0
      do i=0,9
       y(j)=a(5).eq.a(i)
       j=j+1
      end do
      call sx(a(5).eq.a,1,10,1,10,1,y,08)
      end
      subroutine sx(x,dl,du,init,fin,incr,y,id)
      integer         dl,du,init,fin,incr
      logical       x(dl:du)
      logical       y(dl:du)
      do i=init,fin,incr
         if (x(i)) then
           if (y(i)) then
           else
             print *,'error code :',i,id,x(i),y(i)
             print *,'fail'
           endif
         else
           if (y(i)) then
             print *,'error code :',i,id,x(i),y(i)
             print *,'fail'
           else
           endif
         endif
      end do
      end
