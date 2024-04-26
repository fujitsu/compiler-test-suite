use,intrinsic:: iso_fortran_env
if(any(real_kinds([1,2,3,4])/=[2,4,8,16])) print *,'err',real_kinds([1,2,3,4])
if(any(integer_kinds([1,2,3,4])/=logical_kinds([1,2,3,4]))) print *,'err'

print *,'pass'
end program
