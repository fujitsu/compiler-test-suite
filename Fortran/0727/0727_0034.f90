 call s1
 print *,'pass'
 end
 subroutine s1
  type x1
    integer i
  end type
  type(x1)::xx1,xx2(2)
  character*3::yy1,yy2(2)
 dimension ii(2)
 j=2
 i=1
 call ssi((i),i)
 ii=1
 call sai((ii),ii)
 ii(2)=1
 call ssi((ii(2)),ii(2))
 ii(j)=1
 call ssi((ii(j)),ii(j))
 xx1=x1(1)
 call sts((xx1),xx1)
 xx2=x1(1)
 call sta((xx2),xx2)
 xx2(2)=x1(1)
 call sts((xx2(2)),xx2(2))
 xx2(j)=x1(1)
 call sts((xx2(j)),xx2(j))
 yy1='111'
 call sys((yy1),yy1)
 yy2='111'
 call sya((yy2),yy2)
 yy2(2)='111'
 call sys((yy2(2)),yy2(2))
 yy2(j)='111'
 call sys((yy2(j)),yy2(j))
 contains
  subroutine ssi(i1,i2)
  intent(in)::i1
  i2=10
  if (i1/=1)write(6,*) "NG"
  end subroutine
  subroutine sai(i1,i2)
  intent(in)::i1
  dimension i1(2),i2(2)
  i2=10
  if (any(i1/=1))write(6,*) "NG"
  end subroutine
  subroutine sts(i1,i2)
  type(x1)::i1,i2
  intent(in)::i1
  i2=x1(10)
  if (i1%i/=1)write(6,*) "NG"
  end subroutine
  subroutine sta(i1,i2)
  type(x1)::i1(2),i2(2)
  intent(in)::i1
  i2=x1(10)
  if (any(i1%i/=1))write(6,*) "NG"
  end subroutine
  subroutine sys(i1,i2)
  character*(*)::i1,i2
  intent(in)::i1
  i2='xxx'
  if (i1/='111')write(6,*) "NG"
  end subroutine
  subroutine sya(i1,i2)
  character*(*)::i1(2),i2(2)
  intent(in)::i1
  i2='xxx'
  if (any(i1/='111'))write(6,*) "NG"
  end subroutine
end
