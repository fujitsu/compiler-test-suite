      call s1
      print *,'pass'
      end
      module m_1
      contains
      subroutine c_chk(a)
      character*(*) a(:,:)
      character (len(a))::x(size(a))
      if (len(a)/=2)print *,'fail'
      if (a(1,1)/='78')print *,'fail'; if (a(1,2)/='34')print *,'fail'
      if (any((/a/)/=(/'78','34'/)))print *,'fail'
      x=reshape(a,(/size(a)/))
      if (any((/x/)/=(/'78','34'/)))print *,'fail'
      if (any((/reshape(a,(/size(a)/))/)/=(/'78','34'/)))print *,'fail'
      open(11,delim='quote');write (11,*)a
      open(12,delim='quote');write (12,*)reshape(a,(/size(a)/))
      rewind 11;read (11,*) x; if (any((/x/)/=(/'78','34'/)))print *,'fail'
      rewind 12;read (12,*) x; if (any((/x/)/=(/'78','34'/)))print *,'fail'
      a(:,:)=a(1:1,2:1:-1)
      end subroutine c_chk
      subroutine m_chk(a)
      complex a(:,:)
      complex   ::x(size(a))
      if (a(1,1)/=(4,4))print *,'fail'; if (a(1,2)/=(2,2))print *,'fail'
      if (any((/a/)/=(/(4,4),(2,2)/)))print *,'fail'
      x=reshape(a,(/size(a)/))
      if (any((/x/)/=(/(4,4),(2,2)/)))print *,'fail'
      if (any((/reshape(a,(/size(a)/))/)/=(/(4,4),(2,2)/)))print *,'fail'
      open(21,delim='quote');write (21,*)a
      open(22,delim='quote');write (22,*)reshape(a,(/size(a)/))
      rewind 21;read (21,*) x; if (any((/x/)/=(/(4,4),(2,2)/)))print *,'fail'
      rewind 22;read (22,*) x; if (any((/x/)/=(/(4,4),(2,2)/)))print *,'fail'
      a(:,:)=a(1:1,2:1:-1)
      end subroutine m_chk
      subroutine i_chk(a)
      integer a(:,:)
      integer   ::x(size(a))
      if (a(1,1)/=4)print *,'fail'; if (a(1,2)/=2)print *,'fail'
      if (any((/a/)/=(/4,2/)))print *,'fail'
      x=reshape(a,(/size(a)/))
      if (any((/x/)/=(/4,2/)))print *,'fail'
      if (any((/reshape(a,(/size(a)/))/)/=(/4,2/)))print *,'fail'
      open(31,delim='quote');write (31,*)a
      open(32,delim='quote');write (32,*)reshape(a,(/size(a)/))
      rewind 31;read (31,*) x; if (any((/x/)/=(/4,2/)))print *,'fail'
      rewind 32;read (32,*) x; if (any((/x/)/=(/4,2/)))print *,'fail'
      a(:,:)=a(1:1,2:1:-1)
      end subroutine i_chk
      end module  m_1        
      subroutine  s1
      use m_1
      character(len=2),dimension(2:3,2:3)::a1,a2
      complex         ,dimension(2:3,2:3)::b1,b2
      integer         ,dimension(2:3,2:3)::c1,c2
      parameter (i=3,j=2,k=-2,l=-1)
      a1(2,2)='12';a1(3,2)='34';a1(2,3)='56';a1(3,3)='78'
      b1(2,2)=(1,1);b1(3,2)=(2,2);b1(2,3)=(3,3);b1(3,3)=(4,4)
      c1(2,2)=1;c1(3,2)=2;c1(2,3)=3;c1(3,3)=4
      a2=a1;b2=b1;c2=c1
      call c_chk(a1(i:j:k,i:j:l))
      call m_chk(b1(i:j:k,i:j:l))
      call i_chk(c1(i:j:k,i:j:l))
      if (a1(3,3)/='34')print *,'fail';if (a1(3,2)/='78')print *,'fail'
      if (b1(3,3)/=(2,2))print *,'fail';if (b1(3,2)/=(4,4))print *,'fail'
      if (c1(3,3)/=2)print *,'fail';if (c1(3,2)/=4)print *,'fail'
      end 
