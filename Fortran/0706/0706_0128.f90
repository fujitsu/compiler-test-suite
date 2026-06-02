c
c
      call s1
      print *,'pass'
      end
      module mm
       interface chk
         module procedure ch,cm,in
       end interface
      contains
      integer function af(i)
      dimension af(i,i)
      af=reshape((/(i,i=1,i*i)/),(/i,i/))
      end function
      character(len=i) function bf(i)
      dimension bf(i,i)
      bf=reshape((/(achar(iachar('0')+i),i=1,i*i)/),(/i,i/))
      end function
      complex function cf(i)
      dimension cf(i,i)
      cf=reshape(cmplx((/(i,i=1,i*i)/),(/(i,i=1,i*i)/),kind=4),(/i,i/))
      end function
      subroutine ch(a,i,j,k)
      character*(*) a(:)
      if (len(a)/=i)print *,'fail'
      if (size(a)/=i*i*j*k)print *,'fail'
      if (i==2)then
         if (any(a/=(/(((/'1','2','3','4'/),j=1,j),k=1,k)/)))
     1     print *,'fail'
       if (any(a/=(/((/(
     1      (/'1','2','3','4'/),j=1,j)/),k=1,k)/)))print *,'fail'
      else
       if (i/=3)print *,'fail'
       if (any(a/=(/(((/'1','2','3','4','5','6','7','8','9'/),
     1                            j=1,j),k=1,k)/)))print *,'fail'
       if (any(a/=(/((/((/'1','2','3','4','5','6','7','8','9'/),
     1                            j=1,j)/),k=1,k)/)))print *,'fail'
      endif
      end subroutine
      subroutine cm(a,i,j,k)
      complex       a(:)
      if (size(a)/=i*i*j*k)print *,'fail'
      if (any(a/=(/(((/
     1        (cmplx(i,i),i=1,i*i)/),j=1,j),k=1,k)/)))print *,'fail'
      if (any(a/=(/((/((/
     1        (cmplx(i,i),i=1,i*i)/),j=1,j)/),k=1,k)/)))print *,'fail'
      if (size(a)/=i*i*j*k)print *,'fail'
      end subroutine
      subroutine in(a,i,j,k)
      integer       a(:)
      if (size(a)/=i*i*j*k)print *,'fail'
      if (any(a/=(/(((/(int(i),i=1,i*i)/),j=1,j),k=1,k)/)))
     1 print *,'fail'
      if (any(a/=(/((/((/(int(i),i=1,i*i)/),
     1                          j=1,j)/),k=1,k)/)))print *,'fail'
      if (size(a)/=i*i*j*k)print *,'fail'
      end subroutine
      end module
      subroutine s1
      use mm
      integer p1,p2
      p1=2;p2=2
      call chk((/(/(af(p1),i=1,p2)/),(/(af(p1),i=1,p2)/),
     1           (/(af(p1),i=1,p2)/),(/(af(p1),i=1,p2)/) /),p1,p2,4)
      call chk((/(/(bf(p1),i=1,p2)/),(/(bf(p1),i=1,p2)/),
     1           (/(bf(p1),i=1,p2)/),(/(bf(p1),i=1,p2)/) /),p1,p2,4)
      call chk((/(/(cf(p1),i=1,p2)/),(/(cf(p1),i=1,p2)/),
     1           (/(cf(p1),i=1,p2)/),(/(cf(p1),i=1,p2)/) /),p1,p2,4)
      p1=3;p2=2
      call chk((/(/(af(p1),i=1,p2)/),(/(af(p1),i=1,p2)/),
     1           (/(af(p1),i=1,p2)/),(/(af(p1),i=1,p2)/) /),p1,p2,4)
      call chk((/(/(bf(p1),i=1,p2)/),(/(bf(p1),i=1,p2)/),
     1           (/(bf(p1),i=1,p2)/),(/(bf(p1),i=1,p2)/) /),p1,p2,4)
      call chk((/(/(cf(p1),i=1,p2)/),(/(cf(p1),i=1,p2)/),
     1           (/(cf(p1),i=1,p2)/),(/(cf(p1),i=1,p2)/) /),p1,p2,4)
      end
