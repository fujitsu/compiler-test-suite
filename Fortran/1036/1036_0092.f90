      implicit integer (a-h,o-z)
      dimension q(200)
      dimension nt(8),x(3),nt3(2,5,4),ma(3,4,5)
      data nt /1, 3, 4, 5, 6, 7, 8, 9/

      do i = 1,200
        q(i) = i
      end do

      is=2
      is4=4
      jnt=nt(is)
      nt3(2,5,4)=nt(is)
      m=2
      ma(3,4,5)=2
      is3=3
      is5=5
      jz=1
      write(22,*) (q(  j*nt(is)+jz*m),j=1,3)
      write(22,*) (q(  nt(is)*j+jz*m),j=1,3)
      write(22,*) (q(  j*nt(2)+jz*m),j=1,3)
      write(22,*) (q(  nt(2)*j+jz*m),j=1,3)
      write(22,*) (q(  j*jnt+jz*m),j=1,3)
      write(22,*) (q(  jnt*j+jz*m),j=1,3)
      write(22,*) (q(  j*nt3(is,5,4)+jz*m),j=1,3)
      write(22,*) (q(  nt3(is,5,4)*j+jz*m),j=1,3)
      write(22,*) (q(  j*nt3(2,5,4)+jz*m),j=1,3)
      write(22,*) (q(  nt3(2,5,4)*j+jz*m),j=1,3)
      write(22,*) (q(  j*nt3(is,5,is4)+jz*m),j=1,3)
      write(22,*) (q(  nt3(is,5,is4)*j+jz*m),j=1,3)
      write(22,*) (q(  j*nt3(2,5,is4)+jz*m),j=1,3)
      write(22,*) (q(  nt3(2,5,is4)*j+jz*m),j=1,3)
      write(22,*) (q(  j*nt(is)+jz*2),j=1,3)
      write(22,*) (q(  nt(is)*j+jz*2),j=1,3)
      write(22,*) (q(  j*nt(2)+jz*2),j=1,3)
      write(22,*) (q(  nt(2)*j+jz*2),j=1,3)
      write(22,*) (q(  j*jnt+jz*2),j=1,3)
      write(22,*) (q(  jnt*j+jz*2),j=1,3)
      write(22,*) (q(  j*nt3(is,5,4)+jz*2),j=1,3)
      write(22,*) (q(  nt3(is,5,4)*j+jz*2),j=1,3)
      write(22,*) (q(  j*nt3(2,5,4)+jz*2),j=1,3)
      write(22,*) (q(  nt3(2,5,4)*j+jz*2),j=1,3)
      write(22,*) (q(  j*nt3(is,5,is4)+jz*2),j=1,3)
      write(22,*) (q(  nt3(is,5,is4)*j+jz*2),j=1,3)
      write(22,*) (q(  j*nt3(2,5,is4)+jz*2),j=1,3)
      write(22,*) (q(  nt3(2,5,is4)*j+jz*2),j=1,3)
      write(22,*) (q(  j*nt(is)+jz*ma(3,4,5)),j=1,3)
      write(22,*) (q(  nt(is)*j+jz*ma(3,4,5)),j=1,3)
      write(22,*) (q(  j*nt(2)+jz*ma(3,4,5)),j=1,3)
      write(22,*) (q(  nt(2)*j+jz*ma(3,4,5)),j=1,3)
      write(22,*) (q(  j*jnt+jz*ma(3,4,5)),j=1,3)
      write(22,*) (q(  jnt*j+jz*ma(3,4,5)),j=1,3)
      write(22,*) (q(  j*nt3(is,5,4)+jz*ma(3,4,5)),j=1,3)
      write(22,*) (q(  nt3(is,5,4)*j+jz*ma(3,4,5)),j=1,3)
      write(22,*) (q(  j*nt3(2,5,4)+jz*ma(3,4,5)),j=1,3)
      write(22,*) (q(  nt3(2,5,4)*j+jz*ma(3,4,5)),j=1,3)
      write(22,*) (q(  j*nt3(is,5,is4)+jz*ma(3,4,5)),j=1,3)
      write(22,*) (q(  nt3(is,5,is4)*j+jz*ma(3,4,5)),j=1,3)
      write(22,*) (q(  j*nt3(2,5,is4)+jz*ma(3,4,5)),j=1,3)
      write(22,*) (q(  nt3(2,5,is4)*j+jz*ma(3,4,5)),j=1,3)
      write(22,*) (q(  j*nt(is)+jz*ma(is3,4,5)),j=1,3)
      write(22,*) (q(  nt(is)*j+jz*ma(is3,4,5)),j=1,3)
      write(22,*) (q(  j*nt(2)+jz*ma(is3,4,5)),j=1,3)
      write(22,*) (q(  nt(2)*j+jz*ma(is3,4,5)),j=1,3)
      write(22,*) (q(  j*jnt+jz*ma(is3,4,5)),j=1,3)
      write(22,*) (q(  jnt*j+jz*ma(is3,4,5)),j=1,3)
      write(22,*) (q(  j*nt3(is,5,4)+jz*ma(is3,4,5)),j=1,3)
      write(22,*) (q(  nt3(is,5,4)*j+jz*ma(is3,4,5)),j=1,3)
      write(22,*) (q(  j*nt3(2,5,4)+jz*ma(is3,4,5)),j=1,3)
      write(22,*) (q(  nt3(2,5,4)*j+jz*ma(is3,4,5)),j=1,3)
      write(22,*) (q(  j*nt3(is,5,is4)+jz*ma(is3,4,5)),j=1,3)
      write(22,*) (q(  nt3(is,5,is4)*j+jz*ma(is3,4,5)),j=1,3)
      write(22,*) (q(  j*nt3(2,5,is4)+jz*ma(is3,4,5)),j=1,3)
      write(22,*) (q(  nt3(2,5,is4)*j+jz*ma(is3,4,5)),j=1,3)
      write(22,*) (q(  j*nt3(is,5,4)+jz*ma(3,4,is5)),j=1,3)
      write(22,*) (q(  nt3(is,5,4)*j+jz*ma(3,4,is5)),j=1,3)
      write(22,*) (q(  j*nt3(2,5,4)+jz*ma(3,4,is5)),j=1,3)
      write(22,*) (q(  nt3(2,5,4)*j+jz*ma(3,4,is5)),j=1,3)
      write(22,*) (q(  j*nt3(is,5,is4)+jz*ma(3,4,is5)),j=1,3)
      write(22,*) (q(  nt3(is,5,is4)*j+jz*ma(3,4,is5)),j=1,3)
      write(22,*) (q(  j*nt3(2,5,is4)+jz*ma(3,4,is5)),j=1,3)
      write(22,*) (q(  nt3(2,5,is4)*j+jz*ma(3,4,is5)),j=1,3)
      write(22,*) (q(  j*nt(is)+jz*ma(is3,4,is5)),j=1,3)
      write(22,*) (q(  nt(is)*j+jz*ma(is3,4,is5)),j=1,3)
      write(22,*) (q(  j*nt(2)+jz*ma(is3,4,is5)),j=1,3)
      write(22,*) (q(  nt(2)*j+jz*ma(is3,4,is5)),j=1,3)
      write(22,*) (q(  j*jnt+jz*ma(is3,4,is5)),j=1,3)
      write(22,*) (q(  jnt*j+jz*ma(is3,4,is5)),j=1,3)
      write(22,*) (q(  j*nt3(is,5,4)+jz*ma(is3,4,is5)),j=1,3)
      write(22,*) (q(  nt3(is,5,4)*j+jz*ma(is3,4,is5)),j=1,3)
      write(22,*) (q(  j*nt3(2,5,4)+jz*ma(is3,4,is5)),j=1,3)
      write(22,*) (q(  nt3(2,5,4)*j+jz*ma(is3,4,is5)),j=1,3)
      write(22,*) (q(  j*nt3(is,5,is4)+jz*ma(is3,4,is5)),j=1,3)
      write(22,*) (q(  nt3(is,5,is4)*j+jz*ma(is3,4,is5)),j=1,3)
      write(22,*) (q(  j*nt3(2,5,is4)+jz*ma(is3,4,is5)),j=1,3)
      write(22,*) (q(  nt3(2,5,is4)*j+jz*ma(is3,4,is5)),j=1,3)
      rewind 22
      do k=1,78
      read(22,*) x;if (any(x/=(/3,6,9/)+2))then
             write(6,*) "NG";print *,'code=',k
        end if
      end do
      print *,'pass'
      end
