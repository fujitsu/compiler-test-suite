c
c
      call s1
      print *,'pass'
      end
      module m1
      character(len=*),parameter:: c1='ab',c2='cd',c3='ef'
      interface csf1
        module procedure csf1_scaler
        module procedure csf1_vector
      end interface
      contains
      subroutine c_s(c)
      character*(*)c(:)
      if (len(c)/=6)print *,'fail'
      do i=1,size(c)
      if (c(i)/='abcdef')print *,'fail'
      end do
      end subroutine
      function csf1_scaler(c) result(r)
      character*(*) ::c
      character(len=len(c))::r
      r=c
      end function
      function csf1_vector(c) result(r)
      character*(*) ::c(:)
      character(len=len(c))::r(size(c))
      r=c
      end function
      subroutine ss2(d1,d2,d3,e1,e2,e3)
      character (len=*)::d1,d2,d3
      character ::e1*(len(d1)),e2*(len(d2)),e3*(len(d3))
      character (len=len(c1)) csf2
      i=1
      call c_s(csf1((/c1//c2//c3/)))
      call c_s(csf1((/d1//d2//d3/)))
      call c_s(csf1((/d1(:)//d2(:)//d3(:)/)))
      call c_s(csf1((/csf1(c1)//csf1(c2)//csf1(c3)/)))
      call c_s(csf1((/csf1(d1)//csf1(d2)//csf1(d3)/)))
      call c_s(csf1((/csf1(d1(:))//csf1(d2(:))//csf1(d3(:))/)))
      call c_s(csf1((/csf2(c1)//csf2(c2)//csf2(c3)/)))
      call c_s(csf1((/csf2(d1)//csf2(d2)//csf2(d3)/)))
      call c_s(csf1((/csf2(d1(:))//csf2(d2(:))//csf2(d3(:))/)))
      call c_s(csf1((/trim(c1)//trim(c2)//trim(c3)/)))
      call c_s(csf1((/trim(d1)//trim(d2)//trim(d3)/)))
      call c_s(csf1((/trim(d1(:))//trim(d2(:))//trim(d3(:))/)))
      call c_s(csf1((/repeat(c1,i)//repeat(c2,i)//repeat(c3,i)/)))
      call c_s(csf1((/repeat(d1,i)//repeat(d2,i)//repeat(d3,i)/)))
      call c_s(csf1(
     1  (/repeat(d1(:),i)//repeat(d2(:),i)//repeat(d3(:),i)/)))
      call c_s(csf1((/e1//e2//e3/)))
      call c_s(csf1((/e1(:)//e2(:)//e3(:)/)))
      call c_s(csf1((/csf1(e1)//csf1(e2)//csf1(e3)/)))
      call c_s(csf1((/csf1(e1(:))//csf1(e2(:))//csf1(e3(:))/)))
      call c_s(csf1((/csf2(e1)//csf2(e2)//csf2(e3)/)))
      call c_s(csf1((/csf2(e1(:))//csf2(e2(:))//csf2(e3(:))/)))
      call c_s(csf1((/trim(e1)//trim(e2)//trim(e3)/)))
      call c_s(csf1((/trim(e1(:))//trim(e2(:))//trim(e3(:))/)))
      call c_s(csf1((/repeat(e1,i)//repeat(e2,i)//repeat(e3,i)/)))
      call c_s(csf1(
     1  (/repeat(e1(:),i)//repeat(e2(:),i)//repeat(e3(:),i)/)))
      call c_s(csf1((/c1//c2//c3/)))
      call c_s(csf1((/d1//d2//c3/)))
      call c_s(csf1((/d1(:)//d2(:)//c3(:)/)))
      call c_s(csf1((/csf1(c1)//csf1(c2)//    (c3)/)))
      call c_s(csf1((/csf1(d1)//csf1(d2)//    (c3)/)))
      call c_s(csf1((/csf1(d1(:))//csf1(d2(:))//    (c3(:))/)))
      call c_s(csf1((/csf2(c1)//csf2(c2)//    (c3)/)))
      call c_s(csf1((/csf2(d1)//csf2(d2)//    (c3)/)))
      call c_s(csf1((/csf2(d1(:))//csf2(d2(:))//    (c3(:))/)))
      call c_s(csf1((/trim(c1)//trim(c2)//    (c3)/)))
      call c_s(csf1((/trim(d1)//trim(d2)//    (c3)/)))
      call c_s(csf1((/trim(d1(:))//trim(d2(:))//    (c3(:))/)))
      call c_s(csf1((/repeat(c1,i)//repeat(c2,i)//      (c3  )/)))
      call c_s(csf1((/repeat(d1,i)//repeat(d2,i)//      (c3  )/)))
      call c_s(csf1((/repeat(d1(:),i)//repeat(d2(:),i)//  (c3(:)  )/)))
      call c_s(csf1((/e1//e2//c3/)))
      call c_s(csf1((/e1(:)//e2(:)//c3(:)/)))
      call c_s(csf1((/csf1(e1)//csf1(e2)//    (c3)/)))
      call c_s(csf1((/csf1(e1(:))//csf1(e2(:))//    (c3(:))/)))
      call c_s(csf1((/csf2(e1)//csf2(e2)//    (c3)/)))
      call c_s(csf1((/csf2(e1(:))//csf2(e2(:))//    (c3(:))/)))
      call c_s(csf1((/trim(e1)//trim(e2)//    (c3)/)))
      call c_s(csf1((/trim(e1(:))//trim(e2(:))//    (c3(:))/)))
      call c_s(csf1((/repeat(e1,i)//repeat(e2,i)//      (c3  )/)))
      call c_s(csf1((/repeat(e1(:),i)//repeat(e2(:),i)//  (c3(:)  )/)))
      call c_s(csf1((/c1//c2//c3/)))
      call c_s(csf1((/c1//d2//c3/)))
      call c_s(csf1((/c1(:)//d2(:)//c3(:)/)))
      call c_s(csf1((/    (c1)//csf1(c2)//    (c3)/)))
      call c_s(csf1((/    (c1)//csf1(d2)//    (c3)/)))
      call c_s(csf1((/    (c1(:))//csf1(d2(:))//    (c3(:))/)))
      call c_s(csf1((/    (c1)//csf2(c2)//    (c3)/)))
      call c_s(csf1((/    (c1)//csf2(d2)//    (c3)/)))
      call c_s(csf1((/    (c1(:))//csf2(d2(:))//    (c3(:))/)))
      call c_s(csf1((/    (c1)//trim(c2)//    (c3)/)))
      call c_s(csf1((/    (c1)//trim(d2)//    (c3)/)))
      call c_s(csf1((/    (c1(:))//trim(d2(:))//    (c3(:))/)))
      call c_s(csf1((/      (c1  )//repeat(c2,i)//      (c3  )/)))
      call c_s(csf1((/      (c1  )//repeat(d2,i)//      (c3  )/)))
      call c_s(csf1((/      (c1(:)  )//repeat(d2(:),i)//  (c3(:)  )/)))
      call c_s(csf1((/c1//e2//c3/)))
      call c_s(csf1((/c1(:)//e2(:)//c3(:)/)))
      call c_s(csf1((/    (c1)//csf1(e2)//    (c3)/)))
      call c_s(csf1((/    (c1(:))//csf1(e2(:))//    (c3(:))/)))
      call c_s(csf1((/    (c1)//csf2(e2)//    (c3)/)))
      call c_s(csf1((/    (c1(:))//csf2(e2(:))//    (c3(:))/)))
      call c_s(csf1((/    (c1)//trim(e2)//    (c3)/)))
      call c_s(csf1((/    (c1(:))//trim(e2(:))//    (c3(:))/)))
      call c_s(csf1((/      (c1  )//repeat(e2,i)//      (c3  )/)))
      call c_s(csf1((/      (c1(:)  )//repeat(e2(:),i)//  (c3(:)  )/)))
      end subroutine
      end module
      subroutine s1;use m1
c     call  ss1(c1,c2,c3,c1,c2,c3)
      call  ss2(c1,c2,c3,c1,c2,c3)
      end subroutine
      function csf2(c) result(r)
      character*(*) ::c
      character(len=*)::r
      r=c
      end function
