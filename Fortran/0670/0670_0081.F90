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
#define _n  1
#define d01_n  gggg
parameter (n=4)

eeee=4
dddd=4
qqqq=4
xxxx=4

write(3,*)1d01,d
write(3,*)1d+01,d
write(3,*)1.d01,d
write(3,*)1.d+01,d
write(3,*)1.0d01,d
write(3,*)1.0d+01,d
write(3,*).1d01,d
write(3,*).1d+01,d
write(3,*)1d01_n,d
write(3,*)1d+01_n,d
write(3,*)1.d01_n,d
write(3,*)1.d+01_n,d
write(3,*)1.0d01_n,d
write(3,*)1.0d+01_n,d
write(3,*).1d01_n,d
write(3,*).1d+01_n,d

call chk
print *,'pass'
end
subroutine chk
rewind 3
read(3,*) a,b;if (any(abs((/a,b/)-(/10,4/))>0.0001))print *,'error-01'
read(3,*) a,b;if (any(abs((/a,b/)-(/10,4/))>0.0001))print *,'error-02'
read(3,*) a,b;if (any(abs((/a,b/)-(/10,4/))>0.0001))print *,'error-03'
read(3,*) a,b;if (any(abs((/a,b/)-(/10,4/))>0.0001))print *,'error-04'
read(3,*) a,b;if (any(abs((/a,b/)-(/10,4/))>0.0001))print *,'error-05'
read(3,*) a,b;if (any(abs((/a,b/)-(/10,4/))>0.0001))print *,'error-06'
read(3,*) a,b;if (any(abs((/a,b/)-(/1.,4./))>.1))print *,'error-07'
read(3,*) a,b;if (any(abs((/a,b/)-(/1.,4./))>.1))print *,'error-08'
read(3,*) a,b;if (any(abs((/a,b/)-(/1e11,4./))>1e6))print *,'error-09'
read(3,*) a,b;if (any(abs((/a,b/)-(/1e11,4./))>1e6))print *,'error-10'
read(3,*) a,b;if (any(abs((/a,b/)-(/1e11,4./))>1e6))print *,'error-11'
read(3,*) a,b;if (any(abs((/a,b/)-(/1e11,4./))>1e6))print *,'error-12'
read(3,*) a,b;if (any(abs((/a,b/)-(/1e11,4./))>1e6))print *,'error-13'
read(3,*) a,b;if (any(abs((/a,b/)-(/1e11,4./))>1e6))print *,'error-14'
read(3,*) a,b;if (any(abs((/a,b/)-(/.1e+11 ,4./))>1e6))print *,'error-15'
read(3,*) a,b;if (any(abs((/a,b/)-(/.1e+11 ,4./))>1e6))print *,'error-16'
end
