integer,pointer :: a(:),aa
integer,target  :: t(10),tt
data a /t/
data aa /tt/
a(1:10)=>t
print *,'pass'
end
