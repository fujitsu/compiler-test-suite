      call sub3
      print *,'pass'
      end

      module m1
        integer,save ::im1,im3
!$omp threadprivate (im1,im3)
      end
     
      subroutine sub3()
       use m1
        isf()=im1+im2+im3
        im1=10
        im2=10
        im3=10
!$omp single
        im1 = im1 + 1
        im3 = im3 + 1
        call chk(isf(),21)
!$omp end single
        call chk(isf(),22)
      end

      subroutine chk(k1,k2)
      select case(k2)
       case(1)
         if (k1==12.or.k1==14.or.k1==16.or.k1==18.or.k1==20) then
         else
            print *,101,k1
         endif
       case(2)
         if (k1==50) then
         else
            print *,102,k1
         endif
       case(11)
         if (k1==12.or.k1==14.or.k1==16.or.k1==18.or.k1==20) then
         else
            print *,201,k1
         endif
       case(12)
         if (k1==30) then
         else
            print *,202,k1
         endif
       case(21)
         if (k1==32) then
         else
            print *,301,k1
         endif
       case(22)
         if (k1==32) then
         else
            print *,202,k1
         endif
       case default
          print *,999,k1,k2
      end select
100   end

  

