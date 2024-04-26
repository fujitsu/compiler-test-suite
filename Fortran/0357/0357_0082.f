      module mod
      private
      public sub_main
      integer*1,parameter::p2=4
      integer*8,allocatable,target ,dimension( :, :)::array_d2
      integer*8,allocatable        ,dimension( :, :)::array_d2_1
      integer*8            ,pointer,dimension( :, :)::array_p

      contains
!
      subroutine sub_main
      allocate(array_d2  (p2,p2))
      allocate(array_d2_1(p2,p2))
      array_p=>array_d2
      q=loc(array_d2_1(1,1))
      array_d2  =reshape((/(i,i=1,p2*p2)/),(/p2,p2/))
      array_d2_1=reshape(   array_d2      ,(/p2,p2/))
      array_d2  =array_d2*(-1)+8
      array_d2_1=array_d2_1   -8
      do i=1,4
        where(array_d2 <  reshape(array_d2_1,(/p2,p2/)))
          array_d2  =array_d2+array_p
          array_d2  =array_d2+array_p
        else where
          array_d2_1=array_p+reshape(array_d2_1,(/p2,p2/))
          array_d2_1=array_p+reshape(array_d2_1,(/p2,p2/))
        end where
!
	call sub(array_p(p2,i))
!
        where(array_d2 >  reshape(array_d2_1,(/p2,p2/)))
          array_d2  =array_p
        else where
          array_d2_1=array_p + reshape(array_d2_1,(/p2,p2/))
        end where
!
        where(array_d2_1 == f_1(array_p(p2,i)))
          array_d2_1=reshape(array_p,(/p2,p2/))
        else where
          array_d2_1=reshape(array_p,(/p2,p2/))+array_d2_1
        end where
!
      end do
      print *,array_d2
      print *,array_d2_1
      end subroutine
!
      integer*8 function f_1(ap)
      integer*8,ap
      ap=ap+2
      f_1=ap
      end function
      end
!
      subroutine sub(ap)
      integer*8,ap
      ap=ap+2
      end subroutine
!
      use mod
      call sub_main
      end
