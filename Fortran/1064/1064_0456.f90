call test02()
print *,'pass'
end

subroutine test02()
integer i,j,k
common /com02/i,j,k
assign 10 to i
goto i
10 continue
assign 20 to i
j=3
goto (40,20,30) j
20 print *,'fail'
40 print *,'fail'
30 continue
!$omp parallel private(/com02/)
!$omp single
assign 100 to i
goto i,(200,300,100)
300 print *,'fail'
200 print *,'fail'
100 continue
assign 333 to i
rewind 10
write(10,*) 1
rewind 10
read (10,*,end=333) k
333 continue
!$omp end single
!$omp end parallel
assign 1010 to i
goto i
1010 continue
assign 1020 to i
j=3
goto (1040,1020,1030) j
1020 print *,'fail'
1040 print *,'fail'
1030 continue
end subroutine
