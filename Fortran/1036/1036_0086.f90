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
      write(1,*) (q(  j*nt(is)+m),j=1,3)
      write(1,*) (q(  nt(is)*j+m),j=1,3)
      write(1,*) (q(  j*nt(2)+m),j=1,3)
      write(1,*) (q(  nt(2)*j+m),j=1,3)
      write(1,*) (q(  j*jnt+m),j=1,3)
      write(1,*) (q(  jnt*j+m),j=1,3)
      write(1,*) (q(  j*nt3(is,5,4)+m),j=1,3)
      write(1,*) (q(  nt3(is,5,4)*j+m),j=1,3)
      write(1,*) (q(  j*nt3(2,5,4)+m),j=1,3)
      write(1,*) (q(  nt3(2,5,4)*j+m),j=1,3)
      write(1,*) (q(  j*nt3(is,5,is4)+m),j=1,3)
      write(1,*) (q(  nt3(is,5,is4)*j+m),j=1,3)
      write(1,*) (q(  j*nt3(2,5,is4)+m),j=1,3)
      write(1,*) (q(  nt3(2,5,is4)*j+m),j=1,3)
      write(1,*) (q(  j*nt(is)+2),j=1,3)
      write(1,*) (q(  nt(is)*j+2),j=1,3)
      write(1,*) (q(  j*nt(2)+2),j=1,3)
      write(1,*) (q(  nt(2)*j+2),j=1,3)
      write(1,*) (q(  j*jnt+2),j=1,3)
      write(1,*) (q(  jnt*j+2),j=1,3)
      write(1,*) (q(  j*nt3(is,5,4)+2),j=1,3)
      write(1,*) (q(  nt3(is,5,4)*j+2),j=1,3)
      write(1,*) (q(  j*nt3(2,5,4)+2),j=1,3)
      write(1,*) (q(  nt3(2,5,4)*j+2),j=1,3)
      write(1,*) (q(  j*nt3(is,5,is4)+2),j=1,3)
      write(1,*) (q(  nt3(is,5,is4)*j+2),j=1,3)
      write(1,*) (q(  j*nt3(2,5,is4)+2),j=1,3)
      write(1,*) (q(  nt3(2,5,is4)*j+2),j=1,3)
      write(1,*) (q(  j*nt(is)+ma(3,4,5)),j=1,3)
      write(1,*) (q(  nt(is)*j+ma(3,4,5)),j=1,3)
      write(1,*) (q(  j*nt(2)+ma(3,4,5)),j=1,3)
      write(1,*) (q(  nt(2)*j+ma(3,4,5)),j=1,3)
      write(1,*) (q(  j*jnt+ma(3,4,5)),j=1,3)
      write(1,*) (q(  jnt*j+ma(3,4,5)),j=1,3)
      write(1,*) (q(  j*nt3(is,5,4)+ma(3,4,5)),j=1,3)
      write(1,*) (q(  nt3(is,5,4)*j+ma(3,4,5)),j=1,3)
      write(1,*) (q(  j*nt3(2,5,4)+ma(3,4,5)),j=1,3)
      write(1,*) (q(  nt3(2,5,4)*j+ma(3,4,5)),j=1,3)
      write(1,*) (q(  j*nt3(is,5,is4)+ma(3,4,5)),j=1,3)
      write(1,*) (q(  nt3(is,5,is4)*j+ma(3,4,5)),j=1,3)
      write(1,*) (q(  j*nt3(2,5,is4)+ma(3,4,5)),j=1,3)
      write(1,*) (q(  nt3(2,5,is4)*j+ma(3,4,5)),j=1,3)
      write(1,*) (q(  j*nt(is)+ma(is3,4,5)),j=1,3)
      write(1,*) (q(  nt(is)*j+ma(is3,4,5)),j=1,3)
      write(1,*) (q(  j*nt(2)+ma(is3,4,5)),j=1,3)
      write(1,*) (q(  nt(2)*j+ma(is3,4,5)),j=1,3)
      write(1,*) (q(  j*jnt+ma(is3,4,5)),j=1,3)
      write(1,*) (q(  jnt*j+ma(is3,4,5)),j=1,3)
      write(1,*) (q(  j*nt3(is,5,4)+ma(is3,4,5)),j=1,3)
      write(1,*) (q(  nt3(is,5,4)*j+ma(is3,4,5)),j=1,3)
      write(1,*) (q(  j*nt3(2,5,4)+ma(is3,4,5)),j=1,3)
      write(1,*) (q(  nt3(2,5,4)*j+ma(is3,4,5)),j=1,3)
      write(1,*) (q(  j*nt3(is,5,is4)+ma(is3,4,5)),j=1,3)
      write(1,*) (q(  nt3(is,5,is4)*j+ma(is3,4,5)),j=1,3)
      write(1,*) (q(  j*nt3(2,5,is4)+ma(is3,4,5)),j=1,3)
      write(1,*) (q(  nt3(2,5,is4)*j+ma(is3,4,5)),j=1,3)
      write(1,*) (q(  j*nt3(is,5,4)+ma(3,4,is5)),j=1,3)
      write(1,*) (q(  nt3(is,5,4)*j+ma(3,4,is5)),j=1,3)
      write(1,*) (q(  j*nt3(2,5,4)+ma(3,4,is5)),j=1,3)
      write(1,*) (q(  nt3(2,5,4)*j+ma(3,4,is5)),j=1,3)
      write(1,*) (q(  j*nt3(is,5,is4)+ma(3,4,is5)),j=1,3)
      write(1,*) (q(  nt3(is,5,is4)*j+ma(3,4,is5)),j=1,3)
      write(1,*) (q(  j*nt3(2,5,is4)+ma(3,4,is5)),j=1,3)
      write(1,*) (q(  nt3(2,5,is4)*j+ma(3,4,is5)),j=1,3)
      write(1,*) (q(  j*nt(is)+ma(is3,4,is5)),j=1,3)
      write(1,*) (q(  nt(is)*j+ma(is3,4,is5)),j=1,3)
      write(1,*) (q(  j*nt(2)+ma(is3,4,is5)),j=1,3)
      write(1,*) (q(  nt(2)*j+ma(is3,4,is5)),j=1,3)
      write(1,*) (q(  j*jnt+ma(is3,4,is5)),j=1,3)
      write(1,*) (q(  jnt*j+ma(is3,4,is5)),j=1,3)
      write(1,*) (q(  j*nt3(is,5,4)+ma(is3,4,is5)),j=1,3)
      write(1,*) (q(  nt3(is,5,4)*j+ma(is3,4,is5)),j=1,3)
      write(1,*) (q(  j*nt3(2,5,4)+ma(is3,4,is5)),j=1,3)
      write(1,*) (q(  nt3(2,5,4)*j+ma(is3,4,is5)),j=1,3)
      write(1,*) (q(  j*nt3(is,5,is4)+ma(is3,4,is5)),j=1,3)
      write(1,*) (q(  nt3(is,5,is4)*j+ma(is3,4,is5)),j=1,3)
      write(1,*) (q(  j*nt3(2,5,is4)+ma(is3,4,is5)),j=1,3)
      write(1,*) (q(  nt3(2,5,is4)*j+ma(is3,4,is5)),j=1,3)
      rewind 1
      do k=1,78
      read(1,*) x;if (any(x/=(/3,6,9/)+2))then
             write(6,*) "NG";print *,'code=',k
        end if
      end do
      print *,'pass'
      end
