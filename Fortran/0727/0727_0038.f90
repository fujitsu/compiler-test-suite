 call s1
 print *,'pass'
 end
 subroutine s1
  type x1
    integer i
  end type
  integer,parameter::p=3
  type(x1)::xx2(p)
  character*3::yy2(p)
  dimension ii(p)
  complex (8)::zz(p)
  integer,dimension(:),allocatable::vs
 allocate(vs(3));vs=(/3,1,2/)
 j=2
 ii=1; call sai((ii),ii,p)
 zz=(2,2); call szi((zz),zz,p)
 xx2=x1(1); call sta((xx2),xx2,p)
 yy2='111'; call sya((yy2),yy2,p)
 ii=1; call sai((ii(::j)),ii(::j),p-1)
 zz=(2,2); call szi((zz(::j)),zz(::j),p-1)
 xx2=x1(1); call sta((xx2(::j)),xx2(::j),p-1)
 yy2='111'; call sya((yy2(::j)),yy2(::j),p-1)
 ii=1; call sai((ii(vs)),ii(vs),p)
 zz=(2,2); call szi((zz(vs)),zz(vs),p)
 xx2=x1(1); call sta((xx2(vs)),xx2(vs),p)
 yy2='111'; call sya((yy2(vs)),yy2(vs),p)
 ii=1; call sai((ii(vs)+ii(vs)-ii(vs)),ii(vs),p)
 zz=(2,2); call szi((zz(vs)+zz(vs)-zz(vs)),zz(vs),p)
 xx2=x1(1); call sta((xx2(vs)),xx2(vs),p)
 yy2='111'; call syya((yy2(vs)//yy2(vs)//yy2(vs)),yy2(vs),p)
 contains
  subroutine sai(i1,i2,k)
  intent(in)::i1
  dimension i1(:),i2(:)
  i2=10
  if (any(i1/=1))write(6,*) "NG"
  if (size(i1)/=k)write(6,*) "NG"
  if (size(i2)/=k)write(6,*) "NG"
  end subroutine
  subroutine szi(i1,i2,k)
  complex(8)::i1(:),i2(:)
  intent(in)::i1
  i2=(-1,-1)
  if (any(abs(i1-(2,2))>0.00001))write(6,*) "NG"
  if (size(i1)/=k)write(6,*) "NG"
  if (size(i2)/=k)write(6,*) "NG"
  end subroutine
  subroutine sta(i1,i2,k)
  type(x1)::i1(:),i2(:)
  intent(in)::i1
  i2=x1(10)
  if (any(i1%i/=1))write(6,*) "NG"
  if (size(i1)/=k)write(6,*) "NG"
  if (size(i2)/=k)write(6,*) "NG"
  end subroutine
  subroutine sya(i1,i2,k)
  character*(*)::i1(:),i2(:)
  intent(in)::i1
  i2='xxx'
  if (any(i1/='111'))write(6,*) "NG"
  if (size(i1)/=k)write(6,*) "NG"
  if (size(i2)/=k)write(6,*) "NG"
  end subroutine
  subroutine syya(i1,i2,k)
  character*(*)::i1(:),i2(:)
  intent(in)::i1
  i2='xxx'
  if (any(i1/=repeat('111',3)))write(6,*) "NG"
  if (size(i1)/=k)write(6,*) "NG"
  if (size(i2)/=k)write(6,*) "NG"
   if (len(i1)/=9)write(6,*) "NG"
  end subroutine
end
