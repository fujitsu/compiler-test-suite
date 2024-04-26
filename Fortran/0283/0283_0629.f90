character(len = 5) :: chr(5) = 'x'

i = 1
chr(2) = 'aaaaa'
chr(3) = 'bbbbb'

associate(aa=>chr(i+1)(i+1:))
i = i+1
SELECT CASE(aa)
  CASE('aaaa')
  PRINT*,'pass'
END SELECT
end associate

end
