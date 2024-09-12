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
#define y01_n 1
parameter (n=4)

eeee=4
dddd=4
qqqq=4
xxxx=4

write(1,*)1y01,x
write(1,*)1y+01,x
write(1,*)1.y01,x
write(1,*)1.y+01,x
write(1,*)1.0y01,x
write(1,*)1.0y+01,x
write(1,*).1y01,x
write(1,*).1y+01,x
write(1,*)1y01_n,x
write(1,*)1y+01_n,x
write(1,*)1.y01_n,x
write(1,*)1.y+01_n,x
write(1,*)1.0y01_n,x
write(1,*)1.0y+01_n,x
write(1,*).1y01_n,x
write(1,*).1y+01_n,x

call chk
print *,'pass'
end
subroutine chk
rewind 1
read(1,*) a,b;if (any(abs((/a,b/)-(/1999,4/))>0.0001))print *,'error-01'
read(1,*) a,b;if (any(abs((/a,b/)-(/20,4/))>0.0001))print *,'error-02'
read(1,*) a,b;if (any(abs((/a,b/)-(/1.999,4./))>0.0001))print *,'error-03'
read(1,*) a,b;if (any(abs((/a,b/)-(/2.9,4./))>0.0001))print *,'error-04'
read(1,*) a,b;if (any(abs((/a,b/)-(/1.0999,4./))>0.0001))print *,'error-05'
read(1,*) a,b;if (any(abs((/a,b/)-(/2.0900001,4./))>0.0001))print *,'error-06'
read(1,*) a,b;if (any(abs((/a,b/)-(/.1999 ,4./))>0.0001))print *,'error-07'
read(1,*) a,b;if (any(abs((/a,b/)-(/1.19 ,4./))>0.0001))print *,'error-08'
read(1,*) a,b;if (any(abs((/a,b/)-(/11,4/))>0.0001))print *,'error-09'
read(1,*) a,b;if (any(abs((/a,b/)-(/20,4/))>0.0001))print *,'error-10'
read(1,*) a,b;if (any(abs((/a,b/)-(/1.1,4./))>0.0001))print *,'error-11'
read(1,*) a,b;if (any(abs((/a,b/)-(/2.9,4./))>0.0001))print *,'error-12'
read(1,*) a,b;if (any(abs((/a,b/)-(/1.01,4./))>0.0001))print *,'error-13'
read(1,*) a,b;if (any(abs((/a,b/)-(/2.0900001,4./))>0.0001))print *,'error-14'
read(1,*) a,b;if (any(abs((/a,b/)-(/.11 ,4./))>0.0001))print *,'error-15'
read(1,*) a,b;if (any(abs((/a,b/)-(/1.19 ,4./))>0.0001))print *,'error-16'
end
