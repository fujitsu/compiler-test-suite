module m1
 contains
  subroutine s11(d)
    integer(1),value::d
if (d/=1) print *,101
  end  subroutine
  subroutine s12(d)
    integer(1),value::d
if (d/=-1) print *,102
  end  subroutine
  subroutine s21(d)
    integer(2),value::d
if (d/=1) print *,201
  end  subroutine
  subroutine s22(d)
    integer(2),value::d
if (d/=-1) print *,202
  end  subroutine
  subroutine s41(d)
    integer(4),value::d
if (d/=1) print *,401
  end  subroutine
  subroutine s42(d)
    integer(4),value::d
if (d/=-1) print *,402
  end  subroutine
  subroutine s81(d)
    integer(8),value::d
if (d/=1) print *,101
  end  subroutine
  subroutine s82(d)
    integer(8),value::d
if (d/=-1) print *,802
  end  subroutine
end
subroutine sx1(k,n)
use m1
integer(1)::k,n
call s11(      k )
call s11( %val(k))
call s11(      1_1 )
call s11( %val(1_1))
call s12(      -k )
call s12( %val(-k))
call s12(      n )
call s12( %val(n))
call s12(      -1_1 )
call s12( %val(-1_1))
end
call sx1(1_1,-1_1)
print *,'pass'
end
