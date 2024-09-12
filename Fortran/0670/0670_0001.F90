program test
#define test(y) #y
#ifdef fortran
write(6,*) 'test print'
#endif
integer i(100)
/* \\\*/
i(01)=1
i(02)=1
/* \\\*/
i(03)=1
/* \\\*/
i(04)=1
/* \\\*/
i(05)=1
/* \\\*/
i(06)=1
/* \*/
i(07)=1
i(08)=1
/* \*/
i(09)=1
/* \\\*/
i(10)=1
/* \*/
i(11)=1
/* \*/
i(12)=1
if (any(i(:12)/=1))write(6,*)'error',i(:12)
print *,'pass'
end 
