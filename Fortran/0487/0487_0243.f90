write(1,f()) 1
write(1,p()) 2
rewind 1
read(1,*) k
if (k/=1) print *,101
read(1,*) k
if (k/=2) print *,103
print *,'pass'
contains
function f() result(r)
character*100 r
r='(i4)'
end
function p() result(r)
character*100,pointer:: r
allocate(r)
r='(i4)'
end
end
