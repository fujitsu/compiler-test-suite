 call s1
 print *,'pass'
 end
 subroutine s1
      character*3 mm(5*3)/'111','222','333','444','555','666','777','888',&
       '999','aaa','bbb','ccc','ddd','eee','fff'/
      character*3 b(5,3)
      character*4 a(5,3),aa(5,3)
      character*4 c(5,3),cc(5,3)
      integer::k4=4,k1=1
  call ss1(mm)
  call ss2(mm,a,aa,b,c,cc)
  a=' ';b= ' ';c=' ';aa= ' ';cc=' '
  call ss3(3,5,mm,a,aa,b,c,cc)
 contains
 subroutine ss1(mm)
      character*3 mm(15)
      character*3 b(5,3)
      character*4 a(5,3),aa(5,3)
      character*4 c(5,3),cc(5,3)
      b=reshape((/(mm(ii),ii=1,15)/),(/5,3/))
      i1=1;i5=5
      forall (i=1:5)
        forall (j=i1:k4-1:i5-k4)
        a(i,j)(:k4*k1)=b(i,j)
        end forall
        forall (j=i1:k4-1:i5-k4)
        aa(i,j)(:k4*k1)=b(i,j)
        end forall
        forall (j=i1:k4-1:i5-k4)
        c(i,j)(:k4*k1)=b(i,j)
        end forall
        forall (j=i1:k4-1:i5-k4)
        cc(i,j)(:k4*k1)=b(i,j)
        end forall
      end forall
      if (any(a(:,:)(:k4*k1)/=b(:,:)))write(6,*) "NG"
      if (any(aa(:,:)(:k4*k1)/=b(:,:)))write(6,*) "NG"
      if (any(c(:,:)(:k4*k1)/=b(:,:)))write(6,*) "NG"
      if (any(cc(:,:)(:k4*k1)/=b(:,:)))write(6,*) "NG"
      end subroutine
 subroutine ss2(mm,a,aa,b,c,cc)
      character*(*) mm(15)
      character*(*) b(5,3)
      character*(*) a(5,3),aa(5,3)
      character*(*) c(5,3),cc(5,3)
      b=reshape((/(mm(ii),ii=1,15)/),(/5,3/))
      i1=1;i5=5
      forall (i=i1:i1+i1+i1+i1+i1:i5-i1*4)
        forall (j=i1:k4-1:i5-k4)
        a(i,j)(:k4*k1)=b(i,j)
        end forall
        forall (j=i1:k4-1:i5-k4)
        aa(i,j)(:k4*k1)=b(i,j)
        end forall
        forall (j=i1:k4-1:i5-k4)
        c(i,j)(:k4*k1)=b(i,j)
        end forall
        forall (j=i1:k4-1:i5-k4)
        cc(i,j)(:k4*k1)=b(i,j)
        end forall
      end forall
      if (any(a(:,:)(:k4*k1)/=b(:,:)))write(6,*) "NG"
      if (any(aa(:,:)(:k4*k1)/=b(:,:)))write(6,*) "NG"
      if (any(c(:,:)(:k4*k1)/=b(:,:)))write(6,*) "NG"
      if (any(cc(:,:)(:k4*k1)/=b(:,:)))write(6,*) "NG"
      end subroutine
 subroutine ss3(i3,i5,mm,a,aa,b,c,cc)
      character*(*) mm(:)
      character*(*) b(:,:)
      character*(*) a(:,:),aa(:,:)
      character*(*) c(:,:),cc(:,:)
      b=reshape((/(mm(ii),ii=1,15)/),(/5,3/))
      i1=1
      forall (i=i1:i3+i1+i1:i5-i1*4)
        forall (j=i1:k4-1:i5-k4)
        a(i,j)(:k4*k1)=b(i,j)
        end forall
        forall (j=i1:k4-1:i5-k4)
        aa(i,j)(:k4*k1)=b(i,j)
        end forall
        forall (j=i1:k4-1:i5-k4)
        c(i,j)(:k4*k1)=b(i,j)
        end forall
        forall (j=i1:k4-1:i5-k4)
        cc(i,j)(:k4*k1)=b(i,j)
        end forall
      end forall
      if (any(a(:,:)(:k4*k1)/=b(:,:)))write(6,*) "NG"
      if (any(aa(:,:)(:k4*k1)/=b(:,:)))write(6,*) "NG"
      if (any(c(:,:)(:k4*k1)/=b(:,:)))write(6,*) "NG"
      if (any(cc(:,:)(:k4*k1)/=b(:,:)))write(6,*) "NG"
      end subroutine
      end