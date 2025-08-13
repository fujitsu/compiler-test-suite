      implicit integer (a-h,o-z)
      dimension q(200)
      dimension nt(8),x(3)
      data nt /7, 3, 3, 1, 7, 3, 3, 1/

      do i = 1,200
        q(i) = i
      end do

      is=2
      jnt=nt(is)
      write(36,*) (q(j*3+  j*3),j=1,3) 
      write(36,*) (q(j*3+  3*j),j=1,3) 
      write(36,*) (q(j*3+  j*jnt),j=1,3) 
      write(36,*) (q(j*3+  jnt*j),j=1,3) 
      write(36,*) (q(j*3+  j*nt(is)),j=1,3) 
      write(36,*) (q(j*3+  nt(is)*j),j=1,3) 
      write(36,*) (q(j*3+  j*nt(2)),j=1,3) 
      write(36,*) (q(  j*3+j*3),j=1,3) 
      write(36,*) (q(  3*j+j*3),j=1,3) 
      write(36,*) (q(  j*jnt+j*3),j=1,3) 
      write(36,*) (q(  jnt*j+j*3),j=1,3) 
      write(36,*) (q(  j*nt(is)+j*3),j=1,3) 
      write(36,*) (q(  nt(is)*j+j*3),j=1,3) 
      write(36,*) (q(  j*nt(2)+j*3),j=1,3) 
      write(36,*) (q(3*j+  j*3),j=1,3) 
      write(36,*) (q(3*j+  3*j),j=1,3) 
      write(36,*) (q(3*j+  j*jnt),j=1,3) 
      write(36,*) (q(3*j+  jnt*j),j=1,3) 
      write(36,*) (q(3*j+  j*nt(is)),j=1,3) 
      write(36,*) (q(3*j+  nt(is)*j),j=1,3) 
      write(36,*) (q(3*j+  j*nt(2)),j=1,3) 
      write(36,*) (q(  j*3+3*j),j=1,3) 
      write(36,*) (q(  3*j+3*j),j=1,3) 
      write(36,*) (q(  j*jnt+3*j),j=1,3) 
      write(36,*) (q(  jnt*j+3*j),j=1,3) 
      write(36,*) (q(  j*nt(is)+3*j),j=1,3) 
      write(36,*) (q(  nt(is)*j+3*j),j=1,3) 
      write(36,*) (q(  j*nt(2)+3*j),j=1,3) 
      rewind 36
      do k=1,28
      read(36,*) x;if (any(x/=(/3,6,9/)*2))then
             write(6,*) "NG";print *,'code=',k
        end if
      end do
      print *,'pass'
      end
