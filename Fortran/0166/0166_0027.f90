print *,'pass'
if (cfun().ne.(1.0,2.0)) print *,'err'
contains
complex function cfun()
cfun%im =2.0
cfun%re =1.0
end function
end
