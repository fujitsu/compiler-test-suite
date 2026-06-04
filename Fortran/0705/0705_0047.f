      call s1
      print *,'pass'
      end
      subroutine s1
      character*(1) a(0:9)
      a='x'
      call ssx(a,0,9) 
      call ssy(a,0,9,'5')
      call ssz(a,0,9,'5')
      end
      subroutine ssz(t,k1,k2,z)
      structure /xx/
      logical x(0:9),y(0:9)
      character*(1) a(00:09)
      end structure
      record /xx/ u
      character*(*) z,t(k1:k2)
      u.a=t
      do i=0,9
        write(u.a(i),'(i1)') i
      end do
      u.x(0:9:2)=u.a(0:9:2)//z.ge.u.a(5)//z
      do i=0,9,2
       u.y(i)=u.a(i)//z.ge.u.a(5)//z
      end do
      call sx(u.x,0,9,0,9,2,u.y,201)
      u.x(1:9:2)=u.a(5)//z.lt.u.a(1:9:2)//z
      do i=1,9,2
       u.y(i)=u.a(5)//z.lt.u.a(i)//z
      end do
      call sx(u.x,0,9,1,9,2,u.y,202)
      u.x=u.a//z.lt.u.a(5)//z
      do i=0,9
       u.y(i)=u.a(i)//z.lt.u.a(5)//z
      end do
      call sx(u.x,0,9,0,9,1,u.y,203)
      u.x=u.a(5)//z.gt.u.a//z
      do i=0,9
       u.y(i)=u.a(5)//z.gt.u.a(i)//z
      end do
      call sx(u.x,0,9,0,9,1,u.y,204)
      j=0
      do i=0,9,2
       u.y(j)=u.a(i)//z.ge.u.a(5)//z
       j=j+1
      end do
      call sx(u.a(0:9:2)//z.ge.u.a(5)//z,1,5,1,5,1,u.y,205)
      j=0
      do i=0,9
       u.y(j)=u.a(i)//z.ge.u.a(5)//z
       j=j+1
      end do
      call sx(u.a//z.ge.u.a(5)//z,1,10,1,10,1,u.y,206)
      j=0
      do i=0,9,2
       u.y(j)=u.a(5)//z.ge.u.a(i)//z
       j=j+1
      end do
      call sx(u.a(5)//z.ge.u.a(0:9:2)//z,1,5,1,5,1,u.y,207)
      j=0
      do i=0,9
       u.y(j)=u.a(5)//z.ge.u.a(i)//z
       j=j+1
      end do
      call sx(u.a(5)//z.ge.u.a//z,1,10,1,10,1,u.y,208)
      end
      subroutine ssy(t,k1,k2,z)
      structure /xx/
      logical x(0:9),y(0:9)
      character*(1) a(00:09)
      end structure
      record /xx/ u
      character*(*) z,t(k1:k2)
      u.a=t
      do i=0,9
        write(u.a(i),'(i1)') i
      end do
      u.x(0:9:2)=z//u.a(0:9:2).ge.z//u.a(5)
      do i=0,9,2
       u.y(i)=z//u.a(i).ge.z//u.a(5)
      end do
      call sx(u.x,0,9,0,9,2,u.y,101)
      u.x(1:9:2)=z//u.a(5).lt.z//u.a(1:9:2)
      do i=1,9,2
       u.y(i)=z//u.a(5).lt.z//u.a(i)
      end do
      call sx(u.x,0,9,1,9,2,u.y,102)
      u.x=z//u.a.lt.z//u.a(5)
      do i=0,9
       u.y(i)=z//u.a(i).lt.z//u.a(5)
      end do
      call sx(u.x,0,9,0,9,1,u.y,103)
      u.x=z//u.a(5).gt.z//u.a
      do i=0,9
       u.y(i)=z//u.a(5).gt.z//u.a(i)
      end do
      call sx(u.x,0,9,0,9,1,u.y,104)
      j=0
      do i=0,9,2
       u.y(j)=z//u.a(i).ge.z//u.a(5)
       j=j+1
      end do
      call sx(z//u.a(0:9:2).ge.z//u.a(5),1,5,1,5,1,u.y,105)
      j=0
      do i=0,9
       u.y(j)=z//u.a(i).ge.z//u.a(5)
       j=j+1
      end do
      call sx(z//u.a.ge.z//u.a(5),1,10,1,10,1,u.y,106)
      j=0
      do i=0,9,2
       u.y(j)=z//u.a(5).ge.z//u.a(i)
       j=j+1
      end do
      call sx(z//u.a(5).ge.z//u.a(0:9:2),1,5,1,5,1,u.y,107)
      j=0
      do i=0,9
       u.y(j)=z//u.a(5).ge.z//u.a(i)
       j=j+1
      end do
      call sx(z//u.a(5).ge.z//u.a,1,10,1,10,1,u.y,108)
      end
      subroutine ssx(t,k1,k2)
      structure /xx/
      logical x(0:9),y(0:9)
      character*(1) a(00:09)
      end structure
      record /xx/ u
      character*(*) t(k1:k2)
      u.a=t
      do i=0,9
        write (u.a(i),'(i1)') i
      end do
      u.x(0:9:2)=u.a(0:9:2).ge.u.a(5)
      do i=0,9,2
       u.y(i)=u.a(i).ge.u.a(5)
      end do
      call sx(u.x,0,9,0,9,2,u.y,01)
      u.x(1:9:2)=u.a(5).lt.u.a(1:9:2)
      do i=1,9,2
       u.y(i)=u.a(5).lt.u.a(i)
      end do
      call sx(u.x,0,9,1,9,2,u.y,02)
      u.x=u.a.lt.u.a(5)
      do i=0,9
       u.y(i)=u.a(i).lt.u.a(5)
      end do
      call sx(u.x,0,9,0,9,1,u.y,03)
      u.x=u.a(5).gt.u.a
      do i=0,9
       u.y(i)=u.a(5).gt.u.a(i)
      end do
      call sx(u.x,0,9,0,9,1,u.y,04)
      j=0
      do i=0,9,2
       u.y(j)=u.a(i).ge.u.a(5)
       j=j+1
      end do
      call sx(u.a(0:9:2).ge.u.a(5),1,5,1,5,1,u.y,05)
      j=0
      do i=0,9
       u.y(j)=u.a(i).ge.u.a(5)
       j=j+1
      end do
      call sx(u.a.ge.u.a(5),1,10,1,10,1,u.y,06)
      j=0
      do i=0,9,2
       u.y(j)=u.a(5).ge.u.a(i)
       j=j+1
      end do
      call sx(u.a(5).ge.u.a(0:9:2),1,5,1,5,1,u.y,07)
      j=0
      do i=0,9
       u.y(j)=u.a(5).ge.u.a(i)
       j=j+1
      end do
      call sx(u.a(5).ge.u.a,1,10,1,10,1,u.y,08)
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
