c
c
      call s1
      print *,'pass'
      end
      module mm
      character(len=2),parameter,dimension(2,2,2)::p32=
     1   reshape((/'89a','9ab','abc','bcd',
     1             'cde','def','efg','fgh'/),(/2,2,2/))
      character(len=2),parameter,dimension(2,2  )::p22=
     1   reshape((/'456','567','678','789'/),(/2,2/))
      character(len=2),parameter,dimension(2    )::p12=
     1           (/'123','234'/)
      character(len=2),parameter                 ::p02=
     1             '345'
      character(len=1),parameter,dimension(2,2,2)::p31=p32
      character(len=1),parameter,dimension(2,2  )::p21=p22
      character(len=1),parameter,dimension(2    )::p11=p12
      character(len=1),parameter                 ::p01=p02
      interface check_x1
       module procedure x10,x11,x12,x13
      end interface
      interface check_y1
       module procedure y10,y11,y12,y13
      end interface
      interface check_x2
       module procedure x20,x21,x22,x23
      end interface
      interface check_y2
       module procedure y20,y21,y22,y23
      end interface
      contains
       subroutine x10(a)
       character(len=*)::a
       parameter (k=1)
       if (len(a)/=k)print *,'fail'
       if (a/=p01)print *,'fail'
       return
       entry      y10(a)
       if (len(a)/=k+1)print *,'fail'
       if (a/=p01//'#')print *,'fail'
       return
       entry      x20(a)
       if (len(a)/=k+1)print *,'fail'
       if (a/=p02)print *,'fail'
       return
       entry      y20(a)
       if (len(a)/=k+1+1)print *,'fail'
       if (a/=p02//'#')print *,'fail'
       end subroutine
       subroutine x11(a)
       character(len=*)::a(:)
       parameter (k=1)
       if (len(a)/=k)print *,'fail'
       if (any(a/=p11))print *,'fail'
       if (size(a)/=size(p11))print *,'fail'
       return
       entry      y11(a)
       if (len(a)/=k+1)print *,'fail'
       if (any(a/=p11//'#'))print *,'fail'
       if (size(a)/=size(p11))print *,'fail'
       return
       entry      x21(a)
       if (len(a)/=k+1)print *,'fail'
       if (any(a/=p12))print *,'fail'
       if (size(a)/=size(p12))print *,'fail'
       return
       entry      y21(a)
       if (len(a)/=k+1+1)print *,'fail'
       if (any(a/=p12//'#'))print *,'fail'
       if (size(a)/=size(p12))print *,'fail'
       end subroutine
       subroutine x12(a)
       character(len=*)::a(:,:)
       parameter (k=1)
       if (len(a)/=k)print *,'fail'
       if (any(a/=p21))print *,'fail'
       if (size(a)/=size(p21))print *,'fail'
       return
       entry      y12(a)
       if (len(a)/=k+1)print *,'fail'
       if (any(a/=p21//'#'))print *,'fail'
       if (size(a)/=size(p21))print *,'fail'
       return
       entry      x22(a)
       if (len(a)/=k+1)print *,'fail'
       if (any(a/=p22))print *,'fail'
       if (size(a)/=size(p22))print *,'fail'
       return
       entry      y22(a)
       if (len(a)/=k+1+1)print *,'fail'
       if (any(a/=p22//'#'))print *,'fail'
       if (size(a)/=size(p22))print *,'fail'
       end subroutine
       subroutine x13(a)
       character(len=*)::a(:,:,:)
       parameter (k=1)
       if (len(a)/=k)print *,'fail'
       if (any(a/=p31))print *,'fail'
       if (size(a)/=size(p31))print *,'fail'
       return
       entry      y13(a)
       if (len(a)/=k+1)print *,'fail'
       if (any(a/=p31//'#'))print *,'fail'
       if (size(a)/=size(p31))print *,'fail'
       return
       entry      x23(a)
       if (len(a)/=k+1)print *,'fail'
       if (any(a/=p32))print *,'fail'
       if (size(a)/=size(p32))print *,'fail'
       return
       entry      y23(a)
       if (len(a)/=k+1+1)print *,'fail'
       if (any(a/=p32//'#'))print *,'fail'
       if (size(a)/=size(p32))print *,'fail'
       end subroutine
       function b3(i)
        character(len=i),dimension(2,2,2)::b3
        b3 = 
     1   reshape((/'89a','9ab','abc','bcd',
     1             'cde','def','efg','fgh'/),(/2,2,2/))
       end function
       function b2(i)
        character(len=i),dimension(2,2)::b2
        b2 = reshape((/'456','567','678','789'/),(/2,2/))
       end function
       function b1(i)
        character(len=i),dimension(2)::b1
        b1 = (/'123','234'/)
       end function
       function b0(i)
        character(len=i)::b0
        b0 = '345'
       end function
      end module
      subroutine s1
      use mm
      if (len(adjustl(b0(1)))/=1)print *,'fail'
      if (    adjustl(b0(1)) /=p01)print *,'fail'
      call check_x1(adjustl(b0(1)))
      call check_y1(adjustl(b0(1))//'#')
      call check_y1(adjustl(b0(1)//'#'))
      if (len(adjustl(b1(1)))/=1)print *,'fail'
      if (any(adjustl(b1(1)) /=p11))print *,'fail'
      call check_x1(adjustl(b1(1)))
      call check_y1(adjustl(b1(1))//'#')
      call check_y1(adjustl(b1(1)//'#'))
      if (len(adjustl(b2(1)))/=1)print *,'fail'
      if (any(adjustl(b2(1)) /=p21))print *,'fail'
      call check_x1(adjustl(b2(1)))
      call check_y1(adjustl(b2(1))//'#')
      call check_y1(adjustl(b2(1)//'#'))
      if (len(adjustl(b3(1)))/=1)print *,'fail'
      if (any(adjustl(b3(1)) /=p31))print *,'fail'
      call check_x1(adjustl(b3(1)))
      call check_y1(adjustl(b3(1))//'#')
      call check_y1(adjustl(b3(1)//'#'))
      if (len(adjustl(b0(2)))/=2)print *,'fail'
      if (    adjustl(b0(2)) /=p02)print *,'fail'
      call check_x2(adjustl(b0(2)))
      call check_y2(adjustl(b0(2))//'#')
      call check_y2(adjustl(b0(2)//'#'))
      if (len(adjustl(b1(2)))/=2)print *,'fail'
      if (any(adjustl(b1(2)) /=p12))print *,'fail'
      call check_x2(adjustl(b1(2)))
      call check_y2(adjustl(b1(2))//'#')
      call check_y2(adjustl(b1(2)//'#'))
      if (len(adjustl(b2(2)))/=2)print *,'fail'
      if (any(adjustl(b2(2)) /=p22))print *,'fail'
      call check_x2(adjustl(b2(2)))
      call check_y2(adjustl(b2(2))//'#')
      call check_y2(adjustl(b2(2)//'#'))
      if (len(adjustl(b3(2)))/=2)print *,'fail'
      if (any(adjustl(b3(2)) /=p32))print *,'fail'
      call check_x2(adjustl(b3(2)))
      call check_y2(adjustl(b3(2))//'#')
      call check_y2(adjustl(b3(2)//'#'))
      end
