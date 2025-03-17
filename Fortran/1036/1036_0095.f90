      implicit integer (a-h,o-z)
      dimension q(200)
      dimension nt(8),x(3),nt3(2,5,4),ima(3,4,5)
      data nt /1, 3, 4, 5, 6, 7, 8, 9/

      do i = 1,200
        q(i) = i
      end do

      is=2
      is4=4
      jnt=nt(is)
      nt3(2,5,4)=nt(is)
      im=2
      ima(3,4,5)=2
      is3=3
      is5=5
      jz=1
      write(1,*) (q(ima(3,4,is5)*jz+  j*nt(is)),j=1,3)
      write(1,*) (q(ima(3,4,is5)*jz+  nt(is)*j),j=1,3)
      write(1,*) (q(ima(3,4,is5)*jz+  j*nt(2)),j=1,3)
      write(1,*) (q(ima(3,4,is5)*jz+  nt(2)*j),j=1,3)
      write(1,*) (q(ima(3,4,is5)*jz+  j*jnt),j=1,3)
      write(1,*) (q(ima(3,4,is5)*jz+  jnt*j),j=1,3)
      write(1,*) (q(ima(3,4,is5)*jz+  j*nt3(is,5,4)),j=1,3)
      write(1,*) (q(ima(3,4,is5)*jz+  nt3(is,5,4)*j),j=1,3)
      write(1,*) (q(ima(3,4,is5)*jz+  j*nt3(2,5,4)),j=1,3)
      write(1,*) (q(ima(3,4,is5)*jz+  nt3(2,5,4)*j),j=1,3)
      write(1,*) (q(ima(3,4,is5)*jz+  j*nt3(is,5,is4)),j=1,3)
      write(1,*) (q(ima(3,4,is5)*jz+  nt3(is,5,is4)*j),j=1,3)
      write(1,*) (q(ima(3,4,is5)*jz+  j*nt3(2,5,is4)),j=1,3)
      write(1,*) (q(ima(3,4,is5)*jz+  nt3(2,5,is4)*j),j=1,3)
      write(1,*) (q(ima(is3,4,is5)*jz+  j*nt(is)),j=1,3)
      write(1,*) (q(ima(is3,4,is5)*jz+  nt(is)*j),j=1,3)
      write(1,*) (q(ima(is3,4,is5)*jz+  j*nt(2)),j=1,3)
      write(1,*) (q(ima(is3,4,is5)*jz+  nt(2)*j),j=1,3)
      write(1,*) (q(ima(is3,4,is5)*jz+  j*jnt),j=1,3)
      write(1,*) (q(ima(is3,4,is5)*jz+  jnt*j),j=1,3)
      write(1,*) (q(ima(is3,4,is5)*jz+  j*nt3(is,5,4)),j=1,3)
      write(1,*) (q(ima(is3,4,is5)*jz+  nt3(is,5,4)*j),j=1,3)
      write(1,*) (q(ima(is3,4,is5)*jz+  j*nt3(2,5,4)),j=1,3)
      write(1,*) (q(ima(is3,4,is5)*jz+  nt3(2,5,4)*j),j=1,3)
      write(1,*) (q(ima(is3,4,is5)*jz+  j*nt3(is,5,is4)),j=1,3)
      write(1,*) (q(ima(is3,4,is5)*jz+  nt3(is,5,is4)*j),j=1,3)
      write(1,*) (q(ima(is3,4,is5)*jz+  j*nt3(2,5,is4)),j=1,3)
      write(1,*) (q(ima(is3,4,is5)*jz+  nt3(2,5,is4)*j),j=1,3)
      write(1,*) (q(ima(3,4,5)*jz+  j*nt(is)),j=1,3)
      write(1,*) (q(ima(3,4,5)*jz+  nt(is)*j),j=1,3)
      write(1,*) (q(ima(3,4,5)*jz+  j*nt(2)),j=1,3)
      write(1,*) (q(ima(3,4,5)*jz+  nt(2)*j),j=1,3)
      write(1,*) (q(ima(3,4,5)*jz+  j*jnt),j=1,3)
      write(1,*) (q(ima(3,4,5)*jz+  jnt*j),j=1,3)
      write(1,*) (q(ima(3,4,5)*jz+  j*nt3(is,5,4)),j=1,3)
      write(1,*) (q(ima(3,4,5)*jz+  nt3(is,5,4)*j),j=1,3)
      write(1,*) (q(ima(3,4,5)*jz+  j*nt3(2,5,4)),j=1,3)
      write(1,*) (q(ima(3,4,5)*jz+  nt3(2,5,4)*j),j=1,3)
      write(1,*) (q(ima(3,4,5)*jz+  j*nt3(is,5,is4)),j=1,3)
      write(1,*) (q(ima(3,4,5)*jz+  nt3(is,5,is4)*j),j=1,3)
      write(1,*) (q(ima(3,4,5)*jz+  j*nt3(2,5,is4)),j=1,3)
      write(1,*) (q(ima(3,4,5)*jz+  nt3(2,5,is4)*j),j=1,3)
      write(1,*) (q(ima(is3,4,5)*jz+  j*nt(is)),j=1,3)
      write(1,*) (q(ima(is3,4,5)*jz+  nt(is)*j),j=1,3)
      write(1,*) (q(ima(is3,4,5)*jz+  j*nt(2)),j=1,3)
      write(1,*) (q(ima(is3,4,5)*jz+  nt(2)*j),j=1,3)
      write(1,*) (q(ima(is3,4,5)*jz+  j*jnt),j=1,3)
      write(1,*) (q(ima(is3,4,5)*jz+  jnt*j),j=1,3)
      write(1,*) (q(ima(is3,4,5)*jz+  j*nt3(is,5,4)),j=1,3)
      write(1,*) (q(ima(is3,4,5)*jz+  nt3(is,5,4)*j),j=1,3)
      write(1,*) (q(ima(is3,4,5)*jz+  j*nt3(2,5,4)),j=1,3)
      write(1,*) (q(ima(is3,4,5)*jz+  nt3(2,5,4)*j),j=1,3)
      write(1,*) (q(ima(is3,4,5)*jz+  j*nt3(is,5,is4)),j=1,3)
      write(1,*) (q(ima(is3,4,5)*jz+  nt3(is,5,is4)*j),j=1,3)
      write(1,*) (q(ima(is3,4,5)*jz+  j*nt3(2,5,is4)),j=1,3)
      write(1,*) (q(ima(is3,4,5)*jz+  nt3(2,5,is4)*j),j=1,3)
      write(1,*) (q(im*jz+  j*nt(is)),j=1,3)
      write(1,*) (q(im*jz+  nt(is)*j),j=1,3)
      write(1,*) (q(im*jz+  j*nt(2)),j=1,3)
      write(1,*) (q(im*jz+  nt(2)*j),j=1,3)
      write(1,*) (q(im*jz+  j*jnt),j=1,3)
      write(1,*) (q(im*jz+  jnt*j),j=1,3)
      write(1,*) (q(im*jz+  j*nt3(is,5,4)),j=1,3)
      write(1,*) (q(im*jz+  nt3(is,5,4)*j),j=1,3)
      write(1,*) (q(im*jz+  j*nt3(2,5,4)),j=1,3)
      write(1,*) (q(im*jz+  nt3(2,5,4)*j),j=1,3)
      write(1,*) (q(im*jz+  j*nt3(is,5,is4)),j=1,3)
      write(1,*) (q(im*jz+  nt3(is,5,is4)*j),j=1,3)
      write(1,*) (q(im*jz+  j*nt3(2,5,is4)),j=1,3)
      write(1,*) (q(im*jz+  nt3(2,5,is4)*j),j=1,3)
      rewind 1
      do k=1,70
      read(1,*) x;if (any(x/=(/3,6,9/)+2))then
             write(6,*) "NG";print *,'code=',k
        end if
      end do
      print *,'pass'
      end
