module mod0
intrinsic iabs
integer,external :: pp1
integer,external,pointer :: pp2
integer,external ::pp3
pointer :: pp3
external ::pp4
integer,pointer :: pp4
integer,pointer :: pp5
external :: pp5
pointer :: pp6
integer,external :: pp6
 external ::pp7
 pointer :: pp7
 integer :: pp7
 pointer ::pp8
 external :: pp8
 integer :: pp8
 integer :: pp9                   
 pointer ::pp9
 external :: pp9
 integer :: pp10                   
 external :: pp10
 pointer ::pp10
 external :: pp11                  
 integer :: pp11
 pointer ::pp11
 pointer ::pp12
 integer :: pp12                   
 external :: pp12
 procedure(integer),pointer::pp13
end module
 use mod0
 pp2=>iabs
 pp5=>iabs
 pp6=>iabs
 pp7=>iabs
 pp8=>iabs
 pp9=>iabs
 pp10=>iabs
 pp12=>iabs
 pp13=>iabs

 rr2=iabs(2)
 rr5=iabs(5)
 rr6=iabs(6)
 rr7=iabs(7)
 rr8=iabs(8)
 rr9=iabs(9)
 rr10=iabs(1)
 rr12=iabs(3)
 rr13=iabs(4)

if (rr2.ne.2.e0) print *,'fail'
if (rr5.ne.5.e0) print *,'fail'
if (rr6.ne.6.e0) print *,'fail'
if (rr7.ne.7.e0) print *,'fail'
if (rr8.ne.8.e0) print *,'fail'
if (rr9.ne.9.e0) print *,'fail'
if (rr10.ne.1.e0) print *,'fail'
if (rr12.ne.3.e0) print *,'fail'
if (rr13.ne.4.e0) print *,'fail'

print *,"pass"
end

function pp1()
pp1=1
end
