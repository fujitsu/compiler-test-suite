c
c 
      call s1 
      print *,'pass'
      end
      module m_1
      integer,parameter::p1=8
      character*(*),parameter,dimension(p1,p1,p1)::
     1   r='x'//reshape((/(char(iv),iv=1,p1*p1*p1)/),(/p1,p1,p1/))
      logical errflag/.false./
      contains
       subroutine err
       if (.not.errflag)print *,'fail'
       errflag=.true.
       stop
       end subroutine err
      end module m_1
      subroutine s1
      use m_1
      character*2  a(p1,p1,p1)
      integer v(4)/1,3,5,7/
      k1=1;k2=2
      if (p1/=8)print *,'fail'
      ivv=1
c     print *,r
      do i1=1,p1
      do i2=1,p1
      do i3=1,p1
         if (r(i3,i2,i1)/='x'//char(ivv))call err
         ivv=ivv+1
      end do
      end do
      end do
      a=r
      call s11(a(1:p1:2,1:p1:2,1:p1:2)(2:2))
c     print *,'%1',a(1,1,1)
      call s12(a)
      a=r
      call s11(a(k1:p1:k2,k1:p1:k2,k1:p1:k2)(k2:k1+k1))
c     print *,'%1',a(1,1,1)
      call s12(a)
      a=r
      call s111(a(v,v,v)(k2:k1+k1))
c     print *,'%1',a(1,1,1)
      end
      subroutine s111(aa)
      use m_1
       character*(*) aa(p1/2,p1/2,p1/2)
       j1=1
       do i1=1,p1/2
       j2=1
       do i2=1,p1/2
       j3=1
       do i3=1,p1/2
        if (aa(i3,i2,i1)/=r(j3,j2,j1)(2:))call err
       j3=j3+2
       end do
       j2=j2+2
       end do
       j1=j1+2
       end do
       end subroutine 
      subroutine s11(aa)
      use m_1
       character*(*) aa(p1/2,p1/2,p1/2)
       j1=1
       do i1=1,p1/2
       j2=1
       do i2=1,p1/2
       j3=1
       do i3=1,p1/2
        if (aa(i3,i2,i1)/=r(j3,j2,j1)(2:))call err
        aa(i3,i2,i1)=char(ichar(aa(i3,i2,i1))+1)
       j3=j3+2
       end do
       j2=j2+2
       end do
       j1=j1+2
       end do
       end subroutine s11
      subroutine s12(aa)
      use m_1
       character*(*) aa(p1,p1,p1)
c      print *,aa(1,1,1)
       do i1=1,p1,2
       do i2=1,p1,2
       do i3=1,p1,2
         if ('x'//char(ichar(aa(i3,i2,i1)(2:))-1)/=r(i3,i2,i1))then
c         print *,i3,i2,i1,aa(i3,i2,i1)+1, r(i3,i2,i1)
         endif
         if ('x'//char(ichar(aa(i3,i2,i1)(2:))-1)/=r(i3,i2,i1))call err
       end do
       end do
       end do
       do i1=2,p1,2
       do i2=2,p1,2
       do i3=2,p1,2
         if (aa(i3,i2,i1)/=r(i3,i2,i1))call err
       end do
       end do
       end do
       end
