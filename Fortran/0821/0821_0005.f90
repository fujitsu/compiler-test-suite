module m1
integer,parameter::m=1
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
integer(m)::k,n
call s11(      k )
call s11( %val(k))
call s11(      1_m )
call s11( %val(1_m))
call s12(      -k )
call s12( %val(-k))
call s12(      n )
call s12( %val(n))
call s12(      -1_m )
call s12( %val(-1_m))
end
use m1
call sx1(1_m,-1_m)
print *,'pass'
end
