double precision d
d=4.5d12
write(1,'(1x,g10.3)')d
write(1,'(1x,e10.3)')d
rewind 1
call chk
print *,'pass'
end
subroutine chk
character*100 r
read (1,'(a)') r
if (index(r,'d')/=0 .or. index(r,'D')/=0)write(6,*) "NG"
read (1,'(a)') r
if (index(r,'d')/=0 .or. index(r,'D')/=0)write(6,*) "NG"
end
