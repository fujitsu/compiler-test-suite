      call s1
      print *,'pass'
      end
      subroutine s1
      character*(1)       a(0:9)
      character z/'5'/
      call ssx(loc(a),0,9) 
      call ssy(loc(a),0,9,loc(z) )
      call ssz(loc(a),0,9,loc(z ) )
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
        write(a(i),'(i1)')  i
      end do
      x(0:9:2)=char(ichar(a(0:9:2)//z)).eq.char(ichar(a(5)//z))
      do i=0,9,2
       y(i)=char(ichar(a(i)//z)).eq.char(ichar(a(5)//z))
      end do
      call sx(x,0,9,0,9,2,y,201)
      x(1:9:2)=char(ichar(a(5)//z)).eq.char(ichar(a(1:9:2)//z))
      do i=1,9,2
       y(i)=char(ichar(a(5)//z)).eq.char(ichar(a(i)//z))
      end do
      call sx(x,0,9,1,9,2,y,202)
      x=char(ichar(a//z)).eq.char(ichar(a(5)//z))
      do i=0,9
       y(i)=char(ichar(a(i)//z)).eq.char(ichar(a(5)//z))
      end do
      call sx(x,0,9,0,9,1,y,203)
      x=char(ichar(a(5)//z)).ne.char(ichar(a//z))
      do i=0,9
       y(i)=char(ichar(a(5)//z)).ne.char(ichar(a(i)//z))
      end do
      call sx(x,0,9,0,9,1,y,204)
      j=0
      do i=0,9,2
       y(j)=char(ichar(a(i)//z)).eq.char(ichar(a(5)//z))
       j=j+1
      end do
      call sx(char(ichar(a(0:9:2)//z)).eq.
     1        char(ichar(a(5)//z)),1,5,1,5,1,y,205)
      j=0
      do i=0,9
       y(j)=char(ichar(a(i)//z)).eq.char(ichar(a(5)//z))
       j=j+1
      end do
      call sx(char(ichar(a//z)).eq.
     1        char(ichar(a(5)//z)),1,10,1,10,1,y,206)
      j=0
      do i=0,9,2
       y(j)=char(ichar(a(5)//z)).eq.char(ichar(a(i)//z))
       j=j+1
      end do
      call sx(char(ichar(a(5)//z)).eq.
     1        char(ichar(a(0:9:2)//z)),1,5,1,5,1,y,207)
      j=0
      do i=0,9
       y(j)=char(ichar(a(5)//z)).eq.char(ichar(a(i)//z))
       j=j+1
      end do
      call sx(char(ichar(a(5)//z)).eq.
     1        char(ichar(a//z)),1,10,1,10,1,y,208)
      call free(ix)
      call free(iy)
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
        write(a(i),'(i1)')  i
      end do
      x(0:9:2)=char(ichar(z//a(0:9:2))).eq.char(ichar(z//a(5)))
      do i=0,9,2
       y(i)=char(ichar(z//a(i))).eq.char(ichar(z//a(5)))
      end do
      call sx(x,0,9,0,9,2,y,101)
      x(1:9:2)=char(ichar(z//a(5))).eq.char(ichar(z//a(1:9:2)))
      do i=1,9,2
       y(i)=char(ichar(z//a(5))).eq.char(ichar(z//a(i)))
      end do
      call sx(x,0,9,1,9,2,y,102)
      x=char(ichar(z//a)).eq.char(ichar(z//a(5)))
      do i=0,9
       y(i)=char(ichar(z//a(i))).eq.char(ichar(z//a(5)))
      end do
      call sx(x,0,9,0,9,1,y,103)
      x=char(ichar(z//a(5))).ne.char(ichar(z//a))
      do i=0,9
       y(i)=char(ichar(z//a(5))).ne.char(ichar(z//a(i)))
      end do
      call sx(x,0,9,0,9,1,y,104)
      j=0
      do i=0,9,2
       y(j)=char(ichar(z//a(i))).eq.char(ichar(z//a(5)))
       j=j+1
      end do
      call sx(char(ichar(z//a(0:9:2))).eq.
     1        char(ichar(z//a(5))),1,5,1,5,1,y,105)
      j=0
      do i=0,9
       y(j)=char(ichar(z//a(i))).eq.char(ichar(z//a(5)))
       j=j+1
      end do
      call sx(char(ichar(z//a)).eq.
     1        char(ichar(z//a(5))),1,10,1,10,1,y,106)
      j=0
      do i=0,9,2
       y(j)=char(ichar(z//a(5))).eq.char(ichar(z//a(i)))
       j=j+1
      end do
      call sx(char(ichar(z//a(5))).eq.
     1        char(ichar(z//a(0:9:2))),1,5,1,5,1,y,107)
      j=0
      do i=0,9
       y(j)=char(ichar(z//a(5))).eq.char(ichar(z//a(i)))
       j=j+1
      end do
      call sx(char(ichar(z//a(5))).eq.
     1        char(ichar(z//a)),1,10,1,10,1,y,108)
      call free(ix)
      call free(iy)
      end
      subroutine ssx(ia,k1,k2)
      pointer (ia,a),(iz,z),(ix,x),(iy,y)
      character*(1) a(k1:k2),z
      logical x(0:9),y(0:9)
        integer*8 malloc
        integer,parameter::zzp=8
      ix=malloc(40_zzp)
      iy=malloc(40_zzp)
      do i=0,9
        write(a(i),'(i1)')  i
      end do
      x(0:9:2)=char(ichar(a(0:9:2))).eq.char(ichar(a(5)))
      do i=0,9,2
       y(i)=a(i).eq.a(5)
      end do
      call sx(x,0,9,0,9,2,y,01)
      x(1:9:2)=char(ichar(a(5))).eq.char(ichar(a(1:9:2)))
      do i=1,9,2
       y(i)=char(ichar(a(5))).eq.char(ichar(a(i)))
      end do
      call sx(x,0,9,1,9,2,y,02)
      x=char(ichar(a)).eq.char(ichar(a(5)))
      do i=0,9
       y(i)=char(ichar(a(i))).eq.char(ichar(a(5)))
      end do
      call sx(x,0,9,0,9,1,y,03)
      x=char(ichar(a(5))).ne.char(ichar(a))
      do i=0,9
       y(i)=char(ichar(a(5))).ne.char(ichar(a(i)))
      end do
      call sx(x,0,9,0,9,1,y,04)
      j=0
      do i=0,9,2
       y(j)=char(ichar(a(i))).eq.char(ichar(a(5)))
       j=j+1
      end do
      call sx(char(ichar(a(0:9:2))).eq.char(ichar(a(5))),1,5,1,5,1,y,05)
      j=0
      do i=0,9
       y(j)=char(ichar(a(i))).eq.char(ichar(a(5)))
       j=j+1
      end do
      call sx(char(ichar(a)).eq.char(ichar(a(5))),1,10,1,10,1,y,06)
      j=0
      do i=0,9,2
       y(j)=char(ichar(a(5))).eq.char(ichar(a(i)))
       j=j+1
      end do
      call sx(char(ichar(a(5))).eq.char(ichar(a(0:9:2))),1,5,1,5,1,y,07)
      j=0
      do i=0,9
       y(j)=char(ichar(a(5))).eq.char(ichar(a(i)))
       j=j+1
      end do
      call sx(char(ichar(a(5))).eq.char(ichar(a)),1,10,1,10,1,y,08)
      call free(ix)
      call free(iy)
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
