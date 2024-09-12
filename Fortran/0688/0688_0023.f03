type t
integer a
end type
class(t),pointer::cl
class(t),pointer::zl
allocate(cl,zl)
associate(ppp=>cl)
cl%a=0
!$omp atomic read
zl%a=cl%a
end associate
print *,'pass'
end
