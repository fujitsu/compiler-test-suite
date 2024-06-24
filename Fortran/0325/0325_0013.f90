call sub01()
call sub02()
call sub03()
call sub04()
print *,'pass'
end

subroutine sub04()
integer,dimension(10) :: a01,a02,a03,a04,a05
a01=1;a02=2;a03=3;a04=4;a05=5
!$OMP parallel do default(shared)
do i=1,1
a01=100
a02=200
!$OMP parallel default(private)
a03=300
!$OMP end parallel
a04=400
a05=500
end do
!$OMP end parallel do
if (any(a01.ne.100)) print *,'err1'
if (any(a02.ne.200)) print *,'err2'
if (any(a03.ne.3)) print *,'err3'
if (any(a04.ne.400)) print *,'err4'
if (any(a05.ne.500)) print *,'err5'
end

subroutine sub03()
integer,dimension(10) :: a01,a02,a03,a04,a05
a01=1;a02=2;a03=3;a04=4;a05=5
!$OMP parallel do
do i=1,1
a01=100
a02=200
!$OMP parallel default(private)
a03=300
!$OMP end parallel
a04=400
a05=500
end do
!$OMP end parallel do
if (any(a01.ne.100)) print *,'err1'
if (any(a02.ne.200)) print *,'err2'
if (any(a03.ne.3)) print *,'err3'
if (any(a04.ne.400)) print *,'err4'
if (any(a05.ne.500)) print *,'err5'
end

subroutine sub01()
integer,dimension(10) :: a01,a02,a03,a04,a05
a01=1;a02=2;a03=3;a04=4;a05=5
!$OMP parallel do shared(a01,a02) 
do i=1,1
a01=100
a02=200
!$OMP parallel default(private)
a03=300
!$OMP end parallel
a04=400
a05=500
end do
!$OMP end parallel do
if (any(a01.ne.100)) print *,'err1'
if (any(a02.ne.200)) print *,'err2'
if (any(a03.ne.3)) print *,'err3'
if (any(a04.ne.400)) print *,'err4'
if (any(a05.ne.500)) print *,'err5'
end
subroutine sub02()
integer,dimension(10) :: a01,a02,a03,a04,a05
a01=1;a02=2;a03=3;a04=4;a05=5
!$OMP parallel do lastprivate(a03)
do i=1,1
a01=100
a02=200
a03=300
!$OMP parallel
a04=400
!$OMP end parallel
a05=500
end do
!$OMP end parallel do
if (any(a01.ne.100)) print *,'err1'
if (any(a02.ne.200)) print *,'err2'
if (any(a03.ne.300)) print *,'err3'
if (any(a04.ne.400)) print *,'err4'
if (any(a05.ne.500)) print *,'err5'
end