 integer(2) a2
 parameter (a2 = ishftc(3_2,2_2,3_2))
 if (a2/=ishftc(3_2,2_2,3_2))write(6,*) "NG"
print *,'pass'
end
