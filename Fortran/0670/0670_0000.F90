program test
#define test(y) #y
#ifdef fortran
write(6,*) 'test print'
#endif
print *,'pass'
end 
