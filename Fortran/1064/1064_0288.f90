subroutine s1
complex,save:: a1,a2(2)
complex     :: b1,b2(2)
common /com/ b1,b2
!$omp threadprivate(/com/,a1,a2)
complex     :: c1,c2(2)
integer :: omp_get_num_threads

call set
call set_th
!$omp parallel 
call set_th_b
!$omp end parallel
!$omp parallel firstprivate( c1, c2 )
do k1=1,2
if (c1%re/=1..or. &
    c1%im/=2..or. &
    c2(1)%re/=3. .or. &
    c2(1)%im/=4. .or. &
    c2(2)%re/=5. .or. &
    c2(2)%im/=6. ) print *,201,c1,c2
end do
do k1=1,2
if (a1%re/= omp_get_num_threads() +1..or. &
    a1%im/= omp_get_num_threads() +2..or. &
    a2(1)%re/= omp_get_num_threads() +3. .or. &
    a2(1)%im/= omp_get_num_threads() +4. .or. &
    a2(2)%re/= omp_get_num_threads() +5. .or. &
    a2(2)%im/= omp_get_num_threads() +6. ) print *,301,a1,a2
end do
do k1=1,2
c1%re=11.
c1%im=12.
if (k1==1) then
c2(k1)%re=13.
c2(k1)%im=14.
else
c2(k1)%re=15.
c2(k1)%im=16.
endif
end do
if (c1%re/=11..or. &
    c1%im/=12..or. &
    c2(1)%re/=13. .or. &
    c2(1)%im/=14. .or. &
    c2(2)%re/=15. .or. &
    c2(2)%im/=16. ) print *,202
do k1=1,2
if (b1%re/= omp_get_num_threads() +1..or. &
    b1%im/= omp_get_num_threads() +2.) print *,6011
if (k1==1) then
if (&
    b2(k1)%re/= omp_get_num_threads() +3. .or. &
    b2(k1)%im/= omp_get_num_threads() +4. ) print *,6012
endif
if (k1==2) then
if (&
    b2(k1)%re/= omp_get_num_threads() +5. .or. &
    b2(k1)%im/= omp_get_num_threads() +6. ) print *,401,b1,b2
end if
end do
!$omp end parallel
contains
subroutine set
c1%re=1.
c1%im=2.
c2(1)%re=3.
c2(1)%im=4.
c2(2)%re=5.
c2(2)%im=6.
end subroutine
subroutine set_th
integer :: omp_get_num_threads
!$omp parallel 
a1%re=1. + omp_get_num_threads()
a1%im=2. + omp_get_num_threads()
a2(1)%re=3. + omp_get_num_threads()
a2(1)%im=4. + omp_get_num_threads()
a2(2)%re=5. + omp_get_num_threads()
a2(2)%im=6. + omp_get_num_threads()
!$omp end parallel
end subroutine
subroutine set_th_b
integer :: omp_get_num_threads
b1%re=1. + omp_get_num_threads()
b1%im=2. + omp_get_num_threads()
b2(1)%re=3. + omp_get_num_threads()
b2(1)%im=4. + omp_get_num_threads()
b2(2)%re=5. + omp_get_num_threads()
b2(2)%im=6. + omp_get_num_threads()
end subroutine
end

call s1
print *,'pass'
end
