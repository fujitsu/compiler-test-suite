c
c
      call s1
      print *,'pass'
      end
      subroutine s1
      character*2 ch
      integer u
      character::cam11*(max(-1,0)+2)(1),cam12*(max(-1,0)*2+2)(1*2)
      character::ca001*(max( 0,0)+2)(1),ca002*(max( 0,0)*2+2)(1*2)
      character::cap11*(max( 1,0)+2)(1),cap12*(max( 1,0)*2+2)(1*2)
      do u=11,19
      open (u,delim='quote')
      end do
      u=u-10
      do j=-1, 1
      do i=-1, 1
      u=u+1
      call ss1(i,j)
      end do;end do
      rewind 11;read (11,*) ch(1:1),ch(2:2)
      if (ch/='%%')print *,'fail';ch='  '
      rewind 12;read (12,*) ch(:1),ch(2:)
      if (ch/='%%')print *,'fail';ch='  '
      rewind 13;read (13,*) ch(:1),ch(2:)
      if (ch/='%%')print *,'fail';ch='  '
      rewind 14;read (14,*) ch(1:1),ch(2:2)
      if (ch/='%%')print *,'fail';ch='  '
      rewind 15;read (15,*) ch(:1),ch(2:)
      if (ch/='%%')print *,'fail';ch='  '
      rewind 16;read (16,*) ch(:1),ch(2:)
      if (ch/='%%')print *,'fail';ch='  '
      rewind 17;read (17,*) ch(1:1),cam11,cam12,ch(2:2)
      if (ch/='%%')print *,'fail';ch='  '
      if (any(cam11/='##'))print *,'fail'
      if (any(cam12/='@@'))print *,'fail'
      rewind 18;read (18,*) ch(1:1),ca001,ca002,ch(2:2)
      if (ch/='%%')print *,'fail';ch='  '
      if (any(ca001/='##'))print *,'fail'
      if (any(ca002/='@@'))print *,'fail'
      rewind 19;read (19,*) ch(1:1),cap11,cap12,ch(2:2)
      if (ch/='%%')print *,'fail';ch='  '
      if (any(cap11/='#1#'))print *,'fail'
      if (any(cap12/='@12@'))print *,'fail'
      contains
      subroutine chk(a,lb,ub,si,sh,le)
      character(*),optional:: a(:)
      integer,optional:: lb(:),ub(:),si,sh(:),le
      if (.not.present(a))print *,'fail'
      if (.not.present(lb))print *,'fail'
      if (.not.present(ub))print *,'fail'
      if (.not.present(si))print *,'fail'
      if (.not.present(sh))print *,'fail'
      if (.not.present(le))print *,'fail'
      if (len(a)/=le)print *,'fail'
      if (any(lbound(a)/=lb))print *,'fail'
      if (any(ubound(a)/=ub))print *,'fail'
      if (   (size  (a)/=si))print *,'fail'
      if (any(shape (a)/=sh))print *,'fail'
      end subroutine
      subroutine ss1(i,j)
      character a1(j)*(i),a2(j*2)*(i*2)
      a1='123'
      a2='123'
      if (i<1 .and. j<1) then
      if (any(a1/=''))print *,'fail'; if (any(a2/=''))print *,'fail'
      if (any(a1/='   '))print *,'fail'
      if (any(a2/='   '))print *,'fail'
      if (len(a1)/=0)print *,'fail'; if (len(a2)/=0)print *,'fail'
      if (any(lbound(a1)/=1))print *,'fail'
      if (any(ubound(a1)/=0))print *,'fail'
      if (   (size  (a1)/=0))print *,'fail'
      if (any(shape (a1)/=0))print *,'fail'
      call chk(a1,lbound(a1),ubound(a1),size(a1),shape(a1),len(a1))
      if (any(lbound(a2)/=1))print *,'fail'
      if (any(ubound(a2)/=0))print *,'fail'
      if (   (size  (a2)/=0))print *,'fail'
      if (any(shape (a2)/=0))print *,'fail'
      call chk(a2,lbound(a2),ubound(a2),size(a2),shape(a2),len(a2))
      else if (i>0 .and. j<1) then
      if (any(a1/=''))print *,'fail'; if (any(a2/=''))print *,'fail'
      if (any(a1/='   '))print *,'fail'
      if (any(a2/='   '))print *,'fail'
      if (len(a1)/=i)print *,'fail'; if (len(a2)/=i*2)print *,'fail'
      if (any(lbound(a1)/=1))print *,'fail'
      if (any(ubound(a1)/=0))print *,'fail'
      if (   (size  (a1)/=0))print *,'fail'
      if (any(shape (a1)/=0))print *,'fail'
      call chk(a1,lbound(a1),ubound(a1),size(a1),shape(a1),len(a1))
      if (any(lbound(a2)/=1))print *,'fail'
      if (any(ubound(a2)/=0))print *,'fail'
      if (   (size  (a2)/=0))print *,'fail'
      if (any(shape (a2)/=0))print *,'fail'
      call chk(a2,lbound(a2),ubound(a2),size(a2),shape(a2),len(a2))
      else if (i<1 .and. j>0) then
      if (any(a1/=''))print *,'fail'; if (any(a2/=''))print *,'fail'
      if (any(a1/='   '))print *,'fail'
      if (any(a2/='   '))print *,'fail'
      if (len(a1)/=0)print *,'fail'; if (len(a2)/=0)print *,'fail'
      if (any(lbound(a1)/=1))print *,'fail'
      if (any(ubound(a1)/=1))print *,'fail'
      if (   (size  (a1)/=1))print *,'fail'
      if (any(shape (a1)/=1))print *,'fail'
      call chk(a1,lbound(a1),ubound(a1),size(a1),shape(a1),len(a1))
      if (any(lbound(a2)/=1))print *,'fail'
      if (any(ubound(a2)/=2))print *,'fail'
      if (   (size  (a2)/=2))print *,'fail'
      if (any(shape (a2)/=2))print *,'fail'
      call chk(a2,lbound(a2),ubound(a2),size(a2),shape(a2),len(a2))
      else if (i>0 .and. j>0) then
      if (any(a1/='1'))print *,'fail'; if (any(a2/='12'))print *,'fail'
      if (len(a1)/=1)print *,'fail'; if (len(a2)/=2)print *,'fail'
      if (any(lbound(a1)/=1))print *,'fail'
      if (any(ubound(a1)/=1))print *,'fail'
      if (   (size  (a1)/=1))print *,'fail'
      if (any(shape (a1)/=1))print *,'fail'
      call chk(a1,lbound(a1),ubound(a1),size(a1),shape(a1),len(a1))
      if (any(lbound(a2)/=1))print *,'fail'
      if (any(ubound(a2)/=2))print *,'fail'
      if (   (size  (a2)/=2))print *,'fail'
      if (any(shape (a2)/=2))print *,'fail'
      call chk(a2,lbound(a2),ubound(a2),size(a2),shape(a2),len(a2))
      else
       print *,'fail'
      endif
      write (u,*) '%','#'//a1//'#','@'//a2//'@','%'
      end subroutine
      end
