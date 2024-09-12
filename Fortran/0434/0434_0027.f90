module mmm
  integer::iii(1,2)
  real::rrr(1,2)
  complex::ccc(1,2)
end module mmm
use mmm
iii=-1
rrr=-1
ccc=-1
call s1([iii,(i,i=1,1)])
call s1([[iii,[(i,i=1,1)]]])
call s2([rrr,(real(i),i=1,1)])
call s2([[rrr,[(real(i),i=1,1)]]])
call s3([ccc,(cmplx(i),i=1,1)])
call s3([[ccc,[(cmplx(i),i=1,1)]]])
call s4([iii,iii,(i,i=1,1)])
call s4([[[[[iii],iii],(i,i=1,1)],iii],iii])
print *,"pass"
contains
  subroutine s1(i)
    integer::i(:)
    if(i(3)/=1) print *,'err'
  end subroutine s1
  subroutine s2(i)
    real::i(:)
    if(i(3)/=1) print *,'err'
  end subroutine
  subroutine s3(i)
    complex::i(:)
    if(i(3)/=1) print *,'err'
  end subroutine
  subroutine s4(i)
    integer::i(:)
    if(i(5)/=1) print *,'err'
  end subroutine
  end 
