interface
 function   func01()  result(rst1) bind(c)
 end function
 function   func02()  result(rst2) bind(c, name = 'bind_prc01')
 end function
end interface

procedure(func01),  bind(c), pointer :: func1_bindc_ptr1

func1_bindc_ptr1 => func02
if (abs(func1_bindc_ptr1()-2.0)>0.01)print *,'error-1'
if (abs(func02()-2.0)>0.01)print *,'error-2'
print *,'pass'
end

function func01()     result(rst1) bind(c)
 rst1 = 1.0
end function

function func02()     result(rst2) bind(c, name = 'bind_prc01')
 rst2 = 2.0
end function
