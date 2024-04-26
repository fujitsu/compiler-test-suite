 type(double precision) function f4()
         f4=200.5_8
 end function
 type(double precision)  f4
 if (f4()/=200.5_8) print *,101
print *,'PASS'
end
