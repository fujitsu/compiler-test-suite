use iso_c_binding
enum,bind(c)
enumerator::a_d,b_d=1_1
enumerator::o_d=9_2**1,c_d=99_8
enumerator l_d
end enum
do concurrent(i=b_d:b_d,logical(1.eq.1))
end do
do concurrent(i=b_d:b_d,o_d<c_d)
if(c_sizeof(a_d)/=sizeof(a_d)) print *,'err1'
if(c_sizeof(b_d)/=sizeof(b_d)) print *,'err2'
if(c_sizeof(o_d)/=sizeof(o_d)) print *,'err3'
if(c_sizeof(c_d)/=sizeof(c_d)) print *,'err4'
if(c_sizeof(l_d)/=sizeof(l_d)) print *,'err5'
end do
print *,'pass'
end


