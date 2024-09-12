REAL,PARAMETER:: RE=1.0 , IM=2.0
COMPLEX :: VAR
VAR=(RE,IM)
if (abs(VAR-(1,2))>0.0001)print *,'error'
print *,'pass'
end
