subroutine s1
associate(p=>'12345'(3:))
if (p(2:3)/='45') print *,502,p(2:3)
end associate
end

call s1
print *,'pass'
end
