      Subroutine vttq 
      implicit double precision (a-h,o-z)
      double precision,allocatable::amt(:,:),fve(:),vxc(:)

      common /tmp/ nd_amt,ndva,ndnb

      allocate (amt(nd_amt,ndva),fve(nd_amt),vxc(ndva))
      amt=reshape((/1,2,3,4,5,6,7,8,9/),(/3,3/))
      fve=(/11,12,13/)
      vxc=(/21,22,23/)
      fve(:) = fve(:)  + matmul(amt(:,:),vxc(:))
      if(any(abs(fve-(/281.,348.,415./))>1))print *,'error'

      return
      end
      common /tmp/ nd_amt,ndva,ndnb
      nd_amt=3
      ndva=3
      ndnb=3
      call vttq
      print *,'pass'
      end
