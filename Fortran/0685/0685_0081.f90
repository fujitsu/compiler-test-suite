      common /abc/ ia,ib,ic
      common /xyz/ ii(5)
      ia=1;ib=2;ic=3
      ii=(/1,2,3,4,5/)
!$omp parallel private(/abc/,/xyz/)
      ia=11;ib=12;ic=13
      ii=(/11,12,13,14,15/)
      ii=ii+10
      if (ia/=11.or.ib/=12.or.ic/=13) print *,"fail"
      if (any(ii/=(/21,22,23,24,25/))) print *,"fail"
!$omp endparallel
!$    if (.true.) then
!$      if (ia/=1.or.ib/=2.or.ic/=3) print *,"fail"
!$      if (any(ii/=(/1,2,3,4,5/))) print *,"fail"
!$    else
      if (ia/=11.or.ib/=12.or.ic/=13) print *,"fail"
      if (any(ii/=(/21,22,23,24,25/))) print *,"fail"
!$    endif
      print *,'pass'
      end
