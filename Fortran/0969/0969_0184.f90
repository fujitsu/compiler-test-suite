intrinsic :: index

procedure(integer(kind=4)), pointer :: pp1
procedure(index),           pointer :: pp2

pp1 => index
pp2 => index

print *,pp1('12345','3')
print *,pp2('12345','3')
print *,index('12345','3')

end

