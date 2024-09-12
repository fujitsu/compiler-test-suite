parameter (ii=2,iii=3)
integer*4 IA(10,10,10)
integer(4) i
IA=0
i=iii-ii
IA(1,1,1)=2
IA(iii-ii:10:1,iii-ii+1:10:iii-ii,1+ii:10:iii-ii)=1
print *,IA(1,1,i),IA(10,10,i)
print *,'pass'
end
