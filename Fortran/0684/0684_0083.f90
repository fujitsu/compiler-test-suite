CALL OMP_SET_NUM_THREADS(1)
 call s1
 print *,'pass'
 end
 subroutine s1
  call ss1
  call ss2
  call ss3(3,5)
 end
 subroutine ss1
      integer b(5,3)
      real    a(5,3),aa(5,3)
      complex c(5,3),cc(5,3)
!$omp parallel default(private)
      b=reshape((/(ii,ii=1,15)/),(/5,3/))
      i1=1;i5=5
      forall (i=1:5)
        a(i,:)=b(i,:)
        aa(i,:)=b(i,:)
        c(i,:)=b(i,:)
        cc(i,:)=b(i,:)
      end forall
      if (any(a/=b))print *,"fail"
      if (any(aa/=b))print *,"fail"
      if (any(c/=b))print *,"fail"
      if (any(cc/=b))print *,"fail"
!$omp end parallel
      end
 subroutine ss2
      integer b(5,3)
      real    a(5,3),aa(5,3)
      complex c(5,3),cc(5,3)
!$omp parallel default(private)
      b=reshape((/(ii,ii=1,15)/),(/5,3/))
      i1=1;i5=5
      forall (i=i1:b(1,1)+b(i1+i1,i1)+b(i1,i1)+b(i1,i1):b(i5,i1)-b(i1,i1)-b(i1,i1)-b(i1*2,i1))
        a(i,:)=b(i,:)
        aa(i,:)=b(i,:)
        c(i,:)=b(i,:)
        cc(i,:)=b(i,:)
      end forall
      if (any(a/=b))print *,"fail"
      if (any(aa/=b))print *,"fail"
      if (any(c/=b))print *,"fail"
      if (any(cc/=b))print *,"fail"
!$omp end parallel
      end
 subroutine ss3(i3,i5)
      integer b(i5,i3)
      real    a(i5,i3),aa(i5,i3)
      complex c(i5,i3),cc(i5,i3)
!$omp parallel default(private) shared(i3,i5)
      b=reshape((/(ii,ii=1,15)/),(/5,3/))
      i1=1
      forall (i=i1:b(1,1)+b(i1+i1,i1)+b(i1,i1)+b(i1,i1):b(i5,i1)-b(i1,i1)-b(i1,i1)-b(i1*2,i1))
        a(i,:)=b(i,:)
        aa(i,:)=b(i,:)
        c(i,:)=b(i,:)
        cc(i,:)=b(i,:)
      end forall
      if (any(a/=b))print *,"fail"
      if (any(aa/=b))print *,"fail"
      if (any(c/=b))print *,"fail"
      if (any(cc/=b))print *,"fail"
!$omp end parallel
      end
