      call s1
      print *,'pass'
      end
      subroutine s1
      character*(1) a(0:9),Z/'5'/
      call ssx(loc(a),0,9,0_8) 
      call ssy(loc(a),0,9,loc(z))
      call ssz(loc(a),0,9,loc(z))
      end
      subroutine ssz(ia,k1,k2,iz)
      pointer (ia,a),(iz,z),(ix,x),(iy,y)
      character*(1) a(k1:k2),z
      logical x(0:9),y(0:9)
        integer*8 malloc
        integer,parameter::zzp=8
      ix=malloc(40_zzp)
      iy=malloc(40_zzp)
      do i=0,9
        write(a(i),'(i1)') i
      end do
      x(0:9:2)=a(0:9:2)//z.ge.a(5)//z
      do i=0,9,2
       y(i)=a(i)//z.ge.a(5)//z
      end do
      call sx(x,0,9,0,9,2,y,201)
      x(1:9:2)=a(5)//z.lt.a(1:9:2)//z
      do i=1,9,2
       y(i)=a(5)//z.lt.a(i)//z
      end do
      call sx(x,0,9,1,9,2,y,202)
      x=a//z.lt.a(5)//z
      do i=0,9
       y(i)=a(i)//z.lt.a(5)//z
      end do
      call sx(x,0,9,0,9,1,y,203)
      x=a(5)//z.gt.a//z
      do i=0,9
       y(i)=a(5)//z.gt.a(i)//z
      end do
      call sx(x,0,9,0,9,1,y,204)
      j=0
      do i=0,9,2
       y(j)=a(i)//z.ge.a(5)//z
       j=j+1
      end do
      call sx(a(0:9:2)//z.ge.a(5)//z,1,5,1,5,1,y,205)
      j=0
      do i=0,9
       y(j)=a(i)//z.ge.a(5)//z
       j=j+1
      end do
      call sx(a//z.ge.a(5)//z,1,10,1,10,1,y,206)
      j=0
      do i=0,9,2
       y(j)=a(5)//z.ge.a(i)//z
       j=j+1
      end do
      call sx(a(5)//z.ge.a(0:9:2)//z,1,5,1,5,1,y,207)
      j=0
      do i=0,9
       y(j)=a(5)//z.ge.a(i)//z
       j=j+1
      end do
      call sx(a(5)//z.ge.a//z,1,10,1,10,1,y,208)
      end
      subroutine ssy(ia,k1,k2,iz)
      pointer (ia,a),(iz,z),(ix,x),(iy,y)
      character*(1) a(k1:k2),z
      logical x(0:9),y(0:9)
        integer*8 malloc
        integer,parameter::zzp=8
      ix=malloc(40_zzp)
      iy=malloc(40_zzp)
      do i=0,9
        write(a(i),'(i1)') i
      end do
      x(0:9:2)=z//a(0:9:2).ge.z//a(5)
      do i=0,9,2
       y(i)=z//a(i).ge.z//a(5)
      end do
      call sx(x,0,9,0,9,2,y,101)
      x(1:9:2)=z//a(5).lt.z//a(1:9:2)
      do i=1,9,2
       y(i)=z//a(5).lt.z//a(i)
      end do
      call sx(x,0,9,1,9,2,y,102)
      x=z//a.lt.z//a(5)
      do i=0,9
       y(i)=z//a(i).lt.z//a(5)
      end do
      call sx(x,0,9,0,9,1,y,103)
      x=z//a(5).gt.z//a
      do i=0,9
       y(i)=z//a(5).gt.z//a(i)
      end do
      call sx(x,0,9,0,9,1,y,104)
      j=0
      do i=0,9,2
       y(j)=z//a(i).ge.z//a(5)
       j=j+1
      end do
      call sx(z//a(0:9:2).ge.z//a(5),1,5,1,5,1,y,105)
      j=0
      do i=0,9
       y(j)=z//a(i).ge.z//a(5)
       j=j+1
      end do
      call sx(z//a.ge.z//a(5),1,10,1,10,1,y,106)
      j=0
      do i=0,9,2
       y(j)=z//a(5).ge.z//a(i)
       j=j+1
      end do
      call sx(z//a(5).ge.z//a(0:9:2),1,5,1,5,1,y,107)
      j=0
      do i=0,9
       y(j)=z//a(5).ge.z//a(i)
       j=j+1
      end do
      call sx(z//a(5).ge.z//a,1,10,1,10,1,y,108)
      end
      subroutine ssx(ia,k1,k2,iz)
      pointer (ia,a),(iz,z),(ix,x),(iy,y)
      character*(1) a(k1:k2),z
      logical x(0:9),y(0:9)
        integer*8 malloc
        integer,parameter::zzp=8
      ix=malloc(40_zzp)
      iy=malloc(40_zzp)
      do i=0,9
        write(a(i),'(i1)') i
      end do
      x(0:9:2)=a(0:9:2).ge.a(5)
      do i=0,9,2
       y(i)=a(i).ge.a(5)
      end do
      call sx(x,0,9,0,9,2,y,01)
      x(1:9:2)=a(5).lt.a(1:9:2)
      do i=1,9,2
       y(i)=a(5).lt.a(i)
      end do
      call sx(x,0,9,1,9,2,y,02)
      x=a.lt.a(5)
      do i=0,9
       y(i)=a(i).lt.a(5)
      end do
      call sx(x,0,9,0,9,1,y,03)
      x=a(5).gt.a
      do i=0,9
       y(i)=a(5).gt.a(i)
      end do
      call sx(x,0,9,0,9,1,y,04)
      j=0
      do i=0,9,2
       y(j)=a(i).ge.a(5)
       j=j+1
      end do
      call sx(a(0:9:2).ge.a(5),1,5,1,5,1,y,05)
      j=0
      do i=0,9
       y(j)=a(i).ge.a(5)
       j=j+1
      end do
      call sx(a.ge.a(5),1,10,1,10,1,y,06)
      j=0
      do i=0,9,2
       y(j)=a(5).ge.a(i)
       j=j+1
      end do
      call sx(a(5).ge.a(0:9:2),1,5,1,5,1,y,07)
      j=0
      do i=0,9
       y(j)=a(5).ge.a(i)
       j=j+1
      end do
      call sx(a(5).ge.a,1,10,1,10,1,y,08)
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
