type ::str
 character(:),allocatable:: i(:)
end type
type(str):: sss
sss = str( (/"abcde"/))
if (any(sss%i/="abcde"))print *,'error'
print *,'pass'
end
