abstract interface
        function fun(trg)
        integer,pointer :: fun(:,:,:)
        integer,target :: trg(:,:,:)
        end function
end interface
integer,target::aa(2,2,3)=100,bb(3,2,2)=1000
procedure(fun)::f1,f2
f1(aa)=10
if (all(aa /= 10)) print *,101
f2(bb)=999
if (all(bb /= 999)) print *,102
print *,"Pass"
end

function f1(trg)
integer,pointer::f1(:,:,:)
integer,target::trg(:,:,:)
f1=>trg
end function
function f2(trg1)
integer,pointer::f2(:,:,:)
integer,target::trg1(:,:,:)
f2=>trg1
end function
