subroutine s1
  common /com/ k,i 
  namelist /nam/i,k
!$omp parallel shared(/com/)
  i=1
  k=1
  write(1,nam) 
!$omp end parallel 
end
call s1
call s2
print *,'pass'
end
subroutine s2
rewind 1
  namelist /nam/i,k
1continue
read(1,nam,end=10)
if (i/=1)print *,i,100
if (k/=1)print *,k,101
goto 1
10 return 
end
