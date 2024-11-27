character (:), allocatable :: chxx_al01, chxx_al02(:)

type ty01
 character (:), allocatable :: chxx_al01, chxx_al02(:)
end type

type ty02
 type (ty01) :: tt01
end type

type ty03
 type (ty01) :: tt01(1)
end type

type (ty01) :: tt01
type (ty02) :: tt02
type (ty03) :: tt03

chxx_al01                   = 'a'
chxx_al01(1:1)              = 'b'

chxx_al02                   = 'c'
chxx_al02(1)                = 'd'
chxx_al02(1:1)              = 'e'

tt01%chxx_al01              = 'a'
tt01%chxx_al01(1:1)         = 'b'

tt01%chxx_al02              = 'c'
tt01%chxx_al02(1)           = 'd'
tt01%chxx_al02(1:1)         = 'e'

tt01                        = tt01
tt02%tt01                   = tt01

tt03%tt01                   = (/tt01/)
tt03%tt01(1)                = tt01

tt03%tt01(1)%chxx_al01      = 'a'
tt03%tt01(1)%chxx_al01(1:1) = 'a'

end
