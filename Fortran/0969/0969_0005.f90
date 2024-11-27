class(*), pointer :: a1
class(*), pointer :: a11
a1 => NULL()
a11 => NULL()
print *, extends_type_of(a1,a11)
end

