call test()
print *,'pass'
end
subroutine test()
integer ia,ib,ic
ia=0
ib=0
ic=0
a=10
b=1
do i=1,100
    ic=ic+1
do while (a>b)
b=10
ia=0
    ib=ib+1
do 10 j=1,100,3
    ia=ia+1
10 continue
end do
end do
if (ia.ne.34   )print *,'err'
if (ib.ne.1   )print *,'err'
if (ic.ne.100   )print *,'err'
end
