integer a(6000*400), b(6000*400)
a=1
where(a>0)
   b=[a]
b=[a**1]
end where
if(b(6000*400)/=1) print *,'err1'
print *,'pass'
end
