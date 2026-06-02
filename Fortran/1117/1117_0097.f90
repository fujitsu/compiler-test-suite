call test01()
call test02()
call test03()
call test04()
call test05()
call test06()
call test07()
call test08()
call test09()
print *,'pass'
end
subroutine test01()
i=1
j=2
!$omp PARALLEL DEFAULT(private)
i=10
j=20
if (i.ne.10) print *,"fail"
if (j.ne.20) print *,"fail"
!$omp END PARALLEL
if (i.ne.1) print *,"fail"
if (j.ne.2) print *,"fail"
end

subroutine test02()
i=1
j=2
!$omp PARALLEL private(i,j)
i=10
j=20
if (i.ne.10) print *,"fail"
if (j.ne.20) print *,"fail"
!$omp END PARALLEL
if (i.ne.1) print *,"fail"
if (j.ne.2) print *,"fail"
end

subroutine test03()
common /com03/ i,j
i=1
j=2
!$omp PARALLEL private(/com03/)
i=10
j=20
if (i.ne.10) print *,"fail"
if (j.ne.20) print *,"fail"
!$omp END PARALLEL
if (i.ne.1) print *,"fail"
if (j.ne.2) print *,"fail"
end

subroutine test04()
integer i(10),j(10)
i=1
j=2
!$omp PARALLEL DEFAULT(private)
i=10
j=20
if (i(1).ne.10) print *,"fail"
if (j(1).ne.20) print *,"fail"
!$omp END PARALLEL
if (i(1).ne.1) print *,"fail"
if (j(1).ne.2) print *,"fail"
end

subroutine test05()
integer i(10),j(10)
i=1
j=2
!$omp PARALLEL private(i,j)
i=10
j=20
if (i(1).ne.10) print *,"fail"
if (j(1).ne.20) print *,"fail"
!$omp END PARALLEL
if (i(1).ne.1) print *,"fail"
if (j(1).ne.2) print *,"fail"
end

subroutine test06()
integer i(10),j(10)
common /com06/ i,j
i=1
j=2
!$omp PARALLEL private(/com06/)
i=10
j=20
if (i(1).ne.10) print *,"fail"
if (j(1).ne.20) print *,"fail"
!$omp END PARALLEL
if (i(1).ne.1) print *,"fail"
if (j(1).ne.2) print *,"fail"
end

subroutine test07()
character*10 i,j
i='abcdefffff'
j='1234567890'
!$omp PARALLEL DEFAULT(private)
i='xxxxxxxxxx'
j='vvvvvvvvvv'
if (i(1:2).ne.'xx') print *,"fail"
if (j(1:2).ne.'vv') print *,"fail"
!$omp END PARALLEL
if (i(1:2).ne.'ab') print *,"fail"
if (j(1:2).ne.'12') print *,"fail"
end

subroutine test08()
character*10 i,j
i='abcdefffff'
j='1234567890'
!$omp PARALLEL private(i,j)
i='xxxxxxxxxx'
j='vvvvvvvvvv'
if (i(1:2).ne.'xx') print *,"fail"
if (j(1:2).ne.'vv') print *,"fail"
!$omp END PARALLEL
if (i(1:2).ne.'ab') print *,"fail"
if (j(1:2).ne.'12') print *,"fail"
end

subroutine test09()
common /com09/ i,j
character*10 i,j
i='abcdefffff'
j='1234567890'
!$omp PARALLEL private(/com09/)
i='xxxxxxxxxx'
j='vvvvvvvvvv'
if (i(1:2).ne.'xx') print *,"fail"
if (j(1:2).ne.'vv') print *,"fail"
!$omp END PARALLEL
if (i(1:2).ne.'ab') print *,"fail"
if (j(1:2).ne.'12') print *,"fail"
end
