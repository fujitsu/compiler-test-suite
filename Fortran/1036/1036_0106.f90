      implicit integer (a-h,o-z)
      dimension q(200,200)
      dimension qq(200,200)
      dimension nt(8),x(3)
      data nt /7, 3, 3, 1, 7, 3, 3, 1/

      do i = 1,20
        q(i*2,i*3) = i
        qq(i*3,i*2) = i
      end do

      is=2
      jnt=nt(is)
      write(1,*) (q(j*2,  j*3),j=1,3) 
      write(1,*) (q(j*2,  3*j),j=1,3) 
      write(1,*) (q(j*2,  j*jnt),j=1,3) 
      write(1,*) (q(j*2,  jnt*j),j=1,3) 
      write(1,*) (q(j*2,  j*nt(is)),j=1,3) 
      write(1,*) (q(j*2,  nt(is)*j),j=1,3) 
      write(1,*) (q(j*2,  j*nt(2)),j=1,3) 
      write(1,*) (qq(  j*3,j*2),j=1,3) 
      write(1,*) (qq(  3*j,j*2),j=1,3) 
      write(1,*) (qq(  j*jnt,j*2),j=1,3) 
      write(1,*) (qq(  jnt*j,j*2),j=1,3) 
      write(1,*) (qq(  j*nt(is),j*2),j=1,3) 
      write(1,*) (qq(  nt(is)*j,j*2),j=1,3) 
      write(1,*) (qq(  j*nt(2),j*2),j=1,3) 
      write(1,*) (q(2*j,  j*3),j=1,3) 
      write(1,*) (q(2*j,  3*j),j=1,3) 
      write(1,*) (q(2*j,  j*jnt),j=1,3) 
      write(1,*) (q(2*j,  jnt*j),j=1,3) 
      write(1,*) (q(2*j,  j*nt(is)),j=1,3) 
      write(1,*) (q(2*j,  nt(is)*j),j=1,3) 
      write(1,*) (q(2*j,  j*nt(2)),j=1,3) 
      write(1,*) (qq(  j*3,2*j),j=1,3) 
      write(1,*) (qq(  3*j,2*j),j=1,3) 
      write(1,*) (qq(  j*jnt,2*j),j=1,3) 
      write(1,*) (qq(  jnt*j,2*j),j=1,3) 
      write(1,*) (qq(  j*nt(is),2*j),j=1,3) 
      write(1,*) (qq(  nt(is)*j,2*j),j=1,3) 
      write(1,*) (qq(  j*nt(2),2*j),j=1,3) 
      rewind 1
      do k=1,28
      read(1,*) x;if (any(x/=(/1,2,3/)))then
             write(6,*) "NG";print *,'code=',k
        end if
      end do
      print *,'pass'
      end
