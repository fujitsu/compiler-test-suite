program main
integer,allocatable::alc
integer::j=3
allocate(alc,source=j)
associate(a=>alc,b=>j)
 if(a/=b) print*,101
end associate

if(alc==j) print*,'pass'
end
