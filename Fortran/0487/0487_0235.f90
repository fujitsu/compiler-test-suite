integer,pointer::p1=>null()
integer,pointer::p2
data p2/null()/
!$omp threadprivate (p1)
!$omp threadprivate (p2)

if (associated(p1)) print *,101,loc(p1)
if (associated(p2)) print *,102,loc(p2)

print *,'pass'
end
