integer array(10)
VOLATILE :: array
array=1
if (any(array/=1))write(6,*) "NG"
print *,'pass'
end
