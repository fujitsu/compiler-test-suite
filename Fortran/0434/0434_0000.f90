integer,parameter:: k1=9,k2=9
integer:: a(k1,k2)
integer(1):: resi1(k1*k2+k1*k2+k1*k2+k1*k2)
integer(2):: resi2(k1*k2+k1*k2+k1*k2+k1*k2)
integer(4):: resi4(k1*k2+k1*k2+k1*k2+k1*k2)
integer(8):: resi8(k1*k2+k1*k2+k1*k2+k1*k2)
real(4):: resr4(k1*k2+k1*k2+k1*k2+k1*k2)
real(8):: resr8(k1*k2+k1*k2+k1*k2+k1*k2)
real(16):: resr16(k1*k2+k1*k2+k1*k2+k1*k2)

complex(4):: resc4(k1*k2+k1*k2+k1*k2+k1*k2)
complex(8):: resc8(k1*k2+k1*k2+k1*k2+k1*k2)
complex(16):: resc16(k1*k2+k1*k2+k1*k2+k1*k2)

a=1
resi1=[ a+1,a,a-1,a**a ] 
resi2=[ a+1,a,a-1,a**a ] 
resi4=[ a+1,a,a-1,a**a ] 
resi8=[ a+1,a,a-1,a**a ] 
resr4=[ a+1,a,a-1,a**a ] 
resr8=[ a+1,a,a-1,a**a ] 
resr16=[ a+1,a,a-1,a**a ] 
resc4=[ a+1,a,a-1,a**a ] 
resc8=[ a+1,a,a-1,a**a ] 
resc16=[ a+1,a,a-1,a**a ] 

if(resi1(81)/=2) print *,'101'
if(resi2(81)/=2) print *,'102'
if(resi4(81)/=2) print *,'103'
if(resi8(81)/=2) print *,'104'

if(resr4(81)/=2) print *,'104'
if(resr8(81)/=2) print *,'104'
if(resr16(81)/=2) print *,'104'
if(resc4(81)/=2) print *,'104'
if(resc8(81)/=2) print *,'104'
if(resc16(81)/=2) print *,'104'

print *,'pass'
end program
