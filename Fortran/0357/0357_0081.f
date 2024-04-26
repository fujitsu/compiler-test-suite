      integer*1,parameter                   ::p2=4
      integer*8,target ,dimension(p2  ,p2  )::array_d2
      integer*8,        dimension(p2  ,p2  )::array_d3
      integer*8,pointer,dimension( :  , :  )::array_p
      integer*8        ,dimension(p2*2,p2/2)::array_d2_1
      equivalence(array_d3(1,1),array_d2_1(1,1))
        call sub_main
      contains
!
      subroutine sub_main
      array_p=>array_d2
      array_d2  =reshape((/(i,i=1,p2*p2)/),(/p2  ,p2  /))
      array_d2_1=reshape(   array_d2      ,(/p2*2,p2/2/))
      array_d2  =array_d2*(-1)+8
      array_d2_1=array_d2_1   -8
      do i=1,4
        where(array_d2 <  reshape(array_d2_1,(/p2,p2/)))
          array_d2=array_d2+array_p
          array_d2=array_d2+array_p
        else where
          array_d3=array_p+reshape(array_d2_1,(/p2,p2/))
          array_d3=array_p+reshape(array_d2_1,(/p2,p2/))
        end where
!
	call sub(array_p(p2,i))
!
        where(array_d2 >  reshape(array_d2_1,(/p2,p2/)))
          array_d2=array_p
        else where
          array_d3=array_p+reshape(array_d2_1,(/p2,p2/))
        end where
!
        where(array_d2_1 == f_1(array_p(p2,i)))
          array_d2_1=reshape(array_p,(/p2*2,p2/2/))
        else where
          array_d2_1=reshape(array_p,(/p2*2,p2/2/))+array_d2_1
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


