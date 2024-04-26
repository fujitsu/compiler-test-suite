character(len = 5) :: chr(5,5)

i = 1
j =2
chr(2,2) = 'aaaaa'
chr(3,3) = 'bbbbb'
associate(aa=>chr(j:,:)(:))
i = i-1
j = j-1
select case(aa(2,3))
  case('bbbbb') 
  print*,'pass'
end select
end associate
end
