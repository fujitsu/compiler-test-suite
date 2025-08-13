      implicit integer (a-h,o-z)
      dimension q(200)
      dimension nt(8),x(3)
      data nt /7, 3, 3, 1, 7, 3, 3, 1/

      do i = 1,200
        q(i) = i
      end do

      is=2
      jnt=nt(is)
      write(39,*) (q(-j*4+j*2+  j*3),j=1,3) 
      write(39,*) (q(-j*4+j*2+  3*j),j=1,3) 
      write(39,*) (q(-j*4+j*2+  j*jnt),j=1,3) 
      write(39,*) (q(-j*4+j*2+  jnt*j),j=1,3) 
      write(39,*) (q(-j*4+j*2+  j*nt(is)),j=1,3) 
      write(39,*) (q(-j*4+j*2+  nt(is)*j),j=1,3) 
      write(39,*) (q(-j*4+j*2+  j*nt(2)),j=1,3) 
      write(39,*) (q(-j*4+  j*3+j*2),j=1,3) 
      write(39,*) (q(-j*4+  3*j+j*2),j=1,3) 
      write(39,*) (q(-j*4+  j*jnt+j*2),j=1,3) 
      write(39,*) (q(-j*4+  jnt*j+j*2),j=1,3) 
      write(39,*) (q(-j*4+  j*nt(is)+j*2),j=1,3) 
      write(39,*) (q(-j*4+  nt(is)*j+j*2),j=1,3) 
      write(39,*) (q(-j*4+  j*nt(2)+j*2),j=1,3) 
      write(39,*) (q(-j*4+2*j+  j*3),j=1,3) 
      write(39,*) (q(-j*4+2*j+  3*j),j=1,3) 
      write(39,*) (q(-j*4+2*j+  j*jnt),j=1,3) 
      write(39,*) (q(-j*4+2*j+  jnt*j),j=1,3) 
      write(39,*) (q(-j*4+2*j+  j*nt(is)),j=1,3) 
      write(39,*) (q(-j*4+2*j+  nt(is)*j),j=1,3) 
      write(39,*) (q(-j*4+2*j+  j*nt(2)),j=1,3) 
      write(39,*) (q(-j*4+  j*3+2*j),j=1,3) 
      write(39,*) (q(-j*4+  3*j+2*j),j=1,3) 
      write(39,*) (q(-j*4+  j*jnt+2*j),j=1,3) 
      write(39,*) (q(-j*4+  jnt*j+2*j),j=1,3) 
      write(39,*) (q(-j*4+  j*nt(is)+2*j),j=1,3) 
      write(39,*) (q(-j*4+  nt(is)*j+2*j),j=1,3) 
      write(39,*) (q(-j*4+  j*nt(2)+2*j),j=1,3) 
      write(39,*) (q(j*2+  j*3-j*4),j=1,3) 
      write(39,*) (q(j*2+  3*j-j*4),j=1,3) 
      write(39,*) (q(j*2+  j*jnt-j*4),j=1,3) 
      write(39,*) (q(j*2+  jnt*j-j*4),j=1,3) 
      write(39,*) (q(j*2+  j*nt(is)-j*4),j=1,3) 
      write(39,*) (q(j*2+  nt(is)*j-j*4),j=1,3) 
      write(39,*) (q(j*2+  j*nt(2)-j*4),j=1,3) 
      write(39,*) (q(  j*3+j*2-j*4),j=1,3) 
      write(39,*) (q(  3*j+j*2-j*4),j=1,3) 
      write(39,*) (q(  j*jnt+j*2-j*4),j=1,3) 
      write(39,*) (q(  jnt*j+j*2-j*4),j=1,3) 
      write(39,*) (q(  j*nt(is)+j*2-j*4),j=1,3) 
      write(39,*) (q(  nt(is)*j+j*2-j*4),j=1,3) 
      write(39,*) (q(  j*nt(2)+j*2-j*4),j=1,3) 
      write(39,*) (q(2*j+  j*3-j*4),j=1,3) 
      write(39,*) (q(2*j+  3*j-j*4),j=1,3) 
      write(39,*) (q(2*j+  j*jnt-j*4),j=1,3) 
      write(39,*) (q(2*j+  jnt*j-j*4),j=1,3) 
      write(39,*) (q(2*j+  j*nt(is)-j*4),j=1,3) 
      write(39,*) (q(2*j+  nt(is)*j-j*4),j=1,3) 
      write(39,*) (q(2*j+  j*nt(2)-j*4),j=1,3) 
      write(39,*) (q(  j*3+2*j-j*4),j=1,3) 
      write(39,*) (q(  3*j+2*j-j*4),j=1,3) 
      write(39,*) (q(  j*jnt+2*j-j*4),j=1,3) 
      write(39,*) (q(  jnt*j+2*j-j*4),j=1,3) 
      write(39,*) (q(  j*nt(is)+2*j-j*4),j=1,3) 
      write(39,*) (q(  nt(is)*j+2*j-j*4),j=1,3) 
      write(39,*) (q(  j*nt(2)+2*j-j*4),j=1,3) 
      rewind 39
      do k=1,28*2
      read(39,*) x;if (any(x/=(/1,2,3/)))then
             write(6,*) "NG";print *,'code=',k
        end if
      end do
      print *,'pass'
      end
