integer ,target,save :: t1=1
type ty1
 integer,pointer :: ii=>t1
end type
type(ty1),pointer:: i12d
allocate(i12d) 
if (i12d%ii.ne.t1) print *,'err'
print *,'pass'
end
