character(len=10),pointer :: p_arr(:,:),p_arr2(:,:)
character(len=10),target :: arr(5,10),arr2(5,10)

   arr(:,:) = 'xxxxx'

   arr2(:,:) = 'yyyyy'

p_arr => arr
p_arr2=> arr2
associate(aa=>p_arr//p_arr2)
associate(bb=>aa(2,2)(:3))
 if(bb=='xxx')print *,'pass'
print*,bb
end associate
end associate

end
