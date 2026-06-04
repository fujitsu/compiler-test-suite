subroutine s1
complex     :: c1

call set
if (c1%re /= 1) print *,101
if (c1%im /= 2) print *,102
!$omp parallel firstprivate( c1 )
if (c1%re/=1..or. &
    c1%im/=2.) print *,201
c1%re=11.
c1%im=12.
!$omp parallel firstprivate( c1 )
if (c1%re/=11..or. &
    c1%im/=12.) print *,202
c1%re=21.
c1%im=22.
!$omp parallel firstprivate( c1 )
if (c1%re/=21..or. &
    c1%im/=22.) print *,302
c1%re=31.
c1%im=32.
!$omp parallel firstprivate( c1 )
if (c1%re/=31..or. &
    c1%im/=32.) print *,402
c1%re=41.
c1%im=42.
if (c1%re/=41..or. &
    c1%im/=42.) print *,403
!$omp end parallel
if (c1%re/=31..or. &
    c1%im/=32.) print *,412
!$omp end parallel
if (c1%re/=21..or. &
    c1%im/=22.) print *,211
!$omp end parallel
if (c1%re/=11..or. &
    c1%im/=12.) print *,221
!$omp end parallel
if (c1%re/=1..or. &
    c1%im/=2.) print *,201
contains
subroutine set
c1%re=1.
c1%im=2.
end subroutine
end

call s1
print *,'pass'
end
