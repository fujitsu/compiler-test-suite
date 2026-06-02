intrinsic :: abs
real,external :: pp1
real,external,pointer :: pp2
real,external ::pp3
pointer :: pp3
external ::pp4
real,pointer :: pp4
real,pointer :: pp5
external :: pp5
pointer :: pp6
real,external :: pp6
 external ::pp7
 pointer :: pp7
 real :: pp7
 pointer ::pp8
 external :: pp8
 real :: pp8
 real :: pp9                   
 pointer ::pp9
 external :: pp9
 real :: pp10                   
 external :: pp10
 pointer ::pp10
 external :: pp11                  
 real :: pp11
 pointer ::pp11
 pointer ::pp12
 real :: pp12                   
 external :: pp12
 procedure(real),pointer::pp13

 pp2=>abs
 pp3=>abs
 pp4=>abs
 pp5=>abs
 pp6=>abs
 pp7=>abs
 pp8=>abs
 pp9=>abs
 pp10=>abs
 pp11=>abs
 pp12=>abs
 pp13=>abs

 rr2=abs(2.0)
 rr3=abs(3.0)
 rr4=abs(4.0)
 rr5=abs(5.0)
 rr6=abs(6.0)
 rr7=abs(7.0)
 rr8=abs(8.0)
 rr9=abs(9.0)
 rr10=abs(1.0)
 rr11=abs(2.0)
 rr12=abs(3.0)
 rr13=abs(4.0)

if (rr2.ne.2.e0) print *,'fail'
if (rr3.ne.3.e0) print *,'fail'
if (rr4.ne.4.e0) print *,'fail'
if (rr5.ne.5.e0) print *,'fail'
if (rr6.ne.6.e0) print *,'fail'
if (rr7.ne.7.e0) print *,'fail'
if (rr8.ne.8.e0) print *,'fail'
if (rr9.ne.9.e0) print *,'fail'
if (rr10.ne.1.e0) print *,'fail'
if (rr11.ne.2.e0) print *,'fail'
if (rr12.ne.3.e0) print *,'fail'
if (rr13.ne.4.e0) print *,'fail'

print *,"pass"
end
subroutine pp1()
end subroutine
