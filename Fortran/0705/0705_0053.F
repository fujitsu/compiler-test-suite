      call s1
      print *,'pass'
      end
      subroutine s1
      complex       a(0:9)
      complex z/(5,5)/
      call ssx(loc(a),0,9) 
      call ssy(loc(a),0,9,loc(z))
      call ssz(loc(a),0,9,loc(z))
      end
      subroutine ssz(ia,k1,k2,iz)
      pointer (iz,z),(ia,a),(ix,x),(iy,y)
      complex a(k1:k2),z
      logical x(0:9),y(0:9)
        integer*8 malloc
        integer,parameter::zzp=8
      ix=malloc(80_zzp)
      iy=malloc(80_zzp)
      do i=0,9
      a(i)= cmplx(i,i)
      end do
      x(0:9:2)=csin(a(0:9:2)+z).eq.csin(a(5)+z)
      do i=0,9,2
       y(i)=csin(a(i)+z).eq.csin(a(5)+z)
      end do
      call sx(x,0,9,0,9,2,y,201)
      x(1:9:2)=sin(a(5)+z).eq.sin(a(1:9:2)+z)
      do i=1,9,2
       y(i)=sin(a(5)+z).eq.sin(a(i)+z)
      end do
      call sx(x,0,9,1,9,2,y,202)
      x=sin(a+z).eq.sin(a(5)+z)
      do i=0,9
       y(i)=sin(a(i)+z).eq.sin(a(5)+z)
      end do
      call sx(x,0,9,0,9,1,y,203)
      x=a(5)+z.ne.a+z
      do i=0,9
       y(i)=sin(a(5)+z).ne.sin(a(i)+z)
      end do
      call sx(x,0,9,0,9,1,y,204)
      j=0
      do i=0,9,2
       y(j)=sin(a(i)+z).eq.sin(a(5)+z)
       j=j+1
      end do
      call sx(sin(a(0:9:2)+z).eq.sin(a(5)+z),1,5,1,5,1,y,205)
      j=0
      do i=0,9
       y(j)=sin(a(i)+z).eq.sin(a(5)+z)
       j=j+1
      end do
      call sx(sin(a+z).eq.sin(a(5)+z),1,10,1,10,1,y,206)
      j=0
      do i=0,9,2
       y(j)=a(5)+z.eq.a(i)+z
       j=j+1
      end do
      call sx(sin(a(5)+z).eq.sin(a(0:9:2)+z),1,5,1,5,1,y,207)
      j=0
      do i=0,9
       y(j)=sin(a(5)+z).eq.sin(a(i)+z)
       j=j+1
      end do
      call sx(sin(a(5)+z).eq.sin(a+z),1,10,1,10,1,y,208)
      call free(ix)
      call free(iy)
      end
      subroutine ssy(ia,k1,k2,iz)
      pointer (iz,z),(ia,a),(ix,x),(iy,y)
      complex a(k1:k2),z
      logical x(0:9),y(0:9)
        integer*8 malloc
        integer,parameter::zzp=8
      ix=malloc(80_zzp)
      iy=malloc(80_zzp)
      do i=0,9
        a(i)= cmplx(i,i)
      end do
      x(0:9:2)=sin(z+a(0:9:2)).eq.sin(z+a(5))
      do i=0,9,2
       y(i)=sin(z+a(i)).eq.sin(z+a(5))
      end do
      call sx(x,0,9,0,9,2,y,101)
      x(1:9:2)=sin(z+a(5)).eq.sin(z+a(1:9:2))
      do i=1,9,2
       y(i)=sin(z+a(5)).eq.sin(z+a(i))
      end do
      call sx(x,0,9,1,9,2,y,102)
      x=sin(z+a).eq.sin(z+a(5))
      do i=0,9
       y(i)=sin(z+a(i)).eq.sin(z+a(5))
      end do
      call sx(x,0,9,0,9,1,y,103)
      x=sin(z+a(5)).ne.sin(z+a)
      do i=0,9
       y(i)=sin(z+a(5)).ne.sin(z+a(i))
      end do
      call sx(x,0,9,0,9,1,y,104)
      j=0
      do i=0,9,2
       y(j)=sin(z+a(i)).eq.sin(z+a(5))
       j=j+1
      end do
      call sx(sin(z+a(0:9:2)).eq.sin(z+a(5)),1,5,1,5,1,y,105)
      j=0
      do i=0,9
       y(j)=sin(z+a(i)).eq.sin(z+a(5))
       j=j+1
      end do
      call sx(sin(z+a).eq.sin(z+a(5)),1,10,1,10,1,y,106)
      j=0
      do i=0,9,2
       y(j)=sin(z+a(5)).eq.sin(z+a(i))
       j=j+1
      end do
      call sx(sin(z+a(5)).eq.sin(z+a(0:9:2)),1,5,1,5,1,y,107)
      j=0
      do i=0,9
       y(j)=sin(z+a(5)).eq.sin(z+a(i))
       j=j+1
      end do
      call sx(sin(z+a(5)).eq.sin(z+a),1,10,1,10,1,y,108)
      call free(ix)
      call free(iy)
      end
      subroutine ssx(ia,k1,k2)
      pointer (iz,z),(ia,a),(ix,x),(iy,y)
      complex a(k1:k2),z
      logical x(0:9),y(0:9)
        integer*8 malloc
        integer,parameter::zzp=8
      ix=malloc(80_zzp)
      iy=malloc(80_zzp)
      do i=0,9
        a(i)= cmplx(i,i)
      end do
      x(0:9:2)=sin(a(0:9:2)).eq.sin(a(5))
      do i=0,9,2
       y(i)=a(i).eq.a(5)
      end do
      call sx(x,0,9,0,9,2,y,01)
      x(1:9:2)=sin(a(5)).eq.sin(a(1:9:2))
      do i=1,9,2
       y(i)=sin(a(5)).eq.sin(a(i))
      end do
      call sx(x,0,9,1,9,2,y,02)
      x=sin(a).eq.sin(a(5))
      do i=0,9
       y(i)=sin(a(i)).eq.sin(a(5))
      end do
      call sx(x,0,9,0,9,1,y,03)
      x=sin(a(5)).ne.sin(a)
      do i=0,9
       y(i)=sin(a(5)).ne.sin(a(i))
      end do
      call sx(x,0,9,0,9,1,y,04)
      j=0
      do i=0,9,2
       y(j)=sin(a(i)).eq.sin(a(5))
       j=j+1
      end do
      call sx(sin(a(0:9:2)).eq.sin(a(5)),1,5,1,5,1,y,05)
      j=0
      do i=0,9
       y(j)=sin(a(i)).eq.sin(a(5))
       j=j+1
      end do
      call sx(sin(a).eq.(sin(a(5))),1,10,1,10,1,y,06)
      j=0
      do i=0,9,2
       y(j)=sin(a(5)).eq.sin(a(i))
       j=j+1
      end do
      call sx(sin(a(5)).eq.sin(a(0:9:2)),1,5,1,5,1,y,07)
      j=0
      do i=0,9
       y(j)=sin(a(5)).eq.sin(a(i))
       j=j+1
      end do
      call sx(sin(a(5)).eq.sin(a),1,10,1,10,1,y,08)
      call free(iy)
      call free(ix)
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
