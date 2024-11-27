type ty01
 integer, allocatable :: act
end type

type ty02
 integer, pointer :: act
end type

type(ty01) :: tt01a
type(ty01) :: tt01b

type(ty02) :: tt02a
type(ty02) :: tt02b

integer, allocatable :: act

allocate(act,       source = act)
allocate(act,       source = tt01a%act)
allocate(act,       source = tt01b%act)
allocate(act,       source = tt02a%act)
allocate(act,       source = tt02b%act)

allocate(tt01a%act, source = act)
allocate(tt01a%act, source = tt01a%act)
allocate(tt01a%act, source = tt01b%act)
allocate(tt01a%act, source = tt02a%act)
allocate(tt01a%act, source = tt02b%act)

allocate(tt01b%act, source = act)
allocate(tt01b%act, source = tt01a%act)
allocate(tt01b%act, source = tt01b%act)
allocate(tt01b%act, source = tt02a%act)
allocate(tt01b%act, source = tt02b%act)

allocate(tt02a%act, source = act)
allocate(tt02a%act, source = tt01a%act)
allocate(tt02a%act, source = tt01b%act)
allocate(tt02a%act, source = tt02a%act)
allocate(tt02a%act, source = tt02b%act)

allocate(tt02b%act, source = act)
allocate(tt02b%act, source = tt01a%act)
allocate(tt02b%act, source = tt01b%act)
allocate(tt02b%act, source = tt02a%act)
allocate(tt02b%act, source = tt02b%act)

end
