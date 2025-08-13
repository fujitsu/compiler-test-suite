      implicit integer (a-h,o-z)
      dimension q(200)
      dimension nt(8),x(3),nt3(2,5,4)
      data nt /7, 3, 3, 1, 7, 3, 3, 1/

      do i = 1,200
        q(i) = i
      end do

      is=2
      is4=4
      jnt=nt(is)
      nt3(2,5,4)=nt(is)
      write(15,*) (q(  j*nt(is)),j=1,3)
      write(15,*) (q(  nt(is)*j),j=1,3)
      write(15,*) (q(  j*nt(2)),j=1,3)
      write(15,*) (q(  nt(2)*j),j=1,3)
      write(15,*) (q(  j*jnt),j=1,3)
      write(15,*) (q(  jnt*j),j=1,3)
      write(15,*) (q(  j*nt3(is,5,4)),j=1,3)
      write(15,*) (q(  nt3(is,5,4)*j),j=1,3)
      write(15,*) (q(  j*nt3(2,5,4)),j=1,3)
      write(15,*) (q(  nt3(2,5,4)*j),j=1,3)
      write(15,*) (q(  j*nt3(is,5,is4)),j=1,3)
      write(15,*) (q(  nt3(is,5,is4)*j),j=1,3)
      write(15,*) (q(  j*nt3(2,5,is4)),j=1,3)
      write(15,*) (q(  nt3(2,5,is4)*j),j=1,3)
      rewind 15
      do k=1,14
      read(15,*) x;if (any(x/=(/3,6,9/)))then
             write(6,*) "NG";print *,'code=',k
        end if
      end do
      print *,'pass'
      end
