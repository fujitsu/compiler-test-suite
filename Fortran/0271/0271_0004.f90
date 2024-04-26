real(kind=2)::r2_1,r2_2=0
complex(kind=2)::c2_1,c2_2=0

call sub1(r2_1,r2_2,c2_1,c2_2)
call sub2(dmy2=r2_2,dmy4=c2_2)
print*,"PASS"
contains
subroutine sub1(dmy1,dmy2,dmy3,dmy4)
real(kind=2),optional::dmy1
real(kind=2)::dmy2
complex(kind=2),optional::dmy3
complex(kind=2)::dmy4
if(present(dmy1) .eqv. .true.)then 
 dmy1=dmy2
else
  print*,"101"
endif 

if(present(dmy3) .eqv. .true.) then
 dmy3=dmy4
else
  print*,"102"
endif 

end subroutine

subroutine sub2(dmy1,dmy2,dmy3,dmy4)
real(kind=2),optional::dmy1
real(kind=2)::dmy2
complex(kind=2),optional::dmy3
complex(kind=2)::dmy4
if(present(dmy1) .neqv. .false.) print*,"201"
if(present(dmy3) .neqv. .false.) print*,"202"
dmy2= dmy4%re
end subroutine

end
