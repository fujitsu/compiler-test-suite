intrinsic :: iabs
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

 pp2=>iabs
 pp5=>iabs
 pp6=>iabs
 pp7=>iabs
 pp8=>iabs
 pp9=>iabs
 pp10=>iabs
 pp12=>iabs
 pp13=>iabs
 call sub0()
 contains

 subroutine sub0()
 irr2=pp2(2)
 irr5=pp5(5)
 irr6=pp6(6)
 irr7=pp7(7)
 irr8=pp8(8)
 irr9=pp9(9)
 irr10=pp10(1)
 irr12=pp12(3)
 irr13=pp13(4)

if (irr2.ne.2.e0) print *,'fail'
if (irr5.ne.5.e0) print *,'fail'
if (irr6.ne.6.e0) print *,'fail'
if (irr7.ne.7.e0) print *,'fail'
if (irr8.ne.8.e0) print *,'fail'
if (irr9.ne.9.e0) print *,'fail'
if (irr10.ne.1.e0) print *,'fail'
if (irr12.ne.3.e0) print *,'fail'
if (irr13.ne.4.e0) print *,'fail'
print *,"pass"
end subroutine
end

subroutine pp1()
endsubroutine


