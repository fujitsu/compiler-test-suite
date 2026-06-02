c
c 
      call s1 
      print *,'pass'
      end
      module m_1
      integer unit/10/
      contains
       function char_f_entry(is,c) result(char_f)
        character*(is)::char_f,c*(2)
        dimension char_f(is,is)
        dimension c     (is,is)
        is=is+1
        if (len(char_f)/=is-1)print *,'fail'
        if (len(c     )/=is-1)print *,'fail'
        is=is-1
        char_f=c
       end function char_f_entry
      end module m_1
      subroutine s1
      use m_1
      character (len=*),parameter::p='abcdefghijklmn'
      character r1*50,r2*50
      character*2 x(2,2),y(2,2),yyy(2,2)*6
      is=2
      x(1,1)=p(:2);x(2,1)=p(3:4);x(1,2)=p(5:6);x(2,2)=p(7:8)
      y=char_f_entry(is,x)
      if(y(1,1)/=p( :2))print *,'fail'
      if(y(2,1)/=p(3:4))print *,'fail'
      if(y(1,2)/=p(5:6))print *,'fail'
      if(y(2,2)/=p(7:8))print *,'fail'
      write (11,*)char_f_entry(is,x)
      write (11,*) x
      rewind 11
      read (11,*) r1;read (11,*) r2
      if (r1/=r2)print *,'fail'
      call aif(char_f_entry(is,x),x)
      yyy=char_f_entry(is,x)//char_f_entry(is,x)//char_f_entry(is,x)
      if(yyy(1,1)/=repeat(p( :2),3))print *,'fail'
      if(yyy(2,1)/=repeat(p(3:4),3))print *,'fail'
      if(yyy(1,2)/=repeat(p(5:6),3))print *,'fail'
      if(yyy(2,2)/=repeat(p(7:8),3))print *,'fail'
      write (12,*)
     1    char_f_entry(is,x)//char_f_entry(is,x)//char_f_entry(is,x)
      write (12,*) x//x//x
      rewind 12
      read (12,*) r1;read (12,*) r2
      if (r1/=r2)print *,'fail'
      call aif3(
     1    char_f_entry(is,x)//char_f_entry(is,x)//char_f_entry(is,x),
     1    x//x//x)
      end
      subroutine aif(a,b)
      character*(*),dimension(2,2):: a,b
      character (len=*),parameter::p='abcdefghijklmn'
      if (len(a)/=len(b))print *,'fail'
      if (a(1,1)/=b(1,1))print *,'fail'
      if (a(2,1)/=b(2,1))print *,'fail'
      if (a(1,2)/=b(1,2))print *,'fail'
      if (a(2,2)/=b(2,2))print *,'fail'
      if(a(1,1)/=p( :2))print *,'fail'
      if(a(2,1)/=p(3:4))print *,'fail'
      if(a(1,2)/=p(5:6))print *,'fail'
      if(a(2,2)/=p(7:8))print *,'fail'
      end
      subroutine aif3(a,b)
      character*(*),dimension(2,2):: a,b
      character (len=*),parameter::p='abcdefghijklmn'
      if (len(a)/=len(b))print *,'fail'
      if (a(1,1)/=b(1,1))print *,'fail'
      if (a(2,1)/=b(2,1))print *,'fail'
      if (a(1,2)/=b(1,2))print *,'fail'
      if (a(2,2)/=b(2,2))print *,'fail'
      if(a(1,1)/=repeat(p( :2),3))print *,'fail'
      if(a(2,1)/=repeat(p(3:4),3))print *,'fail'
      if(a(1,2)/=repeat(p(5:6),3))print *,'fail'
      if(a(2,2)/=repeat(p(7:8),3))print *,'fail'
      end
