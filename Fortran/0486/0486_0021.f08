real:: result
result = norm2 ( [ 3.0, 4.0] ) 

if (abs(result-5.) > 0.000001)print *,101
print *,'pass'
end
