integer, target::trg=100
f(50,trg)=10000
if(trg /=10000)print *,101
print *,"Pass"
contains
        function f(d,dtrg)
        integer, pointer::f
        integer, target ::dtrg
        integer,optional::d
        if(.not.present(d))print *,102
        f=>dtrg
        end
end 
