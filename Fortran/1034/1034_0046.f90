      implicit double precision (a-h,o-z)
      double precision::amt(3,3),fve(3),vxc(3)

      ndva=3
      ndnb=3

amt=reshape((/1,2,3,4,5,6,7,8,9/),(/3,3/))
      fve=(/11,12,13/)
      vxc=(/21,22,23/)
      mek=0
      fve(:) = fve(:) &
     &      + matmul(amt(:,mek+1:ndva),vxc(1:ndnb))

      print *,'pass'
      end
