call sub01()
print *,'pass'
end

subroutine sub01()
integer,dimension(20) :: a11,a12,a13,a14,a15
integer,dimension(10) :: a01,a02,a03,a04,a05
integer,dimension(30) :: a21,a22,a23,a24,a25
integer,dimension(40) :: a31,a32,a33,a34,a35
integer,dimension(50) :: a41,a42,a43,a44,a45
integer,dimension(60) :: a51,a52,a53,a54,a55
integer,dimension(10,2) :: vvv
common /com04/ vvv
integer,dimension(10),save :: a07,a08
!$OMP threadprivate(a07)
a07=300;a08=8
a01=1;a02=2;a03=3;a04=4;a05=5
a11=1;a12=2;a13=13;a14=4;a15=5
a21=1;a22=2;a23=23;a24=4;a25=5
a31=1;a32=2;a33=33;a34=4;a35=5
a41=1;a42=2;a43=43;a44=4;a45=5
a51=1;a52=2;a53=53;a54=4;a55=5
!$OMP parallel
a01=100 ;
a11=100 ;
a21=100 ;
a31=100 ;
a41=100 ;
a51=100 ;
a02=200
a12=200
a22=200
a32=200
a42=200
a52=200
!$OMP do private(a01,a11,a21,a31,a41,a51)
do i=1,1
a07=333
a03=300
a13=300
a23=300
a33=300
a43=300
a53=300
end do
!$OMP enddo
a04=400
a14=400
a24=400
a34=400
a44=400
a54=400
a05=500
a15=500
a25=500
a35=500
a45=500
a55=500
!$OMP end parallel 
if (any(a01.ne.100)) print *,'err1a'
if (any(a02.ne.200)) print *,'err2'
if (any(a03.ne.3)) print *,'err3'
if (any(a04.ne.400)) print *,'err4'
if (any(a05.ne.500)) print *,'err5'
if (any(a11.ne.100)) print *,'err1a'
if (any(a12.ne.200)) print *,'err2'
if (any(a13.ne.13)) print *,'err31'
if (any(a14.ne.400)) print *,'err4'
if (any(a15.ne.500)) print *,'err5'
if (any(a21.ne.100)) print *,'err1a'
if (any(a22.ne.200)) print *,'err2'
if (any(a23.ne.23)) print *,'err32'
if (any(a24.ne.400)) print *,'err4'
if (any(a25.ne.500)) print *,'err5'
if (any(a31.ne.100)) print *,'err1a'
if (any(a32.ne.200)) print *,'err2'
if (any(a33.ne.33)) print *,'err33'
if (any(a34.ne.400)) print *,'err4'
if (any(a35.ne.500)) print *,'err5'
if (any(a41.ne.100)) print *,'err1a'
if (any(a42.ne.200)) print *,'err2'
if (any(a43.ne.43)) print *,'err34'
if (any(a44.ne.400)) print *,'err4'
if (any(a45.ne.500)) print *,'err5'
if (any(a51.Ne.100)) print *,'err1a'
if (any(a52.ne.200)) print *,'err2'
if (any(a53.ne.53)) print *,'err35'
if (any(a54.ne.400)) print *,'err4'
if (any(a55.ne.500)) print *,'err5'
end
