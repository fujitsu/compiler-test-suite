class(*),allocatable::aaa(:)
integer::iii
allocate(aaa(1),mold=[1.0])
do iii=1,3
select type(aaa)
type is (real(4))
aaa = [sin(1.0)]
type is (character(*))
aaa = ['abcdefg']
type is (integer)
aaa=[100]
class default
end select
end do
print *,'pass'
 end
