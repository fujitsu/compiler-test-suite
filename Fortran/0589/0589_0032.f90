integer, target :: trg(10)
integer::i=100,arr(10)
arr = [1,2,3,4,5,6,7,8,9,10]
f(trg(1:5))=arr(1:5)
do i=1,5
if(trg(i) /= arr(i)) print *,trg(i)
end do
print *,"Pass"
contains
        function f(d)
        integer, pointer::f(:)
        integer, target ::d(:)
        f=>d
        end
end
