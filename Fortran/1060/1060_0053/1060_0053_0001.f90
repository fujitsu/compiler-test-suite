function f1(rarg) result(rf)
complex*32 rf
 rf = DCMPLX(0.0, rarg)
 return 
entry    f2(iarg) result(rf)
 rf = DCMPLX(1.0, iarg)
end function
