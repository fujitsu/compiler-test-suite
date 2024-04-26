character(len = 5) :: chr(5)

i = 2
chr(2) = 'aaaaa'
chr(3) = 'bbbbb'
associate(aa=>chr(i:i+i:i-1)(i:))
i = i+1
select case(aa(1))
  case('aaaa')
  print*,'pass'
end select
end associate
end
