 call s1
 print *,'pass'
 end
 subroutine s1
      character*3 mm(5*3)/'111','222','333','444','555','666','777','888',&
       '999','aaa','bbb','ccc','ddd','eee','fff'/
      character*3 b(5,3)
      character*3 a(5,3),aa(5,3)
      character*3 c(5,3),cc(5,3)
  a=' ';b= ' ';c=' ';aa= ' ';cc=' '
  call ss3(3,5,mm,a,aa,b,c,cc)
 contains
 subroutine ss3(i3,i5,mm,a,aa,b,c,cc)
      character*(*) mm(:)
      character*(*) b(:,:)
      character*(*) a(:,:),aa(:,:)
      character*(*) c(:,:),cc(:,:)
!$omp parallel default(private) shared(mm,a,aa,b,c,cc,i1,i5,i3)
      b=reshape((/(mm(ii),ii=1,15)/),(/5,3/))
      i1=1
      forall (i=i1:i3+i1+i1:i5-i1*4)
      forall (j=i1:i3:i5-i1*4)
        a(i,j)(:i5-i1*3)=b(i,j)
        aa(i,j)(:i5-i1*3)=b(i,j)
        c(i,j)(:i5-i1*3)=b(i,j)
        cc(i,j)(:i5-i1*3)=b(i,j)
      end forall
      end forall
      if (any(a(:,:)(:i5-i1*3)/=b(:,:)(1:2)))print *,'error-1'
      if (any(aa(:,:)(:i5-i1*3)/=b(:,:)(1:2)))print *,'error-2'
      if (any(c(:,:)(:i5-i1*3)/=b(:,:)(1:2)))print *,'error-3'
      if (any(cc(:,:)(:i5-i1*3)/=b(:,:)(1:2)))print *,'error-4'
!$omp end parallel
      end subroutine
      end
