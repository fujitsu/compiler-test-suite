common /com/a,b,c
namelist /nlist/ a,b,c
integer:: a,b,c
pointer :: a,b,c
!$omp threadprivate(/com/)
allocate(a,b,c)
a=1;b=2;c=3
write(1,nml=nlist)
rewind 1
read(1,nlist)
if(a/=1) print *,'err1'
if(b/=2) print *,'err2'
if(c/=3) print *,'err3'
print *,'pass'
end
