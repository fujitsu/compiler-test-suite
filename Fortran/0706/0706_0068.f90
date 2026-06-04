c
c
      call s1
      print *,'pass'
      end
      module m_1
      contains
      function   smf1(i)  result(r1)
      entry      smf2(i)  result(r2)
      character (len=i),pointer:: r1; character (len=i),pointer:: r2
      allocate (r1)
      if (len(r1)/=i)print *,'fail'; r1='12345'
      end function
      function   amf1(i)  result(r1)
      entry      amf2(i)  result(r2)
      character (len=i),dimension(:,:),pointer :: r1
      character (len=i),dimension(:,:),pointer :: r2
      allocate (r1(i:i+1,i:i+1))
      if (len(r1)/=i)print *,'fail'
      r1(i,i)='12345'; r1(i+1,i)='67890'
      r1(i,i+1)='abcde'; r1(i+1,i+1)='fghij'
      if (lbound(r1,dim=1)/=i   .or. lbound(r2,dim=1)/=i  )
     1 print *,'fail'
      if (ubound(r1,dim=2)/=i+1 .or. ubound(r2,dim=2)/=i+1)
     1 print *,'fail'
      end function
      end module
      subroutine s1
      use m_1
      interface
      function   sef1(i)  result(r1)
      character (len=i),pointer:: r1
      end function
      function   sef2(i)  result(r2)
      character (len=i),pointer:: r2
      end function
      function   aef1(i)  result(r1)
      character (len=i),dimension(:,:),pointer :: r1
      end function
      function   aef2(i)  result(r2)
      character (len=i),dimension(:,:),pointer :: r2
      end function
      end interface
      do i=1,5
c     call sc_c(smf1(i)//smf2(i),i,2)
c     call sc_c(smf2(i)//smf1(i),i,2)
c     call sc_c(sif1(i)//sif2(i),i,2)
c     call sc_c(sif2(i)//sif1(i),i,2)
c     call sc_c(sef1(i)//sef2(i),i,2)
c     call sc_c(sef2(i)//sef1(i),i,2)
      call sc_c(smf1(i)//smf2(i)//smf2(i)//smf1(i)//sif1(i)//sif2(i)//
     1          sif2(i)//sif1(i)//sef1(i)//sef2(i)//sef2(i)//sef1(i),
     1 i,12)
      call ac_c(amf1(i)//amf2(i),i,2)
      call ac_c(amf2(i)//amf1(i),i,2)
      call ac_c(aif1(i)//aif2(i),i,2)
      call ac_c(aif2(i)//aif1(i),i,2)
      call ac_c(aef1(i)//aef2(i),i,2)
      call ac_c(aef2(i)//aef1(i),i,2)
      call sac_c(smf2(i)//amf1(i)//amf2(i),i,2)
      call sac_c(smf2(i)//amf2(i)//amf1(i),i,2)
      call sac_c(smf2(i)//aif1(i)//aif2(i),i,2)
      call sac_c(smf2(i)//aif2(i)//aif1(i),i,2)
      call sac_c(smf2(i)//aef1(i)//aef2(i),i,2)
      call sac_c(smf2(i)//aef2(i)//aef1(i),i,2)
      call sac_c(sef2(i)//amf1(i)//amf2(i),i,2)
      call sac_c(sef2(i)//amf2(i)//amf1(i),i,2)
      call sac_c(sef2(i)//aif1(i)//aif2(i),i,2)
      call sac_c(sef2(i)//aif2(i)//aif1(i),i,2)
      call sac_c(sef2(i)//aef1(i)//aef2(i),i,2)
      call sac_c(sef2(i)//aef2(i)//aef1(i),i,2)
      call sac_c(sif2(i)//amf1(i)//amf2(i),i,2)
      call sac_c(sif2(i)//amf2(i)//amf1(i),i,2)
      call sac_c(sif2(i)//aif1(i)//aif2(i),i,2)
      call sac_c(sif2(i)//aif2(i)//aif1(i),i,2)
      call sac_c(sif2(i)//aef1(i)//aef2(i),i,2)
      call sac_c(sif2(i)//aef2(i)//aef1(i),i,2)
      call acs_c(amf1(i)//amf2(i)//smf2(i),i,2)
      call acs_c(amf2(i)//amf1(i)//sif2(i),i,2)
      call acs_c(aif1(i)//aif2(i)//sef2(i),i,2)
      call acs_c(aif2(i)//aif1(i)//smf1(i),i,2)
      call acs_c(aef1(i)//aef2(i)//sif1(i),i,2)
      call acs_c(aef2(i)//aef1(i)//sef1(i),i,2)
      call sacs_c(sef1(i)//amf1(i)//amf2(i)//smf2(i),i,2)
      call sacs_c(sif1(i)//amf2(i)//amf1(i)//sif2(i),i,2)
      call sacs_c(smf1(i)//aif1(i)//aif2(i)//sef2(i),i,2)
      call sacs_c(sef2(i)//aif2(i)//aif1(i)//smf1(i),i,2)
      call sacs_c(sif2(i)//aef1(i)//aef2(i)//sif1(i),i,2)
      call sacs_c(smf2(i)//aef2(i)//aef1(i)//sef1(i),i,2)
      end do
      contains
      function   sif1(i)  result(r1)
      character (len=i),pointer:: r1
      allocate(r1)
      if (len(r1)/=i)print *,'fail'; r1='12345'
      end function
      function   sif2(i)  result(r2)
      character (len=i),pointer:: r2
      allocate(r2)
      if (len(r2)/=i)print *,'fail'; r2='12345'
      end function
      function   aif1(i)  result(r1)
      character (len=i),dimension(:,:),pointer :: r1
      allocate (r1(i:i+1,i:i+1))
      if (len(r1)/=i)print *,'fail'
      r1(i,i)='12345'; r1(i+1,i)='67890'
      r1(i,i+1)='abcde'; r1(i+1,i+1)='fghij'
      if (lbound(r1,dim=1)/=i  )print *,'fail'
      if (ubound(r1,dim=2)/=i+1)print *,'fail'
      end function
      function   aif2(i)  result(r2)
      character (len=i),dimension(:,:),pointer :: r2
      allocate (r2(i:i+1,i:i+1))
      if (len(r2)/=i)print *,'fail'
      r2(i,i)='12345'; r2(i+1,i)='67890'
      r2(i,i+1)='abcde'; r2(i+1,i+1)='fghij'
      if (lbound(r2,dim=1)/=i  )print *,'fail'
      if (ubound(r2,dim=2)/=i+1)print *,'fail'
      end function
      end
      function   sef1(i)  result(r1)
      entry      sef2(i)  result(r2)
      character (len=i),pointer:: r1
      character (len=i),pointer:: r2
      allocate (r1)
      if (len(r1)/=i)print *,'fail'; r1='12345'
      end function
      function   aef1(i)  result(r1)
      entry      aef2(i)  result(r2)
      character (len=i),dimension(:,:),pointer :: r2
      character (len=i),dimension(:,:),pointer :: r1
      allocate (r1(i:i+1,i:i+1))
      if (len(r1)/=i)print *,'fail'
      r1(i,i)='12345'; r1(i+1,i)='67890'
      r1(i,i+1)='abcde'; r1(i+1,i+1)='fghij'
      if (lbound(r1,dim=1)/=i   .or. lbound(r2,dim=1)/=i  )
     1 print *,'fail'
      if (ubound(r1,dim=2)/=i+1 .or. ubound(r2,dim=2)/=i+1)
     1 print *,'fail'
      end function
      subroutine sc_c(c,i,j)
      character*(*) c
      if (len(c)/=i*j)print *,'fail'
      if (c/=repeat('12345'(:i),j))print *,'fail'
      end
      subroutine ac_c(c,i,j)
      character*(*) c(*)
      if (len(c)/=i*j)print *,'fail'
      if (c(1)/=repeat('12345'(:i),j))print *,'fail'
      if (c(2)/=repeat('67890'(:i),j))print *,'fail'
      if (c(3)/=repeat('abcde'(:i),j))print *,'fail'
      if (c(4)/=repeat('fghij'(:i),j))print *,'fail'
      end
      subroutine sac_c(c,i,j)
      character*(*) c(*); character*(*),parameter::p='12345'
      if (len(c)/=i*j+i)print *,'fail'
      if (c(1)/='12345'(:i)//repeat('12345'(:i),j))print *,'fail'
      if (c(2)/='12345'(:i)//repeat('67890'(:i),j))print *,'fail'
      if (c(3)/=p(:i)//repeat('abcde'(:i),j))print *,'fail'
      if (c(4)/=p(:i)//repeat('fghij'(:i),j))print *,'fail'
      end
      subroutine acs_c(c,i,j)
      character*(*) c(*); character*(*),parameter::p='12345'
      if (len(c)/=i*j+i)print *,'fail'
      if (c(1)/=repeat('12345'(:i),j)//'12345'(:i))print *,'fail'
      if (c(2)/=repeat('67890'(:i),j)//'12345'(:i))print *,'fail'
      if (c(3)/=repeat('abcde'(:i),j)//p(:i))print *,'fail'
      if (c(4)/=repeat('fghij'(:i),j)//p(:i))print *,'fail'
      end
      subroutine sacs_c(c,i,j)
      character*(*) c(*); character*(*),parameter::p='12345'
      if (len(c)/=i*j+i+i)print *,'fail'
      if (c(1)/=
     1 '12345'(:i)//repeat('12345'(:i),j)//'12345'(:i))print *,'fail'
      if (c(2)/=
     1 '12345'(:i)//repeat('67890'(:i),j)//'12345'(:i))print *,'fail'
      if (c(3)/= p(:i)//repeat('abcde'(:i),j)//p(:i))print *,'fail'
      if (c(4)/= p(:i)//repeat('fghij'(:i),j)//p(:i))print *,'fail'
      end
