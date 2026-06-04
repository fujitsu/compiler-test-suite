      call s1
      print *,'pass'
      end
      module mx
      common /xxz/ ia1,ka2,ma3,na4,la5,ia6
      equivalence( ia1,ka1,ma1,na1,la1)
      equivalence( ia2,ka2,ma2,na2,la2)
      equivalence( ia3,ka3,ma3,na3,la3)
      equivalence( ia4,ka4,ma4,na4,la4)
      equivalence( ia5,ka5,ma5,na5,la5)
      equivalence( ia6,ka6,ma6,na6,la6)
      end
      module  mm
      contains
      subroutine tt1
      use mx
      parameter(ja1=-4,ja2=-3,ja3=-2,ja4=-1)
      integer  a1(ja1:ja2,ja3:ja4)
      integer  a4(ja1:ja2,ja3:ja4)
      integer*8 addr
      addr=loc(a4)
      if (any(ss11(a1,                        addr)/=
     1         reshape((/1,2,3,4/),(/2,2/))))print *,'fail'
      if (ia1/=100)print *,'fail'; if (ma2/=100)print *,'fail'
      if (la3/=100)print *,'fail'; if (na4/=100)print *,'fail'
      if (ka5/=100)print *,'fail'
      contains
      function   ss11(a1,                        addr) result(a3)
      use mx
      integer  a1(ia1:ia2,ia3:ia4)
      integer  a2(ia1:ma2,ka3:ia4)
      integer  a3(la1:na2,ia3:ia4)
      integer  a4(ia1:ia2,ia3:ka4)
      pointer (addr,a4)
      if (any(lbound(a1)/=(/-4,-2/)))print *,'fail'
      if (any(ubound(a1)/=(/-3,-1/)))print *,'fail'
      ia1=100;ia2=100;ia3=100;ia4=100;ia5=100;ia6=100
      a1=reshape((/1,2,3,4/),(/2,2/))
      a2=reshape((/1,2,3,4/),(/2,2/))
      a3=reshape((/1,2,3,4/),(/2,2/))
      a4=reshape((/1,2,3,4/),(/2,2/))
      if (any(lbound(a1)/=(/-4,-2/)))print *,'fail'
      if (any(ubound(a1)/=(/-3,-1/)))print *,'fail'
      if (any(reshape(a1,(/4/))/=(/1,2,3,4/)))print *,'fail'
      if (any(reshape(a2,(/4/))/=(/1,2,3,4/)))print *,'fail'
      if (any(reshape(a3,(/4/))/=(/1,2,3,4/)))print *,'fail'
      if (any(reshape(a4,(/4/))/=(/1,2,3,4/)))print *,'fail'
      end function
      end subroutine
      subroutine tt2
      use mx
      parameter(ja1=-4,ja2=-3,ja3=-2,ja4=-1)
      character  a1(ja1:ja2,ja3:ja4)
      character  a4(ja1:ja2,ja3:ja4)
      integer*8 addr
      addr=loc(a4)
      if (any(ss12(a1                        ,addr)/=
     1         reshape((/'1','2','3','4'/),(/2,2/))))print *,'fail'
      if (ia1/=100)print *,'fail'; if (ia2/=100)print *,'fail'
      if (ia3/=100)print *,'fail'; if (ia4/=100)print *,'fail'
      if (ia5/=100)print *,'fail'
      contains
      function   ss12(a1                        ,addr) result(a3)
      use mx
      character(ia6)  a1(ia1:ia2,ia3:ka4)
      character(ia6)  a2(ma1:ia2,ma3:ia4)
      character(ia6)  a3(ka1:ka2,ia3:ia4)
      character(ia6)  a4(na1:ia2,ia3:na4)
      pointer (addr,a4)
      if (any(lbound(a1)/=(/-4,-2/)))print *,'fail'
      if (any(ubound(a1)/=(/-3,-1/)))print *,'fail'
      if(len(a1)/=1.or.len(a2)/=1.or.len(a3)/=1.or.len(a4)/=1)
     1 print *,'fail'
      do kk=1,1
      ia1=100;na2=100;ia3=100;ma4=100;ia5=100;ia6=100
      end do
      a1=reshape((/'1','2','3','4'/),(/2,2/))
      a2=reshape((/'1','2','3','4'/),(/2,2/))
      a3=reshape((/'1','2','3','4'/),(/2,2/))
      a4=reshape((/'1','2','3','4'/),(/2,2/))
      if (any(lbound(a1)/=(/-4,-2/)))print *,'fail'
      if (any(ubound(a1)/=(/-3,-1/)))print *,'fail'
      if(len(a1)/=1.or.len(a2)/=1.or.len(a3)/=1.or.len(a4)/=1)
     1 print *,'fail'
      if (any(reshape(a1,(/4/))/=(/'1','2','3','4'/)))print *,'fail'
      if (any(reshape(a2,(/4/))/=(/'1','2','3','4'/)))print *,'fail'
      if (any(reshape(a3,(/4/))/=(/'1','2','3','4'/)))print *,'fail'
      if (any(reshape(a4,(/4/))/=(/'1','2','3','4'/)))print *,'fail'
      end function
      end subroutine
      end module
      subroutine s1
      use mm
      use mx
      ma1=-4;ia2=-3;na3=-2;ma4=-1;ia6=1
      call tt1
      ia1=-4;ma2=-3;na3=-2;ia4=-1;ka6=1
      call tt2
      end
