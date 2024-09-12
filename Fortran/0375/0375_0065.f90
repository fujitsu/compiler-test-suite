 module m1
   use,intrinsic::iso_c_binding
 end
 use m1
 common /a4/ i
   bind(c,name='AbC')::/a4/
print *,'pass'
end
