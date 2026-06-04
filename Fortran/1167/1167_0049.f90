integer::kk=2
associate(k=>kk)
  block 
    dimension::a(k)
    target   ::b(k)
    !common   ::c(k)
    dimension::c(k),d(k:k,k:k)
    target   ::e(k),f(k:k,k:k)
    if (size(a)/=2) print *,2020
    if (size(b)/=2) print *,2021
    if (size(c)/=2) print *,2022
    if (size(d)/=1) print *,2023
    if (size(e)/=2) print *,2024
    if (size(f)/=1) print *,2025
  end block
end associate
print *,'sngg977q : pass'
end
