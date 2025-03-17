 integer(1) a2
 parameter (a2 = ishftc(3_1,2_1,3_1))
 if (a2/=ishftc(3_1,2_1,3_1))write(6,*) "NG"
print *,'pass'
end
