#define e eeee
#define d dddd
#define q qqqq
#define x xxxx
#define e01 eeee
#define d01 dddd
#define q01 qqqq
#define x xxxx
#define n k
#define y 9
#define y01 999
parameter (n=4)

eeee=4
dddd=4
qqqq=4
xxxx=4
write(2,*)1e01,e
write(2,*)1e+01,e
write(2,*)1.e01,e
write(2,*)1.e+01,e
write(2,*)1.0e01,e
write(2,*)1.0e+01,e
write(2,*).1e01,e
write(2,*).1e+01,e
write(2,*)1e01_n,e
write(2,*)1e+01_n,e
write(2,*)1.e01_n,e
write(2,*)1.e+01_n,e
write(2,*)1.0e01_n,e
write(2,*)1.0e+01_n,e
write(2,*).1e01_n,e
write(2,*).1e+01_n,e



call chk
print *,'pass'
end
subroutine chk
rewind 2
read(2,*) a,b;if (any(abs((/a,b/)-(/10,4/))>0.0001))print *,'error-01'
read(2,*) a,b;if (any(abs((/a,b/)-(/10,4/))>0.0001))print *,'error-02'
read(2,*) a,b;if (any(abs((/a,b/)-(/10,4/))>0.0001))print *,'error-03'
read(2,*) a,b;if (any(abs((/a,b/)-(/10,4/))>0.0001))print *,'error-04'
read(2,*) a,b;if (any(abs((/a,b/)-(/10,4/))>0.0001))print *,'error-05'
read(2,*) a,b;if (any(abs((/a,b/)-(/10,4/))>0.0001))print *,'error-06'
read(2,*) a,b;if (any(abs((/a,b/)-(/1 ,4/))>0.0001))print *,'error-07'
read(2,*) a,b;if (any(abs((/a,b/)-(/1 ,4/))>0.0001))print *,'error-08'
read(2,*) a,b;if (any(abs((/a,b/)-(/10,4/))>0.0001))print *,'error-09'
read(2,*) a,b;if (any(abs((/a,b/)-(/10,4/))>0.0001))print *,'error-10'
read(2,*) a,b;if (any(abs((/a,b/)-(/10,4/))>0.0001))print *,'error-11'
read(2,*) a,b;if (any(abs((/a,b/)-(/10,4/))>0.0001))print *,'error-12'
read(2,*) a,b;if (any(abs((/a,b/)-(/10,4/))>0.0001))print *,'error-13'
read(2,*) a,b;if (any(abs((/a,b/)-(/10,4/))>0.0001))print *,'error-14'
read(2,*) a,b;if (any(abs((/a,b/)-(/1 ,4/))>0.0001))print *,'error-15'
read(2,*) a,b;if (any(abs((/a,b/)-(/1 ,4/))>0.0001))print *,'error-16'
end
