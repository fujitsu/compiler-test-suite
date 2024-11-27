character*40 r
r='123abc4567abc890abcde'
if (index(r,'abc')/=4)write(6,*) "NG"
if (index(r,'abc',.true.)/=17)write(6,*) "NG"
print *,'pass'
end
