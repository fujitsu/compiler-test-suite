call s1
call s2
call s3
print *,'pass'
contains
  subroutine s1
    use, intrinsic :: ieee_arithmetic
    real :: x,y
    x=0.0
    y=1.0
    if (ieee_support_datatype(x)) then
       if (ieee_support_inf(y)) then
          x = ieee_value(x, ieee_negative_inf)
          y = ieee_value(x, ieee_positive_inf)
          if(x/=-y) print *,'err1'
       end if
       if (ieee_support_nan(y)) then
          x = ieee_value(x, ieee_signaling_nan)
          y = ieee_value(x, ieee_quiet_nan)
          if(x==y) print *,'err2'
       endif
       if (ieee_support_denormal(y)) then
          x = ieee_value(x, ieee_negative_denormal)
          y = ieee_value(x, ieee_positive_denormal)
          if(x/=-y) print *,'err3'
       endif
    else
       print *,'ieee_support_datatype no support'
    end if
  end subroutine s1
  subroutine s2
    use, intrinsic :: ieee_arithmetic
    real(4):: x
    real(8):: y
    real(16):: z
    x = -1.0
    y = -1.0d0
    z = -1.0q0
    if(ieee_unordered(0.0,sqrt(x)).neqv..true.) print *,'err1'
    if(ieee_support_sqrt(1.0).neqv..true.) print *,'err2'
    if(ieee_unordered(0.0d0,sqrt(y)).neqv..true.) print *,'err3'
    if(ieee_support_sqrt(1.0d0).neqv..true.) print *,'err4'
    if(ieee_unordered(0.0q0,sqrt(z)).neqv..true.) print *,'err5'
    if(ieee_support_sqrt(1.0q0).neqv..true.) print *,'err6'
  end subroutine s2
  subroutine s3
    use, intrinsic :: ieee_arithmetic
    logical l
    logical halting
    type(ieee_status_type) status_value
    call ieee_get_flag(ieee_overflow,l)
    if(.not.l.eqv..false.) print *,'err7'
    call ieee_get_halting_mode(ieee_overflow,halting)
    call ieee_set_halting_mode(ieee_overflow,.false.)
    call ieee_set_halting_mode(ieee_overflow,halting)
    call ieee_get_status(status_value)
    call ieee_set_flag(ieee_all,.false.)
    call ieee_set_status(status_value)
  end subroutine s3
end
