call sub01()
call sub02()
call sub03()
call sub04()
print *,'pass'
end

subroutine sub04()
integer,dimension(10) :: a01,a02,a03,a04,a05
integer,dimension(10),save :: a07,a08
!$OMP threadprivate(a07)
a07=300;a08=8
a01=1;a02=2;a03=3;a04=4;a05=5
!$OMP parallel private(a02)
a01=100
a02=200
!$OMP do
do ii=1,1
a07=333
a03=300
enddo
!$OMP end do
a04=400
a05=500
!$OMP end parallel 
if (any(a01.ne.1)) print *,'err1a'
if (any(a02.ne.2)) print *,'err2a'
if (any(a03.ne.3)) print *,'err3a'
if (any(a04.ne.4)) print *,'err4a'
if (any(a05.ne.5)) print *,'err5a'
end

subroutine sub03()
integer,dimension(10) :: a01,a02,a03,a04,a05
integer,dimension(10),save :: a07,a08
!$OMP threadprivate(a07)
a07=300;a08=8
a01=1;a02=2;a03=3;a04=4;a05=5
!$OMP parallel do private(a01)
do ii=1,1
a01=100
a02=200
a07=333
a03=300
a04=400
a05=500
enddo
!$OMP end parallel do
if (any(a01.ne.1)) print *,'err1b'
if (any(a02.ne.2)) print *,'err2b'
if (any(a03.ne.3)) print *,'err3b'
if (any(a04.ne.4)) print *,'err4b'
if (any(a05.ne.5)) print *,'err5b'
end

subroutine sub02()
integer,dimension(10) :: a01,a02,a03,a04,a05
integer,dimension(10),save :: a07,a08
!$OMP threadprivate(a07)
a07=300;a08=8
a01=1;a02=2;a03=3;a04=4;a05=5
!$OMP parallel do lastprivate(a04)
do ii=1,1
a01=100
a02=200
a07=333
a03=300
a04=400
a05=500
enddo
!$OMP end parallel do
if (any(a01.ne.100)) print *,'err1c'
if (any(a02.ne.200)) print *,'err2c'
if (any(a03.ne.300)) print *,'err3c'
if (any(a04.ne.400)) print *,'err4c'
if (any(a05.ne.500)) print *,'err5c'
end

subroutine sub01()
integer,dimension(10) :: a01,a02,a03,a04,a05
integer,dimension(11) :: b01,b02,b03,b04,b05
integer,dimension(10),save :: a07,a08
!$OMP threadprivate(a07)
a07=300;a08=8
a01=1;a02=2;a03=3;a04=4;a05=5
b01=1;b02=2;b03=3;b04=4;b05=5
!$OMP parallel do firstprivate(a04) default(private)
do ii=1,1
a01=100
a02=200
a07=333
a04=400
a05=500
end do
!$OMP end parallel do
if (any(a01.ne.1)) print *,'err1e'
if (any(a02.ne.2)) print *,'err2e'
if (any(a03.ne.3)) print *,'err3e'
if (any(a04.ne.4)) print *,'err4e'
if (any(a05.ne.5)) print *,'err5e'
end
