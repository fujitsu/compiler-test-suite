integer function fun()
save i;
!$omp threadprivate(i)
data i/3/

 i = i + 1
 fun = i
end

integer fun
if (fun() .ne. 4) stop "NG1"
if (fun() .ne. 5) stop "NG1"
print *,"PASS"
end

