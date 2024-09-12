#define d 23
#define d01 23
#define w 45
#define w01 67
a=1e01
b=1e+01
if (abs(a-10)>0.0001)print *,'error-1'
if (abs(b-10)>0.0001)print *,'error-2'
x=1d01
y=1d+01
if (abs(x-10)>0.0001)print *,'error-3'
if (abs(y-10)>0.0001)print *,'error-4'

r=1w01
t=1w+01
if (abs(r-167)>0.0001)print *,'error-5'
if (abs(t-145-01)>0.0001)print *,'error-6'
print *,'pass'
end
