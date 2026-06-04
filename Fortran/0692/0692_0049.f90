common /z/ ia(2)
!$omp threadprivate(/z/)
type x
 integer ia(2)
end type
type(x)::v
call s(v%ia)
call s(ia)
if (any(v%ia/=(/1,2/)))print *,'fail'
if (any(ia/=(/1,2/)))print *,'fail'
print *,'pass'
end
subroutine s(ia)
integer ia(2)
ia(1)=1
ia(2)=2
end
