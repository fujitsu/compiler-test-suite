character(len = 5) :: chr(5,5)

i = 2
j = 2
chr(2,2) = 'aaaaa'
chr(3,3) = 'bbbbb'

associate(aa=>chr(i+1,int(j)+1)(i-1:int(j)+2))
i = i+1
j = j+1
select case(aa)
  case ('bbbb')
  print*,'pass'
end select
end associate
end
