 call s1
 print *,'pass'
 end
 subroutine s1
      character*3 mm(5*3)/'111','222','333','444','555','666','777','888',&
       '999','aaa','bbb','ccc','ddd','eee','fff'/
      character*3 b(5,3)
      character*3 a(5,3),aa(5,3)
      character*3 c(5,3),cc(5,3)
      integer::k1=1
  call ss1(mm)
  call ss2(mm,a,aa,b,c,cc)
  a=' ';b= ' ';c=' ';aa= ' ';cc=' '
  call ss3(3,5,mm,a,aa,b,c,cc)
 contains
 subroutine ss1(mm)
      character*3 mm(15)
      character*3 b(5,3)
      character*3 a(5,3),aa(5,3)
      character*3 c(5,3),cc(5,3)
      b=reshape((/(mm(ii),ii=1,15)/),(/5,3/))
      i1=1;i5=5
      forall (j=1:3)
      forall (i=1:5)
        a(i,j)(k1:2)=b(i,j)
        aa(i,j)(k1:2)=b(i,j)
        c(i,j)(k1:2)=b(i,j)
        cc(i,j)(k1:2)=b(i,j)
      end forall
      end forall
      if (any(a(:,:)(k1:2)/=b(:,:)(1:2)))write(6,*) "NG"
      if (any(aa(:,:)(k1:2)/=b(:,:)(1:2)))write(6,*) "NG"
      if (any(c(:,:)(k1:2)/=b(:,:)(1:2)))write(6,*) "NG"
      if (any(cc(:,:)(k1:2)/=b(:,:)(1:2)))write(6,*) "NG"
      end subroutine
 subroutine ss2(mm,a,aa,b,c,cc)
      character*(*) mm(15)
      character*(*) b(5,3)
      character*(*) a(5,3),aa(5,3)
      character*(*) c(5,3),cc(5,3)
      b=reshape((/(mm(ii),ii=1,15)/),(/5,3/))
      i1=1;i5=5
      forall (i=i1:i1+i1+i1+i1+i1:i5-i1*4,j=i1:i1+i1+i1:i5-i1*4)
        a(i,j)(k1:2)=b(i,j)
        aa(i,j)(k1:2)=b(i,j)
        c(i,j)(k1:2)=b(i,j)
        cc(i,j)(k1:2)=b(i,j)
      end forall
      if (any(a(:,:)(k1:2)/=b(:,:)(1:2)))write(6,*) "NG"
      if (any(aa(:,:)(k1:2)/=b(:,:)(1:2)))write(6,*) "NG"
      if (any(c(:,:)(k1:2)/=b(:,:)(1:2)))write(6,*) "NG"
      if (any(cc(:,:)(k1:2)/=b(:,:)(1:2)))write(6,*) "NG"
      end subroutine
 subroutine ss3(i3,i5,mm,a,aa,b,c,cc)
      character*(*) mm(:)
      character*(*) b(:,:)
      character*(*) a(:,:),aa(:,:)
      character*(*) c(:,:),cc(:,:)
      b=reshape((/(mm(ii),ii=1,15)/),(/5,3/))
      i1=1
      forall (j=i1:i3:i5-i1*4, i=i1:i3+i1+i1:i5-i1*4)
        a(i,j)(k1:2)=b(i,j)
        aa(i,j)(k1:2)=b(i,j)
        c(i,j)(k1:2)=b(i,j)
        cc(i,j)(k1:2)=b(i,j)
      end forall
      if (any(a(:,:)(k1:2)/=b(:,:)(1:2)))write(6,*) "NG"
      if (any(aa(:,:)(k1:2)/=b(:,:)(1:2)))write(6,*) "NG"
      if (any(c(:,:)(k1:2)/=b(:,:)(1:2)))write(6,*) "NG"
      if (any(cc(:,:)(k1:2)/=b(:,:)(1:2)))write(6,*) "NG"
      end subroutine
      end
