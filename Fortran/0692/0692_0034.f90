program main
  integer(kind=1),target :: ti1 = 1
  type strint
    integer(kind=1),pointer :: pi1
  end type
  type (strint),pointer :: psi
  allocate(psi)
  psi = strint(null())
print *,'pass'
end
