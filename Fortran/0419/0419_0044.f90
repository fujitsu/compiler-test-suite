call s1
print *,'pass'
end
subroutine s1
class(*),allocatable::aaa
integer::iii
allocate(real::aaa)
do iii = 1, 3
select type(aaa)
type is (real)
aaa = sin(1.0)
aaa = 100.0
aaa = aaa**1
if(aaa/=100.000000) print *,'err'
type is (character(*))
aaa = 'abcdefg'
aaa = '1'
aaa = 'abc'//"123"//aaa
if(aaa/="abc12") print *,'err'
type is (integer)
aaa=100
aaa=aaa*1
aaa=aaa*aaa
if(aaa/=10000) print *,'err'
class default
end select
deallocate(aaa)
select case(iii)
case (1)
allocate(character(5)::aaa)
case (2)
allocate(integer::aaa)
end select
end do
end 
