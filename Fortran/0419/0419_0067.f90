integer,allocatable::i(:)
allocate(i(5))
do j=1,5
i(j)=j
end do
if(any(i/=[1,2,3,4,5])) print *,'err'
print *,'pass'
end
