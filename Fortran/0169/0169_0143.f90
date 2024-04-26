module m
  type ty
    integer ::i=10
  end type
  type(ty)t1,t2,t3,t4,t5,t6,t7,t8
  interface
    module subroutine sub
    end subroutine
  end interface
contains
  subroutine m_sub
    if (t1%i/=10) print *,201 
    if (t2%i/=10) print *,202 
    if (t3%i/=10) print *,203 
    if (t4%i/=10) print *,204 
    if (t5%i/=10) print *,205 
    if (t6%i/=10) print *,206 
    if (t7%i/=10) print *,207 
    if (t8%i/= 1) print *,208
  end subroutine
end

submodule(m)smod
  type ty
    real ::r=10
  end type
  type(ty)t1,t2,t3,t4
contains
  subroutine smod_sub
    if (abs(t1%r-10) > 0.01) print *,301
    if (abs(t2%r-10) > 0.01) print *,302
    if (abs(t3%r-10) > 0.01) print *,303
    if (abs(t4%r-0.5) > 0.01) print *,304
    if (t5%i/=10) print *,305
    if (t6%i/=10) print *,306
    if (t7%i/=10) print *,307
    if (t8%i /= 1) print *,308
  end subroutine
end

submodule(m:smod)smod2
  type(ty)t1,t3,t5,t7
contains
  subroutine smod2_sub
    if (abs(t1%r-10) > 0.01) print *,101
    if (abs(t2%r-10) > 0.01) print *,102
    if (abs(t3%r-0.5) > 0.01) print *,103
    if (abs(t4%r-0.5) > 0.01) print *,104
    if (abs(t5%r-10) > 0.01) print *,105
    if (t6%i/=10) print *,106
    if (abs(t7%r-0.5) > 0.01) print *,107
    if (t8%i /= 1) print *,108
  end subroutine
end

submodule(m:smod2)smod3
  type(ty)t1,t2,t5,t6
contains
  subroutine s
    t1%r=0.5
    t2%r=0.5
    t3%r=0.5
    t4%r=0.5
    t5%r=0.5
    t6%r=0.5
    t7%r=0.5
    t8%i=1
  end subroutine
  module subroutine sub
    call s
    if (abs(t1%r-0.5) > 0.01) print *,401
    if (abs(t2%r-0.5) > 0.01) print *,402
    if (abs(t3%r-0.5) > 0.01) print *,403
    if (abs(t4%r-0.5) > 0.01) print *,404
    if (abs(t5%r-0.5) > 0.01) print *,405
    if (abs(t6%r-0.5) > 0.01) print *,406
    if (abs(t7%r-0.5) > 0.01) print *,407
    if (t8%i /= 1) print *,408
    call smod2_sub
    call smod_sub
    call m_sub
  end subroutine
end

use m
call sub
print *,'pass'
end
