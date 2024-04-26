      integer*1,parameter                         ::p2=4
      integer*8,allocatable,target ,dimension(:,:)::array_d2
      integer*8,allocatable,target ,dimension(:,:)::array_d2_1
      integer*8            ,pointer,dimension(:,:)::array_p,array_p_1
      integer*8            ,pointer,dimension(:,:)::ap
      call sub_main
      contains
!
      subroutine sub_main
      allocate(array_d2  (p2,p2))
      allocate(array_d2_1(p2,p2))
      ap=>array_d2
      array_p=>ap
      array_p_1=>array_d2_1
      array_d2  =reshape((/(i,i=1,p2*p2)/),(/p2,p2/))
      array_d2_1=reshape(   array_d2      ,(/p2,p2/))
      array_d2  =array_d2*(-1)+8
      array_d2_1=array_d2_1   -8
      do i=1,4
        where(array_p <  reshape(array_p_1,(/p2,p2/)))
          array_p=array_p/array_p-array_p
          array_p=array_p*array_p+array_p
        else where
          array_p_1=array_p*reshape(array_p_1,(/p2,p2/))
          array_p_1=array_p*reshape(array_p_1,(/p2,p2/))
        end where
!
	call sub(array_p(p2,i))
!
        where(array_d2 >  reshape(array_p_1,(/p2,p2/)))
          array_p=array_p
        else where
          array_p_1=array_p*reshape(array_p_1,(/p2,p2/))
        end where
      end do
      print *,array_d2
      print *,array_d2_1
      end subroutine
      end
c
      subroutine sub(ap)
      integer*8,ap
      ap=ap+2
      end subroutine
