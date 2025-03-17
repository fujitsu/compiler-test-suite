      subroutine s1
      implicit double precision (a-h,o-z)
      double precision,pointer::fve(:)
      double precision::amt(3,3)=reshape((/1,2,3,4,5,6,7,8,9/),(/3,3/)),vxc(3)=(/21,22,23/)

      allocate (fve(3));fve=(/11,12,13/)
      fve(:) = fve(:) &
     &      + matmul(amt(:,1:3),vxc(1:3))
      if(any(abs(fve-(/281.,348.,415./))>1))print *,'error'
      end
      subroutine s2
      implicit double precision (a-h,o-z)
      double precision::fve(3)
      double precision::amt(3,3)=reshape((/1,2,3,4,5,6,7,8,9/),(/3,3/)),vxc(3)=(/21,22,23/)

      fve=(/11,12,13/)
      fve(:) = fve(:) &
     &      + matmul(amt(:,1:3),vxc(1:3))
      if(any(abs(fve-(/281.,348.,415./))>1))print *,'error'
      end
      subroutine s4(k)
      implicit double precision (a-h,o-z)
      double precision::fve(k)
      double precision::amt(3,3)=reshape((/1,2,3,4,5,6,7,8,9/),(/3,3/)),vxc(3)=(/21,22,23/)

      fve=(/11,12,13/)
      fve(:) = fve(:) &
     &      + matmul(amt(:,1:3),vxc(1:3))
      if(any(abs(fve-(/281.,348.,415./))>1))print *,'error'
      end
      subroutine s3
      implicit double precision (a-h,o-z)
      double precision,allocatable::fve(:)
      double precision::amt(3,3)=reshape((/1,2,3,4,5,6,7,8,9/),(/3,3/)),vxc(3)=(/21,22,23/)

      allocate (fve(3));fve=(/11,12,13/)
      fve(:) = fve(:) &
     &      + matmul(amt(:,1:3),vxc(1:3))
      if(any(abs(fve-(/281.,348.,415./))>1))print *,'error'
      end
      call s1
      call s2
      call s3
      call s4(3)
      print *,'pass'
      end
