	program main
	common /ans/res
	logical*4  res(14*14),func
	integer*8  x,y
	integer*8  LLONG_MIN,LLONG_MAX
	integer*8  LLONG_MIN_PLUS_1,LLONG_MIN_PLUS_2
	integer*8  LLONG_MAX_MINUS_1,LLONG_MAX_MINUS_2
	integer*8  ZERO,ONE,TWO
	integer*8  MZERO,MONE,MTWO
	integer*8  LONG_MAX,LONG_MIN
	integer*8  a,b
	parameter(LLONG_MIN=-9223372036854775807-1)
	parameter(LLONG_MAX= 9223372036854775807)
	parameter(LLONG_MIN_PLUS_1=LLONG_MIN+1)
	parameter(LLONG_MIN_PLUS_2=LLONG_MIN+2)
	parameter(LLONG_MAX_MINUS_1=LLONG_MAX-1)
	parameter(LLONG_MAX_MINUS_2=LLONG_MAX-2)
	parameter(ZERO=0)
	parameter(ONE=1)
	parameter(TWO=2)
	parameter(MZERO=-ZERO)
	parameter(MONE=-ONE)
	parameter(MTWO=-TWO)
	parameter(LONG_MAX= 2147483647)
	parameter(LONG_MIN=-LONG_MAX-1)
	func(a,b) = a.gt.b
!
	x = LLONG_MIN
	y = LLONG_MIN
	if(func(x,y).neqv.res(1)) print *,1
	x = LLONG_MIN
	y = LLONG_MAX
	if(func(x,y).neqv.res(2)) print *,2
	x = LLONG_MIN
	y = LLONG_MIN_PLUS_1
	if(func(x,y).neqv.res(3)) print *,3
	x = LLONG_MIN
	y = LLONG_MIN_PLUS_2
	if(func(x,y).neqv.res(4)) print *,4
	x = LLONG_MIN
	y = LLONG_MAX_MINUS_1
	if(func(x,y).neqv.res(5)) print *,5
	x = LLONG_MIN
	y = LLONG_MAX_MINUS_2
	if(func(x,y).neqv.res(6)) print *,6
	x = LLONG_MIN
	y = ZERO
	if(func(x,y).neqv.res(7)) print *,7
	x = LLONG_MIN
	y = ONE
	if(func(x,y).neqv.res(8)) print *,8
	x = LLONG_MIN
	y = TWO
	if(func(x,y).neqv.res(9)) print *,9
	x = LLONG_MIN
	y = MZERO
	if(func(x,y).neqv.res(10)) print *,10
	x = LLONG_MIN
	y = MONE
	if(func(x,y).neqv.res(11)) print *,11
	x = LLONG_MIN
	y = MTWO
	if(func(x,y).neqv.res(12)) print *,12
	x = LLONG_MIN
	y = LONG_MAX
	if(func(x,y).neqv.res(13)) print *,13
	x = LLONG_MIN
	y = LONG_MIN
	if(func(x,y).neqv.res(14)) print *,14
	x = LLONG_MAX
	y = LLONG_MIN
	if(func(x,y).neqv.res(15)) print *,15
	x = LLONG_MAX
	y = LLONG_MAX
	if(func(x,y).neqv.res(16)) print *,16
	x = LLONG_MAX
	y = LLONG_MIN_PLUS_1
	if(func(x,y).neqv.res(17)) print *,17
	x = LLONG_MAX
	y = LLONG_MIN_PLUS_2
	if(func(x,y).neqv.res(18)) print *,18
	x = LLONG_MAX
	y = LLONG_MAX_MINUS_1
	if(func(x,y).neqv.res(19)) print *,19
	x = LLONG_MAX
	y = LLONG_MAX_MINUS_2
	if(func(x,y).neqv.res(20)) print *,20
	x = LLONG_MAX
	y = ZERO
	if(func(x,y).neqv.res(21)) print *,21
	x = LLONG_MAX
	y = ONE
	if(func(x,y).neqv.res(22)) print *,22
	x = LLONG_MAX
	y = TWO
	if(func(x,y).neqv.res(23)) print *,23
	x = LLONG_MAX
	y = MZERO
	if(func(x,y).neqv.res(24)) print *,24
	x = LLONG_MAX
	y = MONE
	if(func(x,y).neqv.res(25)) print *,25
	x = LLONG_MAX
	y = MTWO
	if(func(x,y).neqv.res(26)) print *,26
	x = LLONG_MAX
	y = LONG_MAX
	if(func(x,y).neqv.res(27)) print *,27
	x = LLONG_MAX
	y = LONG_MIN
	if(func(x,y).neqv.res(28)) print *,28
	x = LLONG_MIN_PLUS_1
	y = LLONG_MIN
	if(func(x,y).neqv.res(29)) print *,29
	x = LLONG_MIN_PLUS_1
	y = LLONG_MAX
	if(func(x,y).neqv.res(30)) print *,30
	x = LLONG_MIN_PLUS_1
	y = LLONG_MIN_PLUS_1
	if(func(x,y).neqv.res(31)) print *,31
	x = LLONG_MIN_PLUS_1
	y = LLONG_MIN_PLUS_2
	if(func(x,y).neqv.res(32)) print *,32
	x = LLONG_MIN_PLUS_1
	y = LLONG_MAX_MINUS_1
	if(func(x,y).neqv.res(33)) print *,33
	x = LLONG_MIN_PLUS_1
	y = LLONG_MAX_MINUS_2
	if(func(x,y).neqv.res(34)) print *,34
	x = LLONG_MIN_PLUS_1
	y = ZERO
	if(func(x,y).neqv.res(35)) print *,35
	x = LLONG_MIN_PLUS_1
	y = ONE
	if(func(x,y).neqv.res(36)) print *,36
	x = LLONG_MIN_PLUS_1
	y = TWO
	if(func(x,y).neqv.res(37)) print *,37
	x = LLONG_MIN_PLUS_1
	y = MZERO
	if(func(x,y).neqv.res(38)) print *,38
	x = LLONG_MIN_PLUS_1
	y = MONE
	if(func(x,y).neqv.res(39)) print *,39
	x = LLONG_MIN_PLUS_1
	y = MTWO
	if(func(x,y).neqv.res(40)) print *,40
	x = LLONG_MIN_PLUS_1
	y = LONG_MAX
	if(func(x,y).neqv.res(41)) print *,41
	x = LLONG_MIN_PLUS_1
	y = LONG_MIN
	if(func(x,y).neqv.res(42)) print *,42
	x = LLONG_MIN_PLUS_2
	y = LLONG_MIN
	if(func(x,y).neqv.res(43)) print *,43
	x = LLONG_MIN_PLUS_2
	y = LLONG_MAX
	if(func(x,y).neqv.res(44)) print *,44
	x = LLONG_MIN_PLUS_2
	y = LLONG_MIN_PLUS_1
	if(func(x,y).neqv.res(45)) print *,45
	x = LLONG_MIN_PLUS_2
	y = LLONG_MIN_PLUS_2
	if(func(x,y).neqv.res(46)) print *,46
	x = LLONG_MIN_PLUS_2
	y = LLONG_MAX_MINUS_1
	if(func(x,y).neqv.res(47)) print *,47
	x = LLONG_MIN_PLUS_2
	y = LLONG_MAX_MINUS_2
	if(func(x,y).neqv.res(48)) print *,48
	x = LLONG_MIN_PLUS_2
	y = ZERO
	if(func(x,y).neqv.res(49)) print *,49
	x = LLONG_MIN_PLUS_2
	y = ONE
	if(func(x,y).neqv.res(50)) print *,50
	x = LLONG_MIN_PLUS_2
	y = TWO
	if(func(x,y).neqv.res(51)) print *,51
	x = LLONG_MIN_PLUS_2
	y = MZERO
	if(func(x,y).neqv.res(52)) print *,52
	x = LLONG_MIN_PLUS_2
	y = MONE
	if(func(x,y).neqv.res(53)) print *,53
	x = LLONG_MIN_PLUS_2
	y = MTWO
	if(func(x,y).neqv.res(54)) print *,54
	x = LLONG_MIN_PLUS_2
	y = LONG_MAX
	if(func(x,y).neqv.res(55)) print *,55
	x = LLONG_MIN_PLUS_2
	y = LONG_MIN
	if(func(x,y).neqv.res(56)) print *,56
	x = LLONG_MAX_MINUS_1
	y = LLONG_MIN
	if(func(x,y).neqv.res(57)) print *,57
	x = LLONG_MAX_MINUS_1
	y = LLONG_MAX
	if(func(x,y).neqv.res(58)) print *,58
	x = LLONG_MAX_MINUS_1
	y = LLONG_MIN_PLUS_1
	if(func(x,y).neqv.res(59)) print *,59
	x = LLONG_MAX_MINUS_1
	y = LLONG_MIN_PLUS_2
	if(func(x,y).neqv.res(60)) print *,60
	x = LLONG_MAX_MINUS_1
	y = LLONG_MAX_MINUS_1
	if(func(x,y).neqv.res(61)) print *,61
	x = LLONG_MAX_MINUS_1
	y = LLONG_MAX_MINUS_2
	if(func(x,y).neqv.res(62)) print *,62
	x = LLONG_MAX_MINUS_1
	y = ZERO
	if(func(x,y).neqv.res(63)) print *,63
	x = LLONG_MAX_MINUS_1
	y = ONE
	if(func(x,y).neqv.res(64)) print *,64
	x = LLONG_MAX_MINUS_1
	y = TWO
	if(func(x,y).neqv.res(65)) print *,65
	x = LLONG_MAX_MINUS_1
	y = MZERO
	if(func(x,y).neqv.res(66)) print *,66
	x = LLONG_MAX_MINUS_1
	y = MONE
	if(func(x,y).neqv.res(67)) print *,67
	x = LLONG_MAX_MINUS_1
	y = MTWO
	if(func(x,y).neqv.res(68)) print *,68
	x = LLONG_MAX_MINUS_1
	y = LONG_MAX
	if(func(x,y).neqv.res(69)) print *,69
	x = LLONG_MAX_MINUS_1
	y = LONG_MIN
	if(func(x,y).neqv.res(70)) print *,70
	x = LLONG_MAX_MINUS_2
	y = LLONG_MIN
	if(func(x,y).neqv.res(71)) print *,71
	x = LLONG_MAX_MINUS_2
	y = LLONG_MAX
	if(func(x,y).neqv.res(72)) print *,72
	x = LLONG_MAX_MINUS_2
	y = LLONG_MIN_PLUS_1
	if(func(x,y).neqv.res(73)) print *,73
	x = LLONG_MAX_MINUS_2
	y = LLONG_MIN_PLUS_2
	if(func(x,y).neqv.res(74)) print *,74
	x = LLONG_MAX_MINUS_2
	y = LLONG_MAX_MINUS_1
	if(func(x,y).neqv.res(75)) print *,75
	x = LLONG_MAX_MINUS_2
	y = LLONG_MAX_MINUS_2
	if(func(x,y).neqv.res(76)) print *,76
	x = LLONG_MAX_MINUS_2
	y = ZERO
	if(func(x,y).neqv.res(77)) print *,77
	x = LLONG_MAX_MINUS_2
	y = ONE
	if(func(x,y).neqv.res(78)) print *,78
	x = LLONG_MAX_MINUS_2
	y = TWO
	if(func(x,y).neqv.res(79)) print *,79
	x = LLONG_MAX_MINUS_2
	y = MZERO
	if(func(x,y).neqv.res(80)) print *,80
	x = LLONG_MAX_MINUS_2
	y = MONE
	if(func(x,y).neqv.res(81)) print *,81
	x = LLONG_MAX_MINUS_2
	y = MTWO
	if(func(x,y).neqv.res(82)) print *,82
	x = LLONG_MAX_MINUS_2
	y = LONG_MAX
	if(func(x,y).neqv.res(83)) print *,83
	x = LLONG_MAX_MINUS_2
	y = LONG_MIN
	if(func(x,y).neqv.res(84)) print *,84
	x = ZERO
	y = LLONG_MIN
	if(func(x,y).neqv.res(85)) print *,85
	x = ZERO
	y = LLONG_MAX
	if(func(x,y).neqv.res(86)) print *,86
	x = ZERO
	y = LLONG_MIN_PLUS_1
	if(func(x,y).neqv.res(87)) print *,87
	x = ZERO
	y = LLONG_MIN_PLUS_2
	if(func(x,y).neqv.res(88)) print *,88
	x = ZERO
	y = LLONG_MAX_MINUS_1
	if(func(x,y).neqv.res(89)) print *,89
	x = ZERO
	y = LLONG_MAX_MINUS_2
	if(func(x,y).neqv.res(90)) print *,90
	x = ZERO
	y = ZERO
	if(func(x,y).neqv.res(91)) print *,91
	x = ZERO
	y = ONE
	if(func(x,y).neqv.res(92)) print *,92
	x = ZERO
	y = TWO
	if(func(x,y).neqv.res(93)) print *,93
	x = ZERO
	y = MZERO
	if(func(x,y).neqv.res(94)) print *,94
	x = ZERO
	y = MONE
	if(func(x,y).neqv.res(95)) print *,95
	x = ZERO
	y = MTWO
	if(func(x,y).neqv.res(96)) print *,96
	x = ZERO
	y = LONG_MAX
	if(func(x,y).neqv.res(97)) print *,97
	x = ZERO
	y = LONG_MIN
	if(func(x,y).neqv.res(98)) print *,98
	x = ONE
	y = LLONG_MIN
	if(func(x,y).neqv.res(99)) print *,99
	x = ONE
	y = LLONG_MAX
	if(func(x,y).neqv.res(100)) print *,100
	x = ONE
	y = LLONG_MIN_PLUS_1
	if(func(x,y).neqv.res(101)) print *,101
	x = ONE
	y = LLONG_MIN_PLUS_2
	if(func(x,y).neqv.res(102)) print *,102
	x = ONE
	y = LLONG_MAX_MINUS_1
	if(func(x,y).neqv.res(103)) print *,103
	x = ONE
	y = LLONG_MAX_MINUS_2
	if(func(x,y).neqv.res(104)) print *,104
	x = ONE
	y = ZERO
	if(func(x,y).neqv.res(105)) print *,105
	x = ONE
	y = ONE
	if(func(x,y).neqv.res(106)) print *,106
	x = ONE
	y = TWO
	if(func(x,y).neqv.res(107)) print *,107
	x = ONE
	y = MZERO
	if(func(x,y).neqv.res(108)) print *,108
	x = ONE
	y = MONE
	if(func(x,y).neqv.res(109)) print *,109
	x = ONE
	y = MTWO
	if(func(x,y).neqv.res(110)) print *,110
	x = ONE
	y = LONG_MAX
	if(func(x,y).neqv.res(111)) print *,111
	x = ONE
	y = LONG_MIN
	if(func(x,y).neqv.res(112)) print *,112
	x = TWO
	y = LLONG_MIN
	if(func(x,y).neqv.res(113)) print *,113
	x = TWO
	y = LLONG_MAX
	if(func(x,y).neqv.res(114)) print *,114
	x = TWO
	y = LLONG_MIN_PLUS_1
	if(func(x,y).neqv.res(115)) print *,115
	x = TWO
	y = LLONG_MIN_PLUS_2
	if(func(x,y).neqv.res(116)) print *,116
	x = TWO
	y = LLONG_MAX_MINUS_1
	if(func(x,y).neqv.res(117)) print *,117
	x = TWO
	y = LLONG_MAX_MINUS_2
	if(func(x,y).neqv.res(118)) print *,118
	x = TWO
	y = ZERO
	if(func(x,y).neqv.res(119)) print *,119
	x = TWO
	y = ONE
	if(func(x,y).neqv.res(120)) print *,120
	x = TWO
	y = TWO
	if(func(x,y).neqv.res(121)) print *,121
	x = TWO
	y = MZERO
	if(func(x,y).neqv.res(122)) print *,122
	x = TWO
	y = MONE
	if(func(x,y).neqv.res(123)) print *,123
	x = TWO
	y = MTWO
	if(func(x,y).neqv.res(124)) print *,124
	x = TWO
	y = LONG_MAX
	if(func(x,y).neqv.res(125)) print *,125
	x = TWO
	y = LONG_MIN
	if(func(x,y).neqv.res(126)) print *,126
	x = MZERO
	y = LLONG_MIN
	if(func(x,y).neqv.res(127)) print *,127
	x = MZERO
	y = LLONG_MAX
	if(func(x,y).neqv.res(128)) print *,128
	x = MZERO
	y = LLONG_MIN_PLUS_1
	if(func(x,y).neqv.res(129)) print *,129
	x = MZERO
	y = LLONG_MIN_PLUS_2
	if(func(x,y).neqv.res(130)) print *,130
	x = MZERO
	y = LLONG_MAX_MINUS_1
	if(func(x,y).neqv.res(131)) print *,131
	x = MZERO
	y = LLONG_MAX_MINUS_2
	if(func(x,y).neqv.res(132)) print *,132
	x = MZERO
	y = ZERO
	if(func(x,y).neqv.res(133)) print *,133
	x = MZERO
	y = ONE
	if(func(x,y).neqv.res(134)) print *,134
	x = MZERO
	y = TWO
	if(func(x,y).neqv.res(135)) print *,135
	x = MZERO
	y = MZERO
	if(func(x,y).neqv.res(136)) print *,136
	x = MZERO
	y = MONE
	if(func(x,y).neqv.res(137)) print *,137
	x = MZERO
	y = MTWO
	if(func(x,y).neqv.res(138)) print *,138
	x = MZERO
	y = LONG_MAX
	if(func(x,y).neqv.res(139)) print *,139
	x = MZERO
	y = LONG_MIN
	if(func(x,y).neqv.res(140)) print *,140
	x = MONE
	y = LLONG_MIN
	if(func(x,y).neqv.res(141)) print *,141
	x = MONE
	y = LLONG_MAX
	if(func(x,y).neqv.res(142)) print *,142
	x = MONE
	y = LLONG_MIN_PLUS_1
	if(func(x,y).neqv.res(143)) print *,143
	x = MONE
	y = LLONG_MIN_PLUS_2
	if(func(x,y).neqv.res(144)) print *,144
	x = MONE
	y = LLONG_MAX_MINUS_1
	if(func(x,y).neqv.res(145)) print *,145
	x = MONE
	y = LLONG_MAX_MINUS_2
	if(func(x,y).neqv.res(146)) print *,146
	x = MONE
	y = ZERO
	if(func(x,y).neqv.res(147)) print *,147
	x = MONE
	y = ONE
	if(func(x,y).neqv.res(148)) print *,148
	x = MONE
	y = TWO
	if(func(x,y).neqv.res(149)) print *,149
	x = MONE
	y = MZERO
	if(func(x,y).neqv.res(150)) print *,150
	x = MONE
	y = MONE
	if(func(x,y).neqv.res(151)) print *,151
	x = MONE
	y = MTWO
	if(func(x,y).neqv.res(152)) print *,152
	x = MONE
	y = LONG_MAX
	if(func(x,y).neqv.res(153)) print *,153
	x = MONE
	y = LONG_MIN
	if(func(x,y).neqv.res(154)) print *,154
	x = MTWO
	y = LLONG_MIN
	if(func(x,y).neqv.res(155)) print *,155
	x = MTWO
	y = LLONG_MAX
	if(func(x,y).neqv.res(156)) print *,156
	x = MTWO
	y = LLONG_MIN_PLUS_1
	if(func(x,y).neqv.res(157)) print *,157
	x = MTWO
	y = LLONG_MIN_PLUS_2
	if(func(x,y).neqv.res(158)) print *,158
	x = MTWO
	y = LLONG_MAX_MINUS_1
	if(func(x,y).neqv.res(159)) print *,159
	x = MTWO
	y = LLONG_MAX_MINUS_2
	if(func(x,y).neqv.res(160)) print *,160
	x = MTWO
	y = ZERO
	if(func(x,y).neqv.res(161)) print *,161
	x = MTWO
	y = ONE
	if(func(x,y).neqv.res(162)) print *,162
	x = MTWO
	y = TWO
	if(func(x,y).neqv.res(163)) print *,163
	x = MTWO
	y = MZERO
	if(func(x,y).neqv.res(164)) print *,164
	x = MTWO
	y = MONE
	if(func(x,y).neqv.res(165)) print *,165
	x = MTWO
	y = MTWO
	if(func(x,y).neqv.res(166)) print *,166
	x = MTWO
	y = LONG_MAX
	if(func(x,y).neqv.res(167)) print *,167
	x = MTWO
	y = LONG_MIN
	if(func(x,y).neqv.res(168)) print *,168
	x = LONG_MAX
	y = LLONG_MIN
	if(func(x,y).neqv.res(169)) print *,169
	x = LONG_MAX
	y = LLONG_MAX
	if(func(x,y).neqv.res(170)) print *,170
	x = LONG_MAX
	y = LLONG_MIN_PLUS_1
	if(func(x,y).neqv.res(171)) print *,171
	x = LONG_MAX
	y = LLONG_MIN_PLUS_2
	if(func(x,y).neqv.res(172)) print *,172
	x = LONG_MAX
	y = LLONG_MAX_MINUS_1
	if(func(x,y).neqv.res(173)) print *,173
	x = LONG_MAX
	y = LLONG_MAX_MINUS_2
	if(func(x,y).neqv.res(174)) print *,174
	x = LONG_MAX
	y = ZERO
	if(func(x,y).neqv.res(175)) print *,175
	x = LONG_MAX
	y = ONE
	if(func(x,y).neqv.res(176)) print *,176
	x = LONG_MAX
	y = TWO
	if(func(x,y).neqv.res(177)) print *,177
	x = LONG_MAX
	y = MZERO
	if(func(x,y).neqv.res(178)) print *,178
	x = LONG_MAX
	y = MONE
	if(func(x,y).neqv.res(179)) print *,179
	x = LONG_MAX
	y = MTWO
	if(func(x,y).neqv.res(180)) print *,180
	x = LONG_MAX
	y = LONG_MAX
	if(func(x,y).neqv.res(181)) print *,181
	x = LONG_MAX
	y = LONG_MIN
	if(func(x,y).neqv.res(182)) print *,182
	x = LONG_MIN
	y = LLONG_MIN
	if(func(x,y).neqv.res(183)) print *,183
	x = LONG_MIN
	y = LLONG_MAX
	if(func(x,y).neqv.res(184)) print *,184
	x = LONG_MIN
	y = LLONG_MIN_PLUS_1
	if(func(x,y).neqv.res(185)) print *,185
	x = LONG_MIN
	y = LLONG_MIN_PLUS_2
	if(func(x,y).neqv.res(186)) print *,186
	x = LONG_MIN
	y = LLONG_MAX_MINUS_1
	if(func(x,y).neqv.res(187)) print *,187
	x = LONG_MIN
	y = LLONG_MAX_MINUS_2
	if(func(x,y).neqv.res(188)) print *,188
	x = LONG_MIN
	y = ZERO
	if(func(x,y).neqv.res(189)) print *,189
	x = LONG_MIN
	y = ONE
	if(func(x,y).neqv.res(190)) print *,190
	x = LONG_MIN
	y = TWO
	if(func(x,y).neqv.res(191)) print *,191
	x = LONG_MIN
	y = MZERO
	if(func(x,y).neqv.res(192)) print *,192
	x = LONG_MIN
	y = MONE
	if(func(x,y).neqv.res(193)) print *,193
	x = LONG_MIN
	y = MTWO
	if(func(x,y).neqv.res(194)) print *,194
	x = LONG_MIN
	y = LONG_MAX
	if(func(x,y).neqv.res(195)) print *,195
	x = LONG_MIN
	y = LONG_MIN
	if(func(x,y).neqv.res(196)) print *,196
	print *,' PASS '
	end
	block data
	common /ans/res
	logical*4  res(14*14)
	data res/
     +  .false. ,	!	1
     +  .false. ,	!	2
     +  .false. ,	!	3
     +  .false. ,	!	4
     +  .false. ,	!	5
     +  .false. ,	!	6
     +  .false. ,	!	7
     +  .false. ,	!	8
     +  .false. ,	!	9
     +  .false. ,	!	10
     +  .false. ,	!	11
     +  .false. ,	!	12
     +  .false. ,	!	13
     +  .false. ,	!	14
     +  .true. ,	!	15
     +  .false. ,	!	16
     +  .true. ,	!	17
     +  .true. ,	!	18
     +  .true. ,	!	19
     +  .true. ,	!	20
     +  .true. ,	!	21
     +  .true. ,	!	22
     +  .true. ,	!	23
     +  .true. ,	!	24
     +  .true. ,	!	25
     +  .true. ,	!	26
     +  .true. ,	!	27
     +  .true. ,	!	28
     +  .true. ,	!	29
     +  .false. ,	!	30
     +  .false. ,	!	31
     +  .false. ,	!	32
     +  .false. ,	!	33
     +  .false. ,	!	34
     +  .false. ,	!	35
     +  .false. ,	!	36
     +  .false. ,	!	37
     +  .false. ,	!	38
     +  .false. ,	!	39
     +  .false. ,	!	40
     +  .false. ,	!	41
     +  .false. ,	!	42
     +  .true. ,	!	43
     +  .false. ,	!	44
     +  .true. ,	!	45
     +  .false. ,	!	46
     +  .false. ,	!	47
     +  .false. ,	!	48
     +  .false. ,	!	49
     +  .false. ,	!	50
     +  .false. ,	!	51
     +  .false. ,	!	52
     +  .false. ,	!	53
     +  .false. ,	!	54
     +  .false. ,	!	55
     +  .false. ,	!	56
     +  .true. ,	!	57
     +  .false. ,	!	58
     +  .true. ,	!	59
     +  .true. ,	!	60
     +  .false. ,	!	61
     +  .true. ,	!	62
     +  .true. ,	!	63
     +  .true. ,	!	64
     +  .true. ,	!	65
     +  .true. ,	!	66
     +  .true. ,	!	67
     +  .true. ,	!	68
     +  .true. ,	!	69
     +  .true. ,	!	70
     +  .true. ,	!	71
     +  .false. ,	!	72
     +  .true. ,	!	73
     +  .true. ,	!	74
     +  .false. ,	!	75
     +  .false. ,	!	76
     +  .true. ,	!	77
     +  .true. ,	!	78
     +  .true. ,	!	79
     +  .true. ,	!	80
     +  .true. ,	!	81
     +  .true. ,	!	82
     +  .true. ,	!	83
     +  .true. ,	!	84
     +  .true. ,	!	85
     +  .false. ,	!	86
     +  .true. ,	!	87
     +  .true. ,	!	88
     +  .false. ,	!	89
     +  .false. ,	!	90
     +  .false. ,	!	91
     +  .false. ,	!	92
     +  .false. ,	!	93
     +  .false. ,	!	94
     +  .true. ,	!	95
     +  .true. ,	!	96
     +  .false. ,	!	97
     +  .true. ,	!	98
     +  .true. ,	!	99
     +  .false. ,	!	100
     +  .true. ,	!	101
     +  .true. ,	!	102
     +  .false. ,	!	103
     +  .false. ,	!	104
     +  .true. ,	!	105
     +  .false. ,	!	106
     +  .false. ,	!	107
     +  .true. ,	!	108
     +  .true. ,	!	109
     +  .true. ,	!	110
     +  .false. ,	!	111
     +  .true. ,	!	112
     +  .true. ,	!	113
     +  .false. ,	!	114
     +  .true. ,	!	115
     +  .true. ,	!	116
     +  .false. ,	!	117
     +  .false. ,	!	118
     +  .true. ,	!	119
     +  .true. ,	!	120
     +  .false. ,	!	121
     +  .true. ,	!	122
     +  .true. ,	!	123
     +  .true. ,	!	124
     +  .false. ,	!	125
     +  .true. ,	!	126
     +  .true. ,	!	127
     +  .false. ,	!	128
     +  .true. ,	!	129
     +  .true. ,	!	130
     +  .false. ,	!	131
     +  .false. ,	!	132
     +  .false. ,	!	133
     +  .false. ,	!	134
     +  .false. ,	!	135
     +  .false. ,	!	136
     +  .true. ,	!	137
     +  .true. ,	!	138
     +  .false. ,	!	139
     +  .true. ,	!	140
     +  .true. ,	!	141
     +  .false. ,	!	142
     +  .true. ,	!	143
     +  .true. ,	!	144
     +  .false. ,	!	145
     +  .false. ,	!	146
     +  .false. ,	!	147
     +  .false. ,	!	148
     +  .false. ,	!	149
     +  .false. ,	!	150
     +  .false. ,	!	151
     +  .true. ,	!	152
     +  .false. ,	!	153
     +  .true. ,	!	154
     +  .true. ,	!	155
     +  .false. ,	!	156
     +  .true. ,	!	157
     +  .true. ,	!	158
     +  .false. ,	!	159
     +  .false. ,	!	160
     +  .false. ,	!	161
     +  .false. ,	!	162
     +  .false. ,	!	163
     +  .false. ,	!	164
     +  .false. ,	!	165
     +  .false. ,	!	166
     +  .false. ,	!	167
     +  .true. ,	!	168
     +  .true. ,	!	169
     +  .false. ,	!	170
     +  .true. ,	!	171
     +  .true. ,	!	172
     +  .false. ,	!	173
     +  .false. ,	!	174
     +  .true. ,	!	175
     +  .true. ,	!	176
     +  .true. ,	!	177
     +  .true. ,	!	178
     +  .true. ,	!	179
     +  .true. ,	!	180
     +  .false. ,	!	181
     +  .true. ,	!	182
     +  .true. ,	!	183
     +  .false. ,	!	184
     +  .true. ,	!	185
     +  .true. ,	!	186
     +  .false. ,	!	187
     +  .false. ,	!	188
     +  .false. ,	!	189
     +  .false. ,	!	190
     +  .false. ,	!	191
     +  .false. ,	!	192
     +  .false. ,	!	193
     +  .false. ,	!	194
     +  .false. ,	!	195
     +  .false. /	!	196
	end
