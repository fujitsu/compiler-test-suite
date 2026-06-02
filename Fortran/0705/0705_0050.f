      call s1
      print *,'pass'
      end
      subroutine s1
      parameter (k1=0,k2=9)
      character*(1)       a(k1:k2),z
      logical x(k1:k2),y(k1:k2)
      kk1=k1
      kk2=k2
      z='5'
      call ssx(loc(a),loc(kk1),loc(kk2),loc(x),loc(y),k1,k2)
      call ssy(loc(a),loc(kk1),loc(kk2),loc(Z) ,loc(x),loc(y),k1,k2)
      call ssz(loc(a),loc(kk1),loc(kk2),loc(Z) ,loc(x),loc(y),k1,k2)
      end
      subroutine ssz(ia,ik1,ik2,iz,ix,iy,j1,j2)
      pointer (ia,a),(ik1,k1),(ik2,k2),(iz,z),(ix,x),(iy,y)
      character*(1) a(j1:j2),z
      logical x(j1:j2),y(j1:j2)
      do i=k1,k2
        write(a(i),'(i1)')  i
      end do
      x(k1:k2:2)=char(ichar(a(k1:k2:2)//z)).eq.char(ichar(a(5)//z))
      do i=k1,k2,2
       y(i)=char(ichar(a(i)//z)).eq.char(ichar(a(5)//z))
      end do
      call sx(x,k1,k2,k1,k2,2,y,201)
      x(k1+1:k2:2)=char(ichar(a(5)//z)).eq.char(ichar(a(k1+1:k2:2)//z))
      do i=1,9,2
       y(i)=char(ichar(a(5)//z)).eq.char(ichar(a(i)//z))
      end do
      call sx(x,k1,k2,1,9,2,y,202)
      x=char(ichar(a//z)).eq.char(ichar(a(5)//z))
      do i=k1,k2
       y(i)=char(ichar(a(i)//z)).eq.char(ichar(a(5)//z))
      end do
      call sx(x,k1,k2,k1,k2,1,y,203)
      x=char(ichar(a(5)//z)).ne.char(ichar(a//z))
      do i=k1,k2
       y(i)=char(ichar(a(5)//z)).ne.char(ichar(a(i)//z))
      end do
      call sx(x,k1,k2,k1,k2,1,y,204)
      j=0
      do i=k1,k2,2
       y(j)=char(ichar(a(i)//z)).eq.char(ichar(a(5)//z))
       j=j+1
      end do
      call sx(char(ichar(a(k1:k2:2)//z)).eq.
     1        char(ichar(a(5)//z)),1,5,1,5,1,y,205)
      j=0
      do i=k1,k2
       y(j)=char(ichar(a(i)//z)).eq.char(ichar(a(5)//z))
       j=j+1
      end do
      call sx(char(ichar(a//z)).eq.
     1        char(ichar(a(5)//z)),1,10,1,10,1,y,206)
      j=0
      do i=k1,k2,2
       y(j)=char(ichar(a(5)//z)).eq.char(ichar(a(i)//z))
       j=j+1
      end do
      call sx(char(ichar(a(5)//z)).eq.
     1        char(ichar(a(k1:k2:2)//z)),1,5,1,5,1,y,207)
      j=0
      do i=k1,k2
       y(j)=char(ichar(a(5)//z)).eq.char(ichar(a(i)//z))
       j=j+1
      end do
      call sx(char(ichar(a(5)//z)).eq.
     1        char(ichar(a//z)),1,10,1,10,1,y,208)
      end
      subroutine ssy(ia,ik1,ik2,iz,ix,iy,j1,j2)
      pointer (ia,a),(ik1,k1),(ik2,k2),(iz,z),(ix,x),(iy,y)
      character*(1) a(j1:j2),z
      logical x(j1:j2),y(j1:j2)
      do i=k1,k2
        write(a(i),'(i1)')  i
      end do
      x(k1:k2:2)=char(ichar(z//a(k1:k2:2))).eq.char(ichar(z//a(5)))
      do i=k1,k2,2
       y(i)=char(ichar(z//a(i))).eq.char(ichar(z//a(5)))
      end do
      call sx(x,k1,k2,k1,k2,2,y,101)
      x(k1+1:k2:2)=char(ichar(z//a(5))).eq.char(ichar(z//a(k1+1:k2:2)))
      do i=1,9,2
       y(i)=char(ichar(z//a(5))).eq.char(ichar(z//a(i)))
      end do
      call sx(x,k1,k2,1,9,2,y,102)
      x=char(ichar(z//a)).eq.char(ichar(z//a(5)))
      do i=k1,k2
       y(i)=char(ichar(z//a(i))).eq.char(ichar(z//a(5)))
      end do
      call sx(x,k1,k2,k1,k2,1,y,103)
      x=char(ichar(z//a(5))).ne.char(ichar(z//a))
      do i=k1,k2
       y(i)=char(ichar(z//a(5))).ne.char(ichar(z//a(i)))
      end do
      call sx(x,k1,k2,k1,k2,1,y,104)
      j=0
      do i=k1,k2,2
       y(j)=char(ichar(z//a(i))).eq.char(ichar(z//a(5)))
       j=j+1
      end do
      call sx(char(ichar(z//a(k1:k2:2))).eq.
     1        char(ichar(z//a(5))),1,5,1,5,1,y,105)
      j=0
      do i=k1,k2
       y(j)=char(ichar(z//a(i))).eq.char(ichar(z//a(5)))
       j=j+1
      end do
      call sx(char(ichar(z//a)).eq.
     1        char(ichar(z//a(5))),1,10,1,10,1,y,106)
      j=0
      do i=k1,k2,2
       y(j)=char(ichar(z//a(5))).eq.char(ichar(z//a(i)))
       j=j+1
      end do
      call sx(char(ichar(z//a(5))).eq.
     1        char(ichar(z//a(k1:k2:2))),1,5,1,5,1,y,107)
      j=0
      do i=k1,k2
       y(j)=char(ichar(z//a(5))).eq.char(ichar(z//a(i)))
       j=j+1
      end do
      call sx(char(ichar(z//a(5))).eq.
     1        char(ichar(z//a)),1,10,1,10,1,y,108)
      end
      subroutine ssx(ia,ik1,ik2,ix,iy,j1,j2)
      pointer (ia,a),(ik1,k1),(ik2,k2),(ix,x),(iy,y)
      character*(1) a(j1:j2)
      logical x(j1:j2),y(j1:j2)
      do i=k1,k2
        write(a(i),'(i1)')  i
      end do
      x(k1:k2:2)=char(ichar(a(k1:k2:2))).eq.char(ichar(a(5)))
      do i=k1,k2,2
       y(i)=a(i).eq.a(5)
      end do
      call sx(x,k1,k2,k1,k2,2,y,01)
      x(k1+1:k2:2)=char(ichar(a(5))).eq.char(ichar(a(k1+1:k2:2)))
      do i=1,9,2
       y(i)=char(ichar(a(5))).eq.char(ichar(a(i)))
      end do
      call sx(x,k1,k2,1,9,2,y,02)
      x=char(ichar(a)).eq.char(ichar(a(5)))
      do i=k1,k2
       y(i)=char(ichar(a(i))).eq.char(ichar(a(5)))
      end do
      call sx(x,k1,k2,k1,k2,1,y,03)
      x=char(ichar(a(5))).ne.char(ichar(a))
      do i=k1,k2
       y(i)=char(ichar(a(5))).ne.char(ichar(a(i)))
      end do
      call sx(x,k1,k2,k1,k2,1,y,04)
      j=0
      do i=k1,k2,2
       y(j)=char(ichar(a(i))).eq.char(ichar(a(5)))
       j=j+1
      end do
      call sx(char(ichar(a(k1:k2:2))).eq.
     1        char(ichar(a(5))),1,5,1,5,1,y,05)
      j=0
      do i=k1,k2
       y(j)=char(ichar(a(i))).eq.char(ichar(a(5)))
       j=j+1
      end do
      call sx(char(ichar(a)).eq.char(ichar(a(5))),1,10,1,10,1,y,06)
      j=0
      do i=k1,k2,2
       y(j)=char(ichar(a(5))).eq.char(ichar(a(i)))
       j=j+1
      end do
      call sx(char(ichar(a(5))).eq.
     1        char(ichar(a(k1:k2:2))),1,5,1,5,1,y,07)
      j=0
      do i=k1,k2
       y(j)=char(ichar(a(5))).eq.char(ichar(a(i)))
       j=j+1
      end do
      call sx(char(ichar(a(5))).eq.char(ichar(a)),1,10,1,10,1,y,08)
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
