common /aaa/ y
integer,pointer::y
integer,target ::x=100
!$OMP threadprivate(/aaa/)
y=>x
if (y/=100)print *,'error' 
print *,'pass'
end
