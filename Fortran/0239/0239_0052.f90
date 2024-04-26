subroutine s1

k2=2;k3=3;k4=4
associate(a=> '1234')
 if (a(k2:k4)/='234') print *,201
 if (a( 2: 4)/='234') print *,202
end associate
associate(a=> '1234'(k2:k4))
 if (a(k2:k3)/='34') print *,301
 if (a( 2: 3)/='34') print *,302
end associate

end

call s1
print *,'pass'
end
