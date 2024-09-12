      program main
      integer*4 x0(30),y0(30),x1(30),y1(30)
      real*4    x(30),y(30),r4a(30)
      integer*4 a0(30),b0(30),a1(30),b1(30),i
      real*4    a(30),b(30),r4b(30)
      data x0/0,1,8,7,0,3,3,2,3,-6,0,5,4,7,-9,
     c        9,7,8,0,-4,4,3,2,1,1,5,-1,6,0,7/
      data y0/5,0,2,2,4,-6,0,6,6,-2,0,2,-2,4,1,
     c        0,6,6,8,4,2,6,8,4,0,-4,4,8,0,8/
      data x1/3,1,4,-5,0,5,3,0,5,-5,0,7,-7,4,1,
     c        5,-6,-1,0,-1,1,2,3,5,8,-3,1,4,5,-9/
      data y1/4,-3,7,0,7,-7,4,0,4,-4,8,2,0,0,0,
     c        2,2,-4,0,4,4,8,-2,0,2,2,-4,0,-4,4/

      data a0/0,1,8,7,0,3,3,2,3,-6,0,5,4,7,-9,
     c        9,7,8,0,-4,4,3,2,1,1,5,-1,6,0,7/
      data b0/5,0,2,2,4,-6,0,6,6,-2,0,2,-2,4,1,
     c        0,6,6,8,4,2,6,8,4,0,-4,4,8,0,8/
      data a1/3,1,4,-5,0,5,3,0,5,-5,0,7,-7,4,1,
     c        5,-6,-1,0,-1,1,2,3,5,8,-3,1,4,5,-9/
      data b1/4,-3,7,0,7,-7,4,0,4,-4,8,2,0,0,0,
     c        2,2,-4,0,4,4,8,-2,0,2,2,-4,0,-4,4/

      call sub01(x0,y0,x1,y1,x,y,r4a)
      call sub02(a0,b0,a1,b1,a,b,r4b)
      do 10 i=1,30
         if((x0(i) .ne. a0(i)) .or. (y0(i) .ne. b0(i)) .or.
     c      (x1(i) .ne. a1(i)) .or. (y1(i) .ne. b1(i)) .or.
     c      (x(i)  .ne.  a(i)) .or. (y(i)  .ne.  b(i)) .or.
     c      (r4a(i)  .ne.  r4b(i)))goto 20
 10   continue
      write(6,*)'*** ok ***'
      goto 30
 20   write(6,*)'*** ng ***'
      write(6,*)r4a,r4b
 30   stop
      end

      subroutine sub01(x0,y0,x1,y1,x,y,r4a)
      integer*4 x0(30),y0(30),x1(30),y1(30)
      real*4    x(30),y(30),r4a(30),men(30)
      pointer (ptr,men)

      ptr=loc(r4a(1))
      call sub03(real(x0),real(y0),real(x1),real(y1),x,y)
      call m2(x,y,men)
      return
      end

      subroutine sub03(x0,y0,x1,y1,x,y)
      real*4 x0(30),y0(30),x1(30),y1(30),a0(30),b0(30),a1(30),b1(30)
      real*4 x(30),y(30),a(30),b(30)
      pointer (ptr_x0,a0),(ptr_y0,b0),(ptr_x1,a1),(ptr_y1,b1),
     c        (ptr_x,a),(ptr_y,b)
        ptr_x0=loc(x0(1))
        ptr_y0=loc(y0(1))
        ptr_x1=loc(x1(1))
        ptr_y1=loc(y1(1))
        ptr_x=loc(x(1))
        ptr_y=loc(y(1))
        do 1 i=1,30
           if(b0(i) .eq. b1(i)) then
              if(a0(i) .eq. a1(i)) then
                 a(i)=a0(i)
              else
                 a(i)=0
              endif   
              b(i)=b0(i)
           else
              if(a0(i) .eq. a1(i))then
                 a(i)=a0(i)
                 b(i)=0
              else
                 a(i)=(a0(i)*b1(i)-a1(i)*b0(i))/(b1(i)-b0(i))
                 b(i)=-((a0(i)*b1(i)-a1(i)*b0(i))/(a1(i)-a0(i)))
              endif   
           endif   
 1      continue
      return
      end

      subroutine m2(x,y,r4a)
      real*4 x(30),y(30),r4a(30)
         r4a=(x*y)/2
      return
      end

      subroutine sub02(a0,b0,a1,b1,a,b,r4b)
      integer*4 a0(30),b0(30),a1(30),b1(30)
      real*4    a(30),b(30),r4b(30)
      call sub04(real(a0),real(b0),real(a1),real(b1),a,b)
      call m3(a,b,r4b)
      return
      end

      subroutine sub04(a0,b0,a1,b1,a,b)
      real*4 a0(30),b0(30),a1(30),b1(30)
      real*4 a(30),b(30)
      integer*4 i
      do 1 i=1,30
         if(b0(i) .eq. b1(i)) then
            if(a0(i) .eq. a1(i)) then
               a(i)=a0(i)
            else
               a(i)=0
            endif   
            b(i)=b0(i)
         else
            if(a0(i) .eq. a1(i))then
               a(i)=a0(i)
               b(i)=0
            else
               a(i)=(a0(i)*b1(i)-a1(i)*b0(i))/(b1(i)-b0(i))
               b(i)=-((a0(i)*b1(i)-a1(i)*b0(i))/(a1(i)-a0(i)))
            endif   
         endif   
 1    continue
      return
      end

      subroutine m3(a,b,r4b)
      real*4 a(30),b(30),r4b(30)
      integer*4 i
      do 10 i=1,30
 10      r4b(i)=(a(i)*b(i))/2
      return
      end
