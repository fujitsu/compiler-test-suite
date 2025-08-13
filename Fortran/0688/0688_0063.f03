use omp_lib
!$omp parallel
!$omp single
!print *,'omp_get_num_threads() = ',omp_get_num_threads()
!$omp end single
!$omp end parallel
call s1
call s2
call s3
call s4
call s5
call s6
call s7
call s8
call s9
call s10
call s11
call s12
call s13
call s14
print *,'pass'
end
subroutine s1
integer(1)::bi1
integer(2)::i2
integer(4)::i4
integer(8)::i8
real(4)::r
real(8)::d
real(16)::q
complex(4)::c
complex(8)::cd
complex(16)::cq
logical(1)::l1
logical(2)::l2
logical(4)::l4
logical(8)::l8
bi1=1
i2=1
i4=1
i8=1
r=1
d=1
q=1
c=1
cd=1
cq=1
l1=.true.
l2=.true.
l4=.true.
l8=.true.

!$omp atomic update
i2=i2+1
!$omp end atomic
!$omp atomic update
i4=i4+1
!$omp end atomic
!$omp atomic update
i8=i8+1
!$omp end atomic
!$omp atomic update
r=r+1
!$omp end atomic
!$omp atomic update
d=d+1
!$omp end atomic
!$omp atomic update
q=q+1
!$omp end atomic
!$omp atomic update
c=c+1
!$omp end atomic
!$omp atomic update
cd=cd+1
!$omp end atomic
!$omp atomic update
cq=cq+1
!$omp end atomic
!$omp atomic update
l1=l1.eqv..true.
!$omp end atomic
!$omp atomic update
l2=l2.eqv..true.
!$omp end atomic
!$omp atomic update
l4=l4.eqv..true.
!$omp end atomic
!$omp atomic update
l8=l8.eqv..true.
!$omp end atomic
!$omp barrier
!$omp single
if( i2 /= 2)  print  *,'s1 NG i2 = ', i2
if( i4 /= 2)  print  *,'s1 NG i4 = ', i4
if( i8 /= 2)  print  *,'s1 NG i8 = ', i8
if( r /= 2)  print  *,'s1 NG r = ', r
if( d /= 2)  print  *,'s1 NG d = ', d
if( q /= 2)  print  *,'s1 NG q = ', q
if( c /= (2,0))  print  *,'s1 NG c = ', c
if( cd /= (2,0))  print  *,'s1 NG cd = ', cd
if( cq /= (2,0))  print  *,'s1 NG cq = ', cq
if( l1 .NEQV. .true.)  print  *,'s1 NG l1 = ', l1
if( l2 .NEQV. .true.)  print  *,'s1 NG l2 = ', l2
if( l4 .NEQV. .true.)  print  *,'s1 NG l4 = ', l4
if( l8 .NEQV. .true.)  print  *,'s1 NG l8 = ', l8
!$omp end single
end
subroutine s2
integer(1)::i1
integer(2)::bi2
integer(4)::i4
integer(8)::i8
real(4)::r
real(8)::d
real(16)::q
complex(4)::c
complex(8)::cd
complex(16)::cq
logical(1)::l1
logical(2)::l2
logical(4)::l4
logical(8)::l8
i1=1
bi2=1
i4=1
i8=1
r=1
d=1
q=1
c=1
cd=1
cq=1
l1=.true.
l2=.true.
l4=.true.
l8=.true.

!$omp atomic update
i1=i1+1
!$omp end atomic
!$omp atomic update
i4=i4+1
!$omp end atomic
!$omp atomic update
i8=i8+1
!$omp end atomic
!$omp atomic update
r=r+1
!$omp end atomic
!$omp atomic update
d=d+1
!$omp end atomic
!$omp atomic update
q=q+1
!$omp end atomic
!$omp atomic update
c=c+(1,1)
!$omp end atomic
!$omp atomic update
cd=cd+(1,1)
!$omp end atomic
!$omp atomic update
cq=cq+(1,1)
!$omp end atomic
!$omp atomic update
l1=l1.eqv..true.
!$omp end atomic
!$omp atomic update
l2=l2.eqv..true.
!$omp end atomic
!$omp atomic update
l4=l4.eqv..true.
!$omp end atomic
!$omp atomic update
l8=l8.eqv..true.
!$omp end atomic
!$omp barrier
!$omp single
if( i1 /= 2)  print  *,'s2 NG i1 = ', i1
if( i4 /= 2)  print  *,'s2 NG i4 = ', i4
if( i8 /= 2)  print  *,'s2 NG i8 = ', i8
if( r /= 2)  print  *,'s2 NG r = ', r
if( d /= 2)  print  *,'s2 NG d = ', d
if( q /= 2)  print  *,'s2 NG q = ', q
if( c /= (2,1))  print  *,'s2 NG c = ', c
if( cd /= (2,1))  print  *,'s2 NG cd = ', cd
if( cq /= (2,1))  print  *,'s2 NG cq = ', cq
if( l1 .NEQV. .true.)  print  *,'s2 NG l1 = ', l1
if( l2 .NEQV. .true.)  print  *,'s2 NG l2 = ', l2
if( l4 .NEQV. .true.)  print  *,'s2 NG l4 = ', l4
if( l8 .NEQV. .true.)  print  *,'s2 NG l8 = ', l8
!$omp end single
end
subroutine s3
integer(1)::i1
integer(2)::i2
integer(4)::bi4
integer(8)::i8
real(4)::r
real(8)::d
real(16)::q
complex(4)::c
complex(8)::cd
complex(16)::cq
logical(1)::l1
logical(2)::l2
logical(4)::l4
logical(8)::l8
i1=1
i2=1
bi4=1
i8=1
r=1
d=1
q=1
c=1
cd=1
cq=1
l1=.true.
l2=.true.
l4=.true.
l8=.true.

!$omp atomic update
i1=i1+1
!$omp end atomic
!$omp atomic update
i2=i2+1
!$omp end atomic
!$omp atomic update
i8=i8+1
!$omp end atomic
!$omp atomic update
r=r+1
!$omp end atomic
!$omp atomic update
d=d+1
!$omp end atomic
!$omp atomic update
q=q+1
!$omp end atomic
!$omp atomic update
c=c+(1,1)
!$omp end atomic
!$omp atomic update
cd=cd+(1,1)
!$omp end atomic
!$omp atomic update
cq=cq+(1,1)
!$omp end atomic
!$omp atomic update
l1=l1.eqv..true.
!$omp end atomic
!$omp atomic update
l2=l2.eqv..true.
!$omp end atomic
!$omp atomic update
l4=l4.eqv..true.
!$omp end atomic
!$omp atomic update
l8=l8.eqv..true.
!$omp end atomic
!$omp barrier
!$omp single
if( i1 /= 2)  print  *,'s3 NG i1 = ', i1
if( i2 /= 2)  print  *,'s3 NG i2 = ', i2
if( i8 /= 2)  print  *,'s3 NG i8 = ', i8
if( r /= 2)  print  *,'s3 NG r = ', r
if( d /= 2)  print  *,'s3 NG d = ', d
if( q /= 2)  print  *,'s3 NG q = ', q
if( c /= (2,1))  print  *,'s3 NG c = ', c
if( cd /= (2,1))  print  *,'s3 NG cd = ', cd
if( cq /= (2,1))  print  *,'s3 NG cq = ', cq
if( l1 .NEQV. .true.)  print  *,'s3 NG l1 = ', l1
if( l2 .NEQV. .true.)  print  *,'s3 NG l2 = ', l2
if( l4 .NEQV. .true.)  print  *,'s3 NG l4 = ', l4
if( l8 .NEQV. .true.)  print  *,'s3 NG l8 = ', l8
!$omp end single
end
subroutine s4
integer(1)::i1
integer(2)::i2
integer(4)::i4
integer(8)::bi8
real(4)::r
real(8)::d
real(16)::q
complex(4)::c
complex(8)::cd
complex(16)::cq
logical(1)::l1
logical(2)::l2
logical(4)::l4
logical(8)::l8
i1=1
i2=1
i4=1
bi8=1
r=1
d=1
q=1
c=1
cd=1
cq=1
l1=.true.
l2=.true.
l4=.true.
l8=.true.

!$omp atomic update
i1=i1+1
!$omp end atomic
!$omp atomic update
i2=i2+1
!$omp end atomic
!$omp atomic update
i4=i4+1
!$omp end atomic
!$omp atomic update
r=r+1
!$omp end atomic
!$omp atomic update
d=d+1
!$omp end atomic
!$omp atomic update
q=q+1
!$omp end atomic
!$omp atomic update
c=c+(1,1)
!$omp end atomic
!$omp atomic update
cd=cd+(1,1)
!$omp end atomic
!$omp atomic update
cq=cq+(1,1)
!$omp end atomic
!$omp atomic update
l1=l1.eqv..true.
!$omp end atomic
!$omp atomic update
l2=l2.eqv..true.
!$omp end atomic
!$omp atomic update
l4=l4.eqv..true.
!$omp end atomic
!$omp atomic update
l8=l8.eqv..true.
!$omp end atomic
!$omp barrier
!$omp single
if( i1 /= 2)  print  *,'s4 NG i1 = ', i1
if( i2 /= 2)  print  *,'s4 NG i4 = ', i2
if( i4 /= 2)  print  *,'s4 NG i4 = ', i4
if( r /= 2)  print  *,'s4 NG r = ', r
if( d /= 2)  print  *,'s4 NG d = ', d
if( q /= 2)  print  *,'s4 NG q = ', q
if( c /= (2,1))  print  *,'s4 NG c = ', c
if( cd /= (2,1))  print  *,'s4 NG cd = ', cd
if( cq /= (2,1))  print  *,'s4 NG cq = ', cq
if( l1 .NEQV. .true.)  print  *,'s4 NG l1 = ', l1
if( l2 .NEQV. .true.)  print  *,'s4 NG l2 = ', l2
if( l4 .NEQV. .true.)  print  *,'s4 NG l4 = ', l4
if( l8 .NEQV. .true.)  print  *,'s4 NG l8 = ', l8
!$omp end single
end
subroutine s5
integer(1)::i1
integer(2)::i2
integer(4)::i4
integer(8)::i8
real(4)::br
real(8)::d
real(16)::q
complex(4)::c
complex(8)::cd
complex(16)::cq
logical(1)::l1
logical(2)::l2
logical(4)::l4
logical(8)::l8
i1=1
i2=1
i4=1
i8=1
br=1
d=1
q=1
c=1
cd=1
cq=1
l1=.true.
l2=.true.
l4=.true.
l8=.true.
!$omp atomic update
i1=i1+1
!$omp end atomic
!$omp atomic update
i2=i2+1
!$omp end atomic
!$omp atomic update
i4=i4+1
!$omp end atomic
!$omp atomic update
i8=i8+1
!$omp end atomic
!$omp atomic update
d=d+1
!$omp end atomic
!$omp atomic update
q=q+1
!$omp end atomic
!$omp atomic update
c=c+(1,1)
!$omp end atomic
!$omp atomic update
cd=cd+(1,1)
!$omp end atomic
!$omp atomic update
cq=cq+(1,1)
!$omp end atomic
!$omp atomic update
l1=l1.eqv..true.
!$omp end atomic
!$omp atomic update
l2=l2.eqv..true.
!$omp end atomic
!$omp atomic update
l4=l4.eqv..true.
!$omp end atomic
!$omp atomic update
l8=l8.eqv..true.
!$omp end atomic
!$omp barrier
!$omp single
if( i1 /= 2)  print  *,'s5 NG i1 = ', i1
if( i2 /= 2)  print  *,'s5 NG i4 = ', i2
if( i4 /= 2)  print  *,'s5 NG i4 = ', i4
if( i8 /= 2)  print  *,'s5 NG i8 = ', i8
if( d /= 2)  print  *,'s5 NG d = ', d
if( q /= 2)  print  *,'s5 NG q = ', q
if( c /= (2,1))  print  *,'s5 NG c = ', c
if( cd /= (2,1))  print  *,'s5 NG cd = ', cd
if( cq /= (2,1))  print  *,'s5 NG cq = ', cq
if( l1 .NEQV. .true.)  print  *,'s5 NG l1 = ', l1
if( l2 .NEQV. .true.)  print  *,'s5 NG l2 = ', l2
if( l4 .NEQV. .true.)  print  *,'s5 NG l4 = ', l4
if( l8 .NEQV. .true.)  print  *,'s5 NG l8 = ', l8
!$omp end single
end
subroutine s6
integer(1)::i1
integer(2)::i2
integer(4)::i4
integer(8)::i8
real(4)::r
real(8)::bd
real(16)::q
complex(4)::c
complex(8)::cd
complex(16)::cq
logical(1)::l1
logical(2)::l2
logical(4)::l4
logical(8)::l8
i1=1
i2=1
i4=1
i8=1
r=1
bd=1
q=1
c=1
cd=1
cq=1
l1=.true.
l2=.true.
l4=.true.
l8=.true.
!$omp atomic update
i1=i1+1
!$omp end atomic
!$omp atomic update
i2=i2+1
!$omp end atomic
!$omp atomic update
i4=i4+1
!$omp end atomic
!$omp atomic update
i8=i8+1
!$omp end atomic
!$omp atomic update
r=r+1
!$omp end atomic
!$omp atomic update
q=q+1
!$omp end atomic
!$omp atomic update
c=c+(1,1)
!$omp end atomic
!$omp atomic update
cd=cd+(1,1)
!$omp end atomic
!$omp atomic update
cq=cq+(1,1)
!$omp end atomic
!$omp atomic update
l1=l1.eqv..true.
!$omp end atomic
!$omp atomic update
l2=l2.eqv..true.
!$omp end atomic
!$omp atomic update
l4=l4.eqv..true.
!$omp end atomic
!$omp atomic update
l8=l8.eqv..true.
!$omp end atomic
!$omp barrier
!$omp single
if( i1 /= 2)  print  *,'s6 NG i1 = ', i1
if( i2 /= 2)  print  *,'s6 NG i4 = ', i2
if( i4 /= 2)  print  *,'s6 NG i4 = ', i4
if( i8 /= 2)  print  *,'s6 NG i8 = ', i8
if( r /= 2)  print  *,'s6 NG r = ', r
if( q /= 2)  print  *,'s6 NG q = ', q
if( c /= (2,1))  print  *,'s6 NG c = ', c
if( cd /= (2,1))  print  *,'s6 NG cd = ', cd
if( cq /= (2,1))  print  *,'s6 NG cq = ', cq
if( l1 .NEQV. .true.)  print  *,'s6 NG l1 = ', l1
if( l2 .NEQV. .true.)  print  *,'s6 NG l2 = ', l2
if( l4 .NEQV. .true.)  print  *,'s6 NG l4 = ', l4
if( l8 .NEQV. .true.)  print  *,'s6 NG l8 = ', l8
!$omp end single
end
subroutine s7
integer(1)::i1
integer(2)::i2
integer(4)::i4
integer(8)::i8
real(4)::r
real(8)::d
real(16)::bq
complex(4)::c
complex(8)::cd
complex(16)::cq
logical(1)::l1
logical(2)::l2
logical(4)::l4
logical(8)::l8
i1=1
i2=1
i4=1
i8=1
r=1
d=1
bq=1
c=1
cd=1
cq=1
l1=.true.
l2=.true.
l4=.true.
l8=.true.
!$omp atomic update
i1=i1+1
!$omp end atomic
!$omp atomic update
i2=i2+1
!$omp end atomic
!$omp atomic update
i4=i4+1
!$omp end atomic
!$omp atomic update
i8=i8+1
!$omp end atomic
!$omp atomic update
r=r+1
!$omp end atomic
!$omp atomic update
d=d+1
!$omp end atomic
!$omp atomic update
c=c+(1,1)
!$omp end atomic
!$omp atomic update
cd=cd+(1,1)
!$omp end atomic
!$omp atomic update
cq=cq+(1,1)
!$omp end atomic
!$omp atomic update
l1=l1.eqv..true.
!$omp end atomic
!$omp atomic update
l2=l2.eqv..true.
!$omp end atomic
!$omp atomic update
l4=l4.eqv..true.
!$omp end atomic
!$omp atomic update
l8=l8.eqv..true.
!$omp end atomic
!$omp barrier
!$omp single
if( i1 /= 2)  print  *,'s7 NG i1 = ', i1
if( i2 /= 2)  print  *,'s7 NG i4 = ', i2
if( i4 /= 2)  print  *,'s7 NG i4 = ', i4
if( i8 /= 2)  print  *,'s7 NG i8 = ', i8
if( r /= 2)  print  *,'s7 NG r = ', r
if( d /= 2)  print  *,'s7 NG d = ', d
if( c /= (2,1))  print  *,'s7 NG c = ', c
if( cd /= (2,1))  print  *,'s7 NG cd = ', cd
if( cq /= (2,1))  print  *,'s7 NG cq = ', cq
if( l1 .NEQV. .true.)  print  *,'s7 NG l1 = ', l1
if( l2 .NEQV. .true.)  print  *,'s7 NG l2 = ', l2
if( l4 .NEQV. .true.)  print  *,'s7 NG l4 = ', l4
if( l8 .NEQV. .true.)  print  *,'s7 NG l8 = ', l8
!$omp end single
end
subroutine s8
integer(1)::i1
integer(2)::i2
integer(4)::i4
integer(8)::i8
real(4)::r
real(8)::d
real(16)::q
complex(4)::bc
complex(8)::cd
complex(16)::cq
logical(1)::l1
logical(2)::l2
logical(4)::l4
logical(8)::l8
i1=1
i2=1
i4=1
i8=1
r=1
d=1
q=1
bc=1
cd=1
cq=1
l1=.true.
l2=.true.
l4=.true.
l8=.true.
!$omp atomic update
i1=i1+1
!$omp end atomic
!$omp atomic update
i2=i2+1
!$omp end atomic
!$omp atomic update
i4=i4+1
!$omp end atomic
!$omp atomic update
i8=i8+1
!$omp end atomic
!$omp atomic update
r=r+1
!$omp end atomic
!$omp atomic update
d=d+1
!$omp end atomic
!$omp atomic update
q=q+1
!$omp end atomic
!$omp atomic update
cd=cd+(1,1)
!$omp end atomic
!$omp atomic update
cq=cq+(1,1)
!$omp end atomic
!$omp atomic update
l1=l1.eqv..true.
!$omp end atomic
!$omp atomic update
l2=l2.eqv..true.
!$omp end atomic
!$omp atomic update
l4=l4.eqv..true.
!$omp end atomic
!$omp atomic update
l8=l8.eqv..true.
!$omp end atomic
!$omp barrier
!$omp single
if( i1 /= 2)  print  *,'s8 NG i1 = ', i1
if( i2 /= 2)  print  *,'s8 NG i4 = ', i2
if( i4 /= 2)  print  *,'s8 NG i4 = ', i4
if( i8 /= 2)  print  *,'s8 NG i8 = ', i8
if( r /= 2)  print  *,'s8 NG r = ', r
if( d /= 2)  print  *,'s8 NG d = ', d
if( q /= 2)  print  *,'s8 NG q = ', q
if( cd /= (2,1))  print  *,'s8 NG cd = ', cd
if( cq /= (2,1))  print  *,'s8 NG cq = ', cq
if( l1 .NEQV. .true.)  print  *,'s8 NG l1 = ', l1
if( l2 .NEQV. .true.)  print  *,'s8 NG l2 = ', l2
if( l4 .NEQV. .true.)  print  *,'s8 NG l4 = ', l4
if( l8 .NEQV. .true.)  print  *,'s8 NG l8 = ', l8
!$omp end single
end
subroutine s9
integer(1)::i1
integer(2)::i2
integer(4)::i4
integer(8)::i8
real(4)::r
real(8)::d
real(16)::q
complex(4)::c
complex(8)::bcd
complex(16)::cq
logical(1)::l1
logical(2)::l2
logical(4)::l4
logical(8)::l8
i1=1
i2=1
i4=1
i8=1
r=1
d=1
q=1
c=1
bcd=1
cq=1
l1=.true.
l2=.true.
l4=.true.
l8=.true.
!$omp atomic update
i1=i1+1
!$omp end atomic
!$omp atomic update
i2=i2+1
!$omp end atomic
!$omp atomic update
i4=i4+1
!$omp end atomic
!$omp atomic update
i8=i8+1
!$omp end atomic
!$omp atomic update
r=r+1
!$omp end atomic
!$omp atomic update
d=d+1
!$omp end atomic
!$omp atomic update
q=q+1
!$omp end atomic
!$omp atomic update
c=c+(1,1)
!$omp end atomic
!$omp atomic update
cq=cq+(1,1)
!$omp end atomic
!$omp atomic update
l1=l1.eqv..true.
!$omp end atomic
!$omp atomic update
l2=l2.eqv..true.
!$omp end atomic
!$omp atomic update
l4=l4.eqv..true.
!$omp end atomic
!$omp atomic update
l8=l8.eqv..true.
!$omp end atomic
!$omp barrier
!$omp single
if( i1 /= 2)  print  *,'s9 NG i1 = ', i1
if( i2 /= 2)  print  *,'s9 NG i4 = ', i2
if( i4 /= 2)  print  *,'s9 NG i4 = ', i4
if( i8 /= 2)  print  *,'s9 NG i8 = ', i8
if( r /= 2)  print  *,'s9 NG r = ', r
if( d /= 2)  print  *,'s9 NG d = ', d
if( q /= 2)  print  *,'s9 NG q = ', q
if( c /= (2,1))  print  *,'s9 NG c = ', c
if( cq /= (2,1))  print  *,'s9 NG cq = ', cq
if( l1 .NEQV. .true.)  print  *,'s9 NG l1 = ', l1
if( l2 .NEQV. .true.)  print  *,'s9 NG l2 = ', l2
if( l4 .NEQV. .true.)  print  *,'s9 NG l4 = ', l4
if( l8 .NEQV. .true.)  print  *,'s9 NG l8 = ', l8
!$omp end single
end
subroutine s10
integer(1)::i1
integer(2)::i2
integer(4)::i4
integer(8)::i8
real(4)::r
real(8)::d
real(16)::q
complex(4)::c
complex(8)::cd
complex(16)::bcq
logical(1)::l1
logical(2)::l2
logical(4)::l4
logical(8)::l8
i1=1
i2=1
i4=1
i8=1
r=1
d=1
q=1
c=1
cd=1
bcq=1
l1=.true.
l2=.true.
l4=.true.
l8=.true.
!$omp atomic update
i1=i1+1
!$omp end atomic
!$omp atomic update
i2=i2+1
!$omp end atomic
!$omp atomic update
i4=i4+1
!$omp end atomic
!$omp atomic update
i8=i8+1
!$omp end atomic
!$omp atomic update
r=r+1
!$omp end atomic
!$omp atomic update
d=d+1
!$omp end atomic
!$omp atomic update
q=q+1
!$omp end atomic
!$omp atomic update
c=c+(1,1)
!$omp end atomic
!$omp atomic update
cd=cd+(1,1)
!$omp end atomic
!$omp atomic update
l1=l1.eqv..true.
!$omp end atomic
!$omp atomic update
l2=l2.eqv..true.
!$omp end atomic
!$omp atomic update
l4=l4.eqv..true.
!$omp end atomic
!$omp atomic update
l8=l8.eqv..true.
!$omp end atomic
!$omp barrier
!$omp single
if( i1 /= 2)  print  *,'s10 NG i1 = ', i1
if( i2 /= 2)  print  *,'s10 NG i4 = ', i2
if( i4 /= 2)  print  *,'s10 NG i4 = ', i4
if( i8 /= 2)  print  *,'s10 NG i8 = ', i8
if( r /= 2)  print  *,'s10 NG r = ', r
if( d /= 2)  print  *,'s10 NG d = ', d
if( q /= 2)  print  *,'s10 NG q = ', q
if( c /= (2,1))  print  *,'s10 NG c = ', c
if( cd /= (2,1))  print  *,'s10 NG cd = ', cd
if( l1 .NEQV. .true.)  print  *,'s10 NG l1 = ', l1
if( l2 .NEQV. .true.)  print  *,'s10 NG l2 = ', l2
if( l4 .NEQV. .true.)  print  *,'s10 NG l4 = ', l4
if( l8 .NEQV. .true.)  print  *,'s10 NG l8 = ', l8
!$omp end single
end
subroutine s11
integer(1)::i1
integer(2)::i2
integer(4)::i4
integer(8)::i8
real(4)::r
real(8)::d
real(16)::q
complex(4)::c
complex(8)::cd
complex(16)::cq
logical(1)::bl1
logical(2)::l2
logical(4)::l4
logical(8)::l8
i1=1
i2=1
i4=1
i8=1
r=1
d=1
q=1
c=1
cd=1
cq=1
bl1=.true.
l2=.true.
l4=.true.
l8=.true.
!$omp atomic update
i1=i1+1
!$omp end atomic
!$omp atomic update
i2=i2+1
!$omp end atomic
!$omp atomic update
i4=i4+1
!$omp end atomic
!$omp atomic update
i8=i8+1
!$omp end atomic
!$omp atomic update
r=r+1
!$omp end atomic
!$omp atomic update
d=d+1
!$omp end atomic
!$omp atomic update
q=q+1
!$omp end atomic
!$omp atomic update
c=c+(1,1)
!$omp end atomic
!$omp atomic update
cd=cd+(1,1)
!$omp end atomic
!$omp atomic update
cq=cq+(1,1)
!$omp end atomic
!$omp atomic update
l2=l2.eqv..true.
!$omp end atomic
!$omp atomic update
l4=l4.eqv..true.
!$omp end atomic
!$omp atomic update
l8=l8.eqv..true.
!$omp end atomic
!$omp barrier
!$omp single
if( i1 /= 2)  print  *,'s11 NG i1 = ', i1
if( i2 /= 2)  print  *,'s11 NG i4 = ', i2
if( i4 /= 2)  print  *,'s11 NG i4 = ', i4
if( i8 /= 2)  print  *,'s11 NG i8 = ', i8
if( r /= 2)  print  *,'s11 NG r = ', r
if( d /= 2)  print  *,'s11 NG d = ', d
if( q /= 2)  print  *,'s11 NG q = ', q
if( c /= (2,1))  print  *,'s11 NG c = ', c
if( cd /= (2,1))  print  *,'s11 NG cd = ', cd
if( cq /= (2,1))  print  *,'s11 NG cq = ', cq
if( l2 .NEQV. .true.)  print  *,'s11 NG l2 = ', l2
if( l4 .NEQV. .true.)  print  *,'s11 NG l4 = ', l4
if( l8 .NEQV. .true.)  print  *,'s11 NG l8 = ', l8
!$omp end single
end
subroutine s12
integer(1)::i1
integer(2)::i2
integer(4)::i4
integer(8)::i8
real(4)::r
real(8)::d
real(16)::q
complex(4)::c
complex(8)::cd
complex(16)::cq
logical(1)::l1
logical(2)::bl2
logical(4)::l4
logical(8)::l8
i1=1
i2=1
i4=1
i8=1
r=1
d=1
q=1
c=1
cd=1
cq=1
l1=.true.
bl2=.true.
l4=.true.
l8=.true.
!$omp atomic update
i1=i1+1
!$omp end atomic
!$omp atomic update
i2=i2+1
!$omp end atomic
!$omp atomic update
i4=i4+1
!$omp end atomic
!$omp atomic update
i8=i8+1
!$omp end atomic
!$omp atomic update
r=r+1
!$omp end atomic
!$omp atomic update
d=d+1
!$omp end atomic
!$omp atomic update
q=q+1
!$omp end atomic
!$omp atomic update
c=c+(1,1)
!$omp end atomic
!$omp atomic update
cd=cd+(1,1)
!$omp end atomic
!$omp atomic update
cq=cq+(1,1)
!$omp end atomic
!$omp atomic update
l1=l1.eqv..true.
!$omp end atomic
!$omp atomic update
l4=l4.eqv..true.
!$omp end atomic
!$omp atomic update
l8=l8.eqv..true.
!$omp end atomic
!$omp barrier
!$omp single
if( i1 /= 2)  print  *,'s12 NG i1 = ', i1
if( i2 /= 2)  print  *,'s12 NG i4 = ', i2
if( i4 /= 2)  print  *,'s12 NG i4 = ', i4
if( i8 /= 2)  print  *,'s12 NG i8 = ', i8
if( r /= 2)  print  *,'s12 NG r = ', r
if( d /= 2)  print  *,'s12 NG d = ', d
if( q /= 2)  print  *,'s12 NG q = ', q
if( c /= (2,1))  print  *,'s12 NG c = ', c
if( cd /= (2,1))  print  *,'s12 NG cd = ', cd
if( cq /= (2,1))  print  *,'s12 NG cq = ', cq
if( l1 .NEQV. .true.)  print  *,'s12 NG l1 = ', l1
if( l4 .NEQV. .true.)  print  *,'s12 NG l4 = ', l4
if( l8 .NEQV. .true.)  print  *,'s12 NG l8 = ', l8
!$omp end single
end
subroutine s13
integer(1)::i1
integer(2)::i2
integer(4)::i4
integer(8)::i8
real(4)::r
real(8)::d
real(16)::q
complex(4)::c
complex(8)::cd
complex(16)::cq
logical(1)::l1
logical(2)::l2
logical(4)::bl4
logical(8)::l8
i1=1
i2=1
i4=1
i8=1
r=1
d=1
q=1
c=1
cd=1
cq=1
l1=.true.
l2=.true.
bl4=.true.
l8=.true.
!$omp atomic update
i1=i1+1
!$omp end atomic
!$omp atomic update
i2=i2+1
!$omp end atomic
!$omp atomic update
i4=i4+1
!$omp end atomic
!$omp atomic update
i8=i8+1
!$omp end atomic
!$omp atomic update
r=r+1
!$omp end atomic
!$omp atomic update
d=d+1
!$omp end atomic
!$omp atomic update
q=q+1
!$omp end atomic
!$omp atomic update
c=c+(1,1)
!$omp end atomic
!$omp atomic update
cd=cd+(1,1)
!$omp end atomic
!$omp atomic update
cq=cq+(1,1)
!$omp end atomic
!$omp atomic update
l1=l1.eqv..true.
!$omp end atomic
!$omp atomic update
l2=l2.eqv..true.
!$omp end atomic
!$omp atomic update
l8=l8.eqv..true.
!$omp end atomic
!$omp barrier
!$omp single
if( i1 /= 2)  print  *,'s13 NG i1 = ', i1
if( i2 /= 2)  print  *,'s13 NG i4 = ', i2
if( i4 /= 2)  print  *,'s13 NG i4 = ', i4
if( i8 /= 2)  print  *,'s13 NG i8 = ', i8
if( r /= 2)  print  *,'s13 NG r = ', r
if( d /= 2)  print  *,'s13 NG d = ', d
if( q /= 2)  print  *,'s13 NG q = ', q
if( c /= (2,1))  print  *,'s13 NG c = ', c
if( cd /= (2,1))  print  *,'s13 NG cd = ', cd
if( cq /= (2,1))  print  *,'s13 NG cq = ', cq
if( l1 .NEQV. .true.)  print  *,'s13 NG l1 = ', l1
if( l2 .NEQV. .true.)  print  *,'s13 NG l2 = ', l2
if( l8 .NEQV. .true.)  print  *,'s13 NG l8 = ', l8
!$omp end single
end
subroutine s14
integer(1)::i1
integer(2)::i2
integer(4)::i4
integer(8)::i8
real(4)::r
real(8)::d
real(16)::q
complex(4)::c
complex(8)::cd
complex(16)::cq
logical(1)::l1
logical(2)::l2
logical(4)::l4
logical(8)::bl8
i1=1
i2=1
i4=1
i8=1
r=1
d=1
q=1
c=1
cd=1
cq=1
l1=.true.
l2=.true.
l4=.true.
bl8=.true.
!$omp atomic update
i1=i1+1
!$omp end atomic
!$omp atomic update
i2=i2+1
!$omp end atomic
!$omp atomic update
i4=i4+1
!$omp end atomic
!$omp atomic update
i8=i8+1
!$omp end atomic
!$omp atomic update
r=r+1
!$omp end atomic
!$omp atomic update
d=d+1
!$omp end atomic
!$omp atomic update
q=q+1
!$omp end atomic
!$omp atomic update
c=c+(1,1)
!$omp end atomic
!$omp atomic update
cd=cd+(1,1)
!$omp end atomic
!$omp atomic update
cq=cq+(1,1)
!$omp atomic update
l1=l1.eqv..true.
!$omp end atomic
!$omp atomic update
l2=l2.eqv..true.
!$omp end atomic
!$omp atomic update
l4=l4.eqv..true.
!$omp end atomic
!$omp barrier
!$omp single
if( i1 /= 2)  print  *,'s14 NG i1 = ', i1
if( i2 /= 2)  print  *,'s14 NG i4 = ', i2
if( i4 /= 2)  print  *,'s14 NG i4 = ', i4
if( i8 /= 2)  print  *,'s14 NG i8 = ', i8
if( r /= 2)  print  *,'s14 NG r = ', r
if( d /= 2)  print  *,'s14 NG d = ', d
if( q /= 2)  print  *,'s14 NG q = ', q
if( c /= (2,1))  print  *,'s14 NG c = ', c
if( cd /= (2,1))  print  *,'s14 NG cd = ', cd
if( cq /= (2,1))  print  *,'s14 NG cq = ', cq
if( l1 .NEQV. .true.)  print  *,'s14 NG l1 = ', l1
if( l2 .NEQV. .true.)  print  *,'s14 NG l2 = ', l2
if( l4 .NEQV. .true.)  print  *,'s14 NG l4 = ', l4
!$omp end single
end



