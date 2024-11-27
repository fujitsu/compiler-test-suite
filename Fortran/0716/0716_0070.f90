character        :: s1,s2,s3
character(len=4) :: s4

s1 = 'a'
s2 = 'b'
s3 = 'c'
s4 = 'abc'

print *,(/s1,(/s1,s2,s3,s4/),s3/)
print *,(/character(len=4) :: s1,(/s1,s2,s3,s4/),s3/)

print *,(/s1,(/s4,s4,s4,s4/),s3/)
print *,(/character(len=4) :: s1,(/s4,s4,s4,s4/),s3/)

end
