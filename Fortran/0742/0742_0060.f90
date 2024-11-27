MODULE degree_trig
  PRIVATE
  DOUBLE PRECISION,PARAMETER :: pi_d = 3.14159265358979323846264338327d0
  REAL,PARAMETER :: pi_r = 3.14159265358979323846264338327
  INTERFACE cosd
    MODULE PROCEDURE cosd_single,cosd_double
  END INTERFACE
  PUBLIC cosd
CONTAINS
  ELEMENTAL DOUBLE PRECISION FUNCTION cosd_double(x)
    DOUBLE PRECISION,INTENT(IN) :: x
    cosd_double = cos(x*(pi_d/180))
  END FUNCTION
  ELEMENTAL REAL FUNCTION cosd_single(x)
    REAL,INTENT(IN) :: x
    cosd_single = cos(x*(pi_r/180))
  END FUNCTION
END
use degree_trig
real(4)::a1,a2(3)
real(8)::b1,b2(3)
a1=0.123
a2=(/0.123,1.123,2.123/)
b1=3.123_8
b2=(/4.123_8,5.123_8,6.123_8/)
if (abs(cosd(a1)-0.999997675)>0.00001)write(6,*) "NG"
if (any(abs(cosd(a2)-(/0.999997675,0.999807954,0.999313593/))>0.00001))write(6,*) "NG"
if (abs(cosd(b1)-0.9985148812465212_8)>0.0000000001_8)write(6,*) "NG"
if (any(abs(cosd(b2)-(/0.9974120016529694_8,0.9960053007015670_8,0.9942952068870511_8/))>0.0000000001_8))write(6,*) "NG"
print *,'pass'
end
