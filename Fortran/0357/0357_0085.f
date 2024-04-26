      integer*1,parameter::p2=4,p3=8,p4=2
      integer*8,allocatable,target,dimension(:,:)::array_d2
      integer*8,allocatable,target,dimension(:,:)::array_d2_1
      integer*8,pointer,dimension(:,:)::array_p,array_p_1
      integer*8,dimension(p2,p2)::ans
      ans=sub_main()
      print *,ans
      contains
c
      function sub_main() result(ans)
      integer*8,dimension(p2,p2)::ans
      allocate(array_d2(4,4))
      allocate(array_d2_1(8,2))
      array_p  =>array_d2
      array_p_1=>array_d2_1
      array_d2  =reshape( (/(i,i=1,p2*p2)/), (/p2,p2/) )
      array_d2_1=reshape( array_d2, (/p3,p4/) )
      array_d2  =array_d2*(-1)+8
      array_d2_1=array_d2_1-8
      do j=1,2
       do i=1,2
        where ( array_p < reshape( array_p_1,(/p2,p2/) ) )
          array_p =array_p/array_p-array_p
          array_p =array_p/array_p+array_p
        else where
          array_p=array_p * reshape( array_p_1,(/p2,p2/) )
          array_p=array_p * reshape( array_p_1,(/p2,p2/) )
        end where
       enddo
c
	call sub(array_p(p2,1))
c
       do i=1,4
        where ( array_d2 > reshape( array_p_1,(/p2,p2/) ) )
          array_p=array_p
        else where
          array_p=array_p * reshape( array_p_1,(/p2,p2/) )
        end where
       end do
      end do
      ans=array_p+reshape( array_p_1, (/p2,p2/) )
      print *,ans
      end function
      end
c
      subroutine sub(ap)
      integer*8,ap
      ap=ap+2
      end subroutine
