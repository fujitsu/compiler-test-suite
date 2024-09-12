character(10),parameter :: cha = "abcde"
character(:)::ppp,qqq
pointer::ppp
allocatable::qqq
allocate(character(len(cha))::ppp)
allocate(character(len(cha))::qqq)
print *,len(ppp)
print *,len(qqq)
ppp = "12345"
qqq = "1234567"
if ( len(ppp) .ne. len(cha) )  print *,'ng1'
if ( len(qqq) .ne. 7 )  print *,'ng2'
print *,len(ppp)
print *,len(cha)
print *,'pass'
end
