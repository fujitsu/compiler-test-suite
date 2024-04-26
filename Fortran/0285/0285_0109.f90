integer,pointer :: p_arr(:,:),p_arr2(:,:)
integer,target :: arr(5,10),arr2(5,10)

   arr(:,:) = 1

   arr2(:,:) = 2

p_arr => arr
p_arr2=> arr2
associate(aa=>p_arr+p_arr2)
associate(bb=>aa(2,3))
 if(bb==3)print *,'pass'
 print*,bb
end associate
end associate

end
