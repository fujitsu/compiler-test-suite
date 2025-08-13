      implicit integer (a-h,o-z)
      dimension q(200)
      dimension nt(8),x(3)
      data nt /7, 3, 3, 1, 7, 3, 3, 1/

      do i = 1,200
        q(i) = i
      end do

      is=2
      jnt=nt(is)
      k=1
      write(2,*) (q(  j*3*k),j=1,3) 
      write(2,*) (q(  3*j*k),j=1,3) 
      write(2,*) (q(  j*jnt*k),j=1,3) 
      write(2,*) (q(  jnt*j*k),j=1,3) 
      write(2,*) (q(  j*nt(is)*k),j=1,3) 
      write(2,*) (q(  nt(is)*j*k),j=1,3) 
      write(2,*) (q(  j*nt(2)*k),j=1,3)  
      rewind 2
      do k=1,7
      read(2,*) x;if (any(x/=(/3,6,9/)))then
             write(6,*) "NG";print *,'code=',k
        end if
      end do
      print *,'pass'
      end
