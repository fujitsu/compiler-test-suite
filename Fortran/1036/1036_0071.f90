      implicit integer (a-h,o-z)
      dimension q(200)
      dimension nt(8),x(3)
      data nt /7, 3, 3, 1, 7, 3, 3, 1/

      do i = 1,200
        q(i) = i
      end do

      is=2
      jnt=nt(is)
      write(1,*) (q(  j*3),j=1,3)
      write(1,*) (q(  3*j),j=1,3)
      write(1,*) (q(  j*jnt),j=1,3)
      write(1,*) (q(  jnt*j),j=1,3)
      write(1,*) (q(  j*nt(is)),j=1,3)
      write(1,*) (q(  nt(is)*j),j=1,3)
      write(1,*) (q(  j*nt(2)),j=1,3)
      rewind 1
      do k=1,7
      read(1,*) x;if (any(x/=(/3,6,9/)))then
             write(6,*) "NG";print *,'code=',k
        end if
      end do
      print *,'pass'
      end
