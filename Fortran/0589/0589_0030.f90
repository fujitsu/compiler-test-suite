real, target::trg(5),ttrg(5),fin(5)
ttrg=(/1.0,2.0,3.0,4.0,5.0/)
trg=(/1.0,2.0,3.0,4.0,5.0/)
fin=(/11.0,12.0,13.0,14.0,15.0/)
do i=1,5
if(trg(i) /= ttrg(i))print *,trg
end do
f()=(/11.0,12.0,13.0,14.0,15.0/)
do i=1,5
if(trg(i) /= fin(i))print*,trg
end do
print*,"Pass"
contains
        function f()
        real, pointer::f(:)
        f=>trg
        end function
end
