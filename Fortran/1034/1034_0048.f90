      implicit double precision (a-h,o-z)
      double precision,pointer::fve(:)
      double precision::amt(3,3)=reshape((/1,2,3,4,5,6,7,8,9/),(/3,3/)),vxc(3)=(/21,22,23/)

      allocate (fve(3));fve=(/11,12,13/)
      fve(:) = fve(:) &
     &      + matmul(amt(:,1:3),vxc(1:3))
      if(any(abs(fve-(/281.,348.,415./))>1))print *,'error'
      print *,'pass'
      end
