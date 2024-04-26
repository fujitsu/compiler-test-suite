integer,pointer :: ptr(:),pp(:,:)
integer,target :: tgt(7),tgt2(4,5)
integer::check(7),chk(4,5)

tgt=2
tgt(2) = 4

tgt2=2
tgt2(2,5) = 4

ptr=>tgt
pp=>tgt2

block
integer,pointer :: ptr(:),pp(:,:)
integer,target :: tgt(7),tgt2(4,5)

tgt=44
tgt(2) = 66

tgt2=44
tgt2(2,5) = 66

ptr=>tgt
pp=>tgt2

forall(i=1:7,i/=2)
 check(i)=ptr(i)
end forall

forall(i=1:4,j=1:5,pp(i,j)==44)
 chk(i,j)=pp(i,j)
end forall

if(ptr(2) == 66) then
 check(2) = 44
else
 check(2) = 100
end if

if(pp(2,5) == 66) then
 chk(2,5) = 44
else
 chk(2,5) = 100
end if

if(any(check /= 44)) print*,101
if(any(chk /= 44)) print*,102
end block
print*,'pass'
end

