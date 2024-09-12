integer           :: ii  = 0
integer(kind=1)   :: i1  = 1
integer(kind=2)   :: i2  = 2
integer(kind=4)   :: i4  = 4
integer(kind=8)   :: i8  = 8

real              :: rr  = 0.0
real(kind=4)      :: r4  = 4.0
real(kind=8)      :: r8  = 8.0
real(kind=16)     :: r16 = 16.0

complex           :: cc  = (0.0, 0.0)
complex(kind=4)   :: c4  = (4.0, 4.0)
complex(kind=8)   :: c8  = (8.0, 8.0)
complex(kind=16)  :: c16 = (16.0,16.0)

logical           :: ll  = .false.
logical(kind=1)   :: l1  = .true.
logical(kind=2)   :: l2  = .true.
logical(kind=4)   :: l4  = .true.
logical(kind=8)   :: l8  = .true.

if (kind([integer :: i1, (i1, i2, i4, i8, n=1, 1), i2, i4, i8]).ne.kind(ii)) print *, 'error  line: 23  ', kind([integer :: i1, (i1, i2, i4, i8, n=1, 1), i2, i4, i8]), '  ', kind(ii)
if (kind([integer :: i1, (r4, r8, r16,    n=1, 1), i2, i4, i8]).ne.kind(ii)) print *, 'error  line: 24  ', kind([integer :: i1, (r4, r8, r16,    n=1, 1), i2, i4, i8]), '  ', kind(ii)
if (kind([integer :: i1, (c4, c8, c16,    n=1, 1), i2, i4, i8]).ne.kind(ii)) print *, 'error  line: 25  ', kind([integer :: i1, (c4, c8, c16,    n=1, 1), i2, i4, i8]), '  ', kind(ii)
if (kind([integer :: r4, (i1, i2, i4, i8, n=1, 1), r8, r16   ]).ne.kind(ii)) print *, 'error  line: 26  ', kind([integer :: r4, (i1, i2, i4, i8, n=1, 1), r8, r16   ]), '  ', kind(ii)
if (kind([integer :: r4, (r4, r8, r16,    n=1, 1), r8, r16   ]).ne.kind(ii)) print *, 'error  line: 27  ', kind([integer :: r4, (r4, r8, r16,    n=1, 1), r8, r16   ]), '  ', kind(ii)
if (kind([integer :: r4, (c4, c8, c16,    n=1, 1), r8, r16   ]).ne.kind(ii)) print *, 'error  line: 28  ', kind([integer :: r4, (c4, c8, c16,    n=1, 1), r8, r16   ]), '  ', kind(ii)
if (kind([integer :: c4, (i1, i2, i4, i8, n=1, 1), c8, c16   ]).ne.kind(ii)) print *, 'error  line: 29  ', kind([integer :: c4, (i1, i2, i4, i8, n=1, 1), c8, c16   ]), '  ', kind(ii)
if (kind([integer :: c4, (r4, r8, r16,    n=1, 1), c8, c16   ]).ne.kind(ii)) print *, 'error  line: 30  ', kind([integer :: c4, (r4, r8, r16,    n=1, 1), c8, c16   ]), '  ', kind(ii)
if (kind([integer :: c4, (c4, c8, c16,    n=1, 1), c8, c16   ]).ne.kind(ii)) print *, 'error  line: 31  ', kind([integer :: c4, (c4, c8, c16,    n=1, 1), c8, c16   ]), '  ', kind(ii)

if (kind([real    :: i1, (i1, i2, i4, i8, n=1, 1), i2, i4, i8]).ne.kind(rr)) print *, 'error  line: 33  ', kind([real    :: i1, (i1, i2, i4, i8, n=1, 1), i2, i4, i8]), '  ', kind(rr)
if (kind([real    :: i1, (r4, r8, r16,    n=1, 1), i2, i4, i8]).ne.kind(rr)) print *, 'error  line: 34  ', kind([real    :: i1, (r4, r8, r16,    n=1, 1), i2, i4, i8]), '  ', kind(rr)
if (kind([real    :: i1, (c4, c8, c16,    n=1, 1), i2, i4, i8]).ne.kind(rr)) print *, 'error  line: 35  ', kind([real    :: i1, (c4, c8, c16,    n=1, 1), i2, i4, i8]), '  ', kind(rr)
if (kind([real    :: r4, (i1, i2, i4, i8, n=1, 1), r8, r16   ]).ne.kind(rr)) print *, 'error  line: 36  ', kind([real    :: r4, (i1, i2, i4, i8, n=1, 1), r8, r16   ]), '  ', kind(rr)
if (kind([real    :: r4, (r4, r8, r16,    n=1, 1), r8, r16   ]).ne.kind(rr)) print *, 'error  line: 37  ', kind([real    :: r4, (r4, r8, r16,    n=1, 1), r8, r16   ]), '  ', kind(rr)
if (kind([real    :: r4, (c4, c8, c16,    n=1, 1), r8, r16   ]).ne.kind(rr)) print *, 'error  line: 38  ', kind([real    :: r4, (c4, c8, c16,    n=1, 1), r8, r16   ]), '  ', kind(rr)
if (kind([real    :: c4, (i1, i2, i4, i8, n=1, 1), c8, c16   ]).ne.kind(rr)) print *, 'error  line: 39  ', kind([real    :: c4, (i1, i2, i4, i8, n=1, 1), c8, c16   ]), '  ', kind(rr)
if (kind([real    :: c4, (r4, r8, r16,    n=1, 1), c8, c16   ]).ne.kind(rr)) print *, 'error  line: 40  ', kind([real    :: c4, (r4, r8, r16,    n=1, 1), c8, c16   ]), '  ', kind(rr)
if (kind([real    :: c4, (c4, c8, c16,    n=1, 1), c8, c16   ]).ne.kind(rr)) print *, 'error  line: 41  ', kind([real    :: c4, (c4, c8, c16,    n=1, 1), c8, c16   ]), '  ', kind(rr)

if (kind([complex :: i1, (i1, i2, i4, i8, n=1, 1), i2, i4, i8]).ne.kind(cc)) print *, 'error  line: 43  ', kind([complex :: i1, (i1, i2, i4, i8, n=1, 1), i2, i4, i8]), '  ', kind(cc)
if (kind([complex :: i1, (r4, r8, r16,    n=1, 1), i2, i4, i8]).ne.kind(cc)) print *, 'error  line: 44  ', kind([complex :: i1, (r4, r8, r16,    n=1, 1), i2, i4, i8]), '  ', kind(cc)
if (kind([complex :: i1, (c4, c8, c16,    n=1, 1), i2, i4, i8]).ne.kind(cc)) print *, 'error  line: 45  ', kind([complex :: i1, (c4, c8, c16,    n=1, 1), i2, i4, i8]), '  ', kind(cc)
if (kind([complex :: r4, (i1, i2, i4, i8, n=1, 1), r8, r16   ]).ne.kind(cc)) print *, 'error  line: 46  ', kind([complex :: r4, (i1, i2, i4, i8, n=1, 1), r8, r16   ]), '  ', kind(cc)
if (kind([complex :: r4, (r4, r8, r16,    n=1, 1), r8, r16   ]).ne.kind(cc)) print *, 'error  line: 47  ', kind([complex :: r4, (r4, r8, r16,    n=1, 1), r8, r16   ]), '  ', kind(cc)
if (kind([complex :: r4, (c4, c8, c16,    n=1, 1), r8, r16   ]).ne.kind(cc)) print *, 'error  line: 48  ', kind([complex :: r4, (c4, c8, c16,    n=1, 1), r8, r16   ]), '  ', kind(cc)
if (kind([complex :: c4, (i1, i2, i4, i8, n=1, 1), c8, c16   ]).ne.kind(cc)) print *, 'error  line: 49  ', kind([complex :: c4, (i1, i2, i4, i8, n=1, 1), c8, c16   ]), '  ', kind(cc)
if (kind([complex :: c4, (r4, r8, r16,    n=1, 1), c8, c16   ]).ne.kind(cc)) print *, 'error  line: 50  ', kind([complex :: c4, (r4, r8, r16,    n=1, 1), c8, c16   ]), '  ', kind(cc)
if (kind([complex :: c4, (c4, c8, c16,    n=1, 1), c8, c16   ]).ne.kind(cc)) print *, 'error  line: 51  ', kind([complex :: c4, (c4, c8, c16,    n=1, 1), c8, c16   ]), '  ', kind(cc)

if (kind([logical :: l1, (l1, l2, l4, l8, n=1, 1), l2, l4, l8]).ne.kind(ll)) print *, 'error  line: 53  ', kind([logical :: l1, (l1, l2, l4, l8, n=1, 1), l2, l4, l8]), '  ', kind(ll)

if (kind([integer(kind=1)  :: i1, (i1, i2, i4, i8, n=1, 1), i2, i4, i8]).ne.kind(i1))  print *, 'error  line: 55  ', kind([integer(kind=1)  :: i1, (i1, i2, i4, i8, n=1, 1), i2, i4, i8]), '  ', kind(i1)
if (kind([integer(kind=2)  :: i1, (i1, i2, i4, i8, n=1, 1), i2, i4, i8]).ne.kind(i2))  print *, 'error  line: 56  ', kind([integer(kind=2)  :: i1, (i1, i2, i4, i8, n=1, 1), i2, i4, i8]), '  ', kind(i2)
if (kind([integer(kind=4)  :: i1, (i1, i2, i4, i8, n=1, 1), i2, i4, i8]).ne.kind(i4))  print *, 'error  line: 57  ', kind([integer(kind=4)  :: i1, (i1, i2, i4, i8, n=1, 1), i2, i4, i8]), '  ', kind(i4)
if (kind([integer(kind=8)  :: i1, (i1, i2, i4, i8, n=1, 1), i2, i4, i8]).ne.kind(i8))  print *, 'error  line: 58  ', kind([integer(kind=8)  :: i1, (i1, i2, i4, i8, n=1, 1), i2, i4, i8]), '  ', kind(i8)

if (kind([real(kind=4)     :: i1, (i1, i2, i4, i8, n=1, 1), i2, i4, i8]).ne.kind(r4 )) print *, 'error  line: 60  ', kind([real(kind=4)     :: i1, (i1, i2, i4, i8, n=1, 1), i2, i4, i8]), '  ', kind(r4)
if (kind([real(kind=8)     :: i1, (i1, i2, i4, i8, n=1, 1), i2, i4, i8]).ne.kind(r8 )) print *, 'error  line: 61  ', kind([real(kind=8)     :: i1, (i1, i2, i4, i8, n=1, 1), i2, i4, i8]), '  ', kind(r8)
if (kind([real(kind=16)    :: i1, (i1, i2, i4, i8, n=1, 1), i2, i4, i8]).ne.kind(r16)) print *, 'error  line: 62  ', kind([real(kind=16)    :: i1, (i1, i2, i4, i8, n=1, 1), i2, i4, i8]), '  ', kind(r16)

if (kind([complex(kind=4)  :: i1, (i1, i2, i4, i8, n=1, 1), i2, i4, i8]).ne.kind(c4 )) print *, 'error  line: 63  ', kind([complex(kind=4)  :: i1, (i1, i2, i4, i8, n=1, 1), i2, i4, i8]), '  ', kind(c4)
if (kind([complex(kind=8)  :: i1, (i1, i2, i4, i8, n=1, 1), i2, i4, i8]).ne.kind(c8 )) print *, 'error  line: 64  ', kind([complex(kind=8)  :: i1, (i1, i2, i4, i8, n=1, 1), i2, i4, i8]), '  ', kind(c8)
if (kind([complex(kind=16) :: i1, (i1, i2, i4, i8, n=1, 1), i2, i4, i8]).ne.kind(c16)) print *, 'error  line: 65  ', kind([complex(kind=16) :: i1, (i1, i2, i4, i8, n=1, 1), i2, i4, i8]), '  ', kind(c16)

if (kind([integer(kind=1)  :: i1, (r4, r8, r16,    n=1, 1), i2, i4, i8]).ne.kind(i1))  print *, 'error  line: 68  ', kind([integer(kind=1)  :: i1, (r4, r8, r16,    n=1, 1), i2, i4, i8]), '  ', kind(i1)
if (kind([integer(kind=2)  :: i1, (r4, r8, r16,    n=1, 1), i2, i4, i8]).ne.kind(i2))  print *, 'error  line: 69  ', kind([integer(kind=2)  :: i1, (r4, r8, r16,    n=1, 1), i2, i4, i8]), '  ', kind(i2)
if (kind([integer(kind=4)  :: i1, (r4, r8, r16,    n=1, 1), i2, i4, i8]).ne.kind(i4))  print *, 'error  line: 70  ', kind([integer(kind=4)  :: i1, (r4, r8, r16,    n=1, 1), i2, i4, i8]), '  ', kind(i4)
if (kind([integer(kind=8)  :: i1, (r4, r8, r16,    n=1, 1), i2, i4, i8]).ne.kind(i8))  print *, 'error  line: 71  ', kind([integer(kind=8)  :: i1, (r4, r8, r16,    n=1, 1), i2, i4, i8]), '  ', kind(i8)

if (kind([real(kind=4)     :: i1, (r4, r8, r16,    n=1, 1), i2, i4, i8]).ne.kind(r4 )) print *, 'error  line: 73  ', kind([real(kind=4)     :: i1, (r4, r8, r16,    n=1, 1), i2, i4, i8]), '  ', kind(r4)
if (kind([real(kind=8)     :: i1, (r4, r8, r16,    n=1, 1), i2, i4, i8]).ne.kind(r8 )) print *, 'error  line: 74  ', kind([real(kind=8)     :: i1, (r4, r8, r16,    n=1, 1), i2, i4, i8]), '  ', kind(r8)
if (kind([real(kind=16)    :: i1, (r4, r8, r16,    n=1, 1), i2, i4, i8]).ne.kind(r16)) print *, 'error  line: 75  ', kind([real(kind=16)    :: i1, (r4, r8, r16,    n=1, 1), i2, i4, i8]), '  ', kind(r16)

if (kind([complex(kind=4)  :: i1, (r4, r8, r16,    n=1, 1), i2, i4, i8]).ne.kind(c4 )) print *, 'error  line: 77  ', kind([complex(kind=4)  :: i1, (r4, r8, r16,    n=1, 1), i2, i4, i8]), '  ', kind(c4)
if (kind([complex(kind=8)  :: i1, (r4, r8, r16,    n=1, 1), i2, i4, i8]).ne.kind(c8 )) print *, 'error  line: 78  ', kind([complex(kind=4)  :: i1, (r4, r8, r16,    n=1, 1), i2, i4, i8]), '  ', kind(c8)
if (kind([complex(kind=16) :: i1, (r4, r8, r16,    n=1, 1), i2, i4, i8]).ne.kind(c16)) print *, 'error  line: 79  ', kind([complex(kind=4)  :: i1, (r4, r8, r16,    n=1, 1), i2, i4, i8]), '  ', kind(c16)

if (kind([integer(kind=1)  :: i1, (c4, c8, c16,    n=1, 1), i2, i4, i8]).ne.kind(i1))  print *, 'error  line: 81  ', kind([integer(kind=1)  :: i1, (c4, c8, c16,    n=1, 1), i2, i4, i8]), '  ', kind(i1)
if (kind([integer(kind=2)  :: i1, (c4, c8, c16,    n=1, 1), i2, i4, i8]).ne.kind(i2))  print *, 'error  line: 82  ', kind([integer(kind=2)  :: i1, (c4, c8, c16,    n=1, 1), i2, i4, i8]), '  ', kind(i2)
if (kind([integer(kind=4)  :: i1, (c4, c8, c16,    n=1, 1), i2, i4, i8]).ne.kind(i4))  print *, 'error  line: 83  ', kind([integer(kind=4)  :: i1, (c4, c8, c16,    n=1, 1), i2, i4, i8]), '  ', kind(i4)
if (kind([integer(kind=8)  :: i1, (c4, c8, c16,    n=1, 1), i2, i4, i8]).ne.kind(i8))  print *, 'error  line: 84  ', kind([integer(kind=8)  :: i1, (c4, c8, c16,    n=1, 1), i2, i4, i8]), '  ', kind(i8)

if (kind([real(kind=4)     :: i1, (c4, c8, c16,    n=1, 1), i2, i4, i8]).ne.kind(r4 )) print *, 'error  line: 86  ', kind([real(kind=4)     :: i1, (c4, c8, c16,    n=1, 1), i2, i4, i8]), '  ', kind(r4)
if (kind([real(kind=8)     :: i1, (c4, c8, c16,    n=1, 1), i2, i4, i8]).ne.kind(r8 )) print *, 'error  line: 87  ', kind([real(kind=8)     :: i1, (c4, c8, c16,    n=1, 1), i2, i4, i8]), '  ', kind(r8)
if (kind([real(kind=16)    :: i1, (c4, c8, c16,    n=1, 1), i2, i4, i8]).ne.kind(r16)) print *, 'error  line: 88  ', kind([real(kind=16)    :: i1, (c4, c8, c16,    n=1, 1), i2, i4, i8]), '  ', kind(r16)

if (kind([complex(kind=4)  :: i1, (c4, c8, c16,    n=1, 1), i2, i4, i8]).ne.kind(c4 )) print *, 'error  line: 90  ', kind([complex(kind=4)  :: i1, (c4, c8, c16,    n=1, 1), i2, i4, i8]), '  ', kind(c4)
if (kind([complex(kind=8)  :: i1, (c4, c8, c16,    n=1, 1), i2, i4, i8]).ne.kind(c8 )) print *, 'error  line: 91  ', kind([complex(kind=8)  :: i1, (c4, c8, c16,    n=1, 1), i2, i4, i8]), '  ', kind(c8)
if (kind([complex(kind=16) :: i1, (c4, c8, c16,    n=1, 1), i2, i4, i8]).ne.kind(c16)) print *, 'error  line: 92  ', kind([complex(kind=16) :: i1, (c4, c8, c16,    n=1, 1), i2, i4, i8]), '  ', kind(c16)

if (kind([integer(kind=1)  :: r4, (i1, i2, i4, i8, n=1, 1), r8, r16   ]).ne.kind(i1))  print *, 'error  line: 94  ', kind([integer(kind=1)  :: r4, (i1, i2, i4, i8, n=1, 1), r8, r16   ]), '  ', kind(i1)
if (kind([integer(kind=2)  :: r4, (i1, i2, i4, i8, n=1, 1), r8, r16   ]).ne.kind(i2))  print *, 'error  line: 95  ', kind([integer(kind=2)  :: r4, (i1, i2, i4, i8, n=1, 1), r8, r16   ]), '  ', kind(i2)
if (kind([integer(kind=4)  :: r4, (i1, i2, i4, i8, n=1, 1), r8, r16   ]).ne.kind(i4))  print *, 'error  line: 96  ', kind([integer(kind=4)  :: r4, (i1, i2, i4, i8, n=1, 1), r8, r16   ]), '  ', kind(i4)
if (kind([integer(kind=8)  :: r4, (i1, i2, i4, i8, n=1, 1), r8, r16   ]).ne.kind(i8))  print *, 'error  line: 97  ', kind([integer(kind=8)  :: r4, (i1, i2, i4, i8, n=1, 1), r8, r16   ]), '  ', kind(i8)

if (kind([real(kind=4)     :: r4, (i1, i2, i4, i8, n=1, 1), r8, r16   ]).ne.kind(r4 )) print *, 'error  line: 99  ', kind([real(kind=4)     :: r4, (i1, i2, i4, i8, n=1, 1), r8, r16   ]), '  ', kind(r4)
if (kind([real(kind=8)     :: r4, (i1, i2, i4, i8, n=1, 1), r8, r16   ]).ne.kind(r8 )) print *, 'error  line:100  ', kind([real(kind=8)     :: r4, (i1, i2, i4, i8, n=1, 1), r8, r16   ]), '  ', kind(r8)
if (kind([real(kind=16)    :: r4, (i1, i2, i4, i8, n=1, 1), r8, r16   ]).ne.kind(r16)) print *, 'error  line:101  ', kind([real(kind=16)    :: r4, (i1, i2, i4, i8, n=1, 1), r8, r16   ]), '  ', kind(r16)

if (kind([complex(kind=4)  :: r4, (i1, i2, i4, i8, n=1, 1), r8, r16   ]).ne.kind(c4 )) print *, 'error  line:103  ', kind([complex(kind=4)  :: r4, (i1, i2, i4, i8, n=1, 1), r8, r16   ]), '  ', kind(c4)
if (kind([complex(kind=8)  :: r4, (i1, i2, i4, i8, n=1, 1), r8, r16   ]).ne.kind(c8 )) print *, 'error  line:104  ', kind([complex(kind=8)  :: r4, (i1, i2, i4, i8, n=1, 1), r8, r16   ]), '  ', kind(c8)
if (kind([complex(kind=16) :: r4, (i1, i2, i4, i8, n=1, 1), r8, r16   ]).ne.kind(c16)) print *, 'error  line:105  ', kind([complex(kind=16) :: r4, (i1, i2, i4, i8, n=1, 1), r8, r16   ]), '  ', kind(c16)

if (kind([integer(kind=1)  :: r4, (r4, r8, r16,    n=1, 1), r8, r16   ]).ne.kind(i1))  print *, 'error  line:107  ', kind([integer(kind=1)  :: r4, (r4, r8, r16,    n=1, 1), r8, r16   ]), '  ', kind(i1)
if (kind([integer(kind=2)  :: r4, (r4, r8, r16,    n=1, 1), r8, r16   ]).ne.kind(i2))  print *, 'error  line:108  ', kind([integer(kind=2)  :: r4, (r4, r8, r16,    n=1, 1), r8, r16   ]), '  ', kind(i2)
if (kind([integer(kind=4)  :: r4, (r4, r8, r16,    n=1, 1), r8, r16   ]).ne.kind(i4))  print *, 'error  line:109  ', kind([integer(kind=4)  :: r4, (r4, r8, r16,    n=1, 1), r8, r16   ]), '  ', kind(i4)
if (kind([integer(kind=8)  :: r4, (r4, r8, r16,    n=1, 1), r8, r16   ]).ne.kind(i8))  print *, 'error  line:110  ', kind([integer(kind=8)  :: r4, (r4, r8, r16,    n=1, 1), r8, r16   ]), '  ', kind(i8)

if (kind([real(kind=4)     :: r4, (r4, r8, r16,    n=1, 1), r8, r16   ]).ne.kind(r4 )) print *, 'error  line:112  ', kind([real(kind=4)     :: r4, (r4, r8, r16,    n=1, 1), r8, r16   ]), '  ', kind(r4)
if (kind([real(kind=8)     :: r4, (r4, r8, r16,    n=1, 1), r8, r16   ]).ne.kind(r8 )) print *, 'error  line:113  ', kind([real(kind=8)     :: r4, (r4, r8, r16,    n=1, 1), r8, r16   ]), '  ', kind(r8)
if (kind([real(kind=16)    :: r4, (r4, r8, r16,    n=1, 1), r8, r16   ]).ne.kind(r16)) print *, 'error  line:114  ', kind([real(kind=16)    :: r4, (r4, r8, r16,    n=1, 1), r8, r16   ]), '  ', kind(r16)

if (kind([complex(kind=4)  :: r4, (r4, r8, r16,    n=1, 1), r8, r16   ]).ne.kind(c4 )) print *, 'error  line:116  ', kind([complex(kind=4)  :: r4, (r4, r8, r16,    n=1, 1), r8, r16   ]), '  ', kind(c4)
if (kind([complex(kind=8)  :: r4, (r4, r8, r16,    n=1, 1), r8, r16   ]).ne.kind(c8 )) print *, 'error  line:117  ', kind([complex(kind=8)  :: r4, (r4, r8, r16,    n=1, 1), r8, r16   ]), '  ', kind(c8)
if (kind([complex(kind=16) :: r4, (r4, r8, r16,    n=1, 1), r8, r16   ]).ne.kind(c16)) print *, 'error  line:118  ', kind([complex(kind=16) :: r4, (r4, r8, r16,    n=1, 1), r8, r16   ]), '  ', kind(c16)

if (kind([integer(kind=1)  :: r4, (c4, c8, c16,    n=1, 1), r8, r16   ]).ne.kind(i1))  print *, 'error  line:120  ', kind([integer(kind=1)  :: r4, (c4, c8, c16,    n=1, 1), r8, r16   ]), '  ', kind(i1)
if (kind([integer(kind=2)  :: r4, (c4, c8, c16,    n=1, 1), r8, r16   ]).ne.kind(i2))  print *, 'error  line:121  ', kind([integer(kind=2)  :: r4, (c4, c8, c16,    n=1, 1), r8, r16   ]), '  ', kind(i2)
if (kind([integer(kind=4)  :: r4, (c4, c8, c16,    n=1, 1), r8, r16   ]).ne.kind(i4))  print *, 'error  line:122  ', kind([integer(kind=4)  :: r4, (c4, c8, c16,    n=1, 1), r8, r16   ]), '  ', kind(i4)
if (kind([integer(kind=8)  :: r4, (c4, c8, c16,    n=1, 1), r8, r16   ]).ne.kind(i8))  print *, 'error  line:123  ', kind([integer(kind=8)  :: r4, (c4, c8, c16,    n=1, 1), r8, r16   ]), '  ', kind(i8)

if (kind([real(kind=4)     :: r4, (c4, c8, c16,    n=1, 1), r8, r16   ]).ne.kind(r4 )) print *, 'error  line:125  ', kind([real(kind=4)     :: r4, (c4, c8, c16,    n=1, 1), r8, r16   ]), '  ', kind(r4)
if (kind([real(kind=8)     :: r4, (c4, c8, c16,    n=1, 1), r8, r16   ]).ne.kind(r8 )) print *, 'error  line:126  ', kind([real(kind=8)     :: r4, (c4, c8, c16,    n=1, 1), r8, r16   ]), '  ', kind(r8)
if (kind([real(kind=16)    :: r4, (c4, c8, c16,    n=1, 1), r8, r16   ]).ne.kind(r16)) print *, 'error  line:127  ', kind([real(kind=16)    :: r4, (c4, c8, c16,    n=1, 1), r8, r16   ]), '  ', kind(r16)

if (kind([complex(kind=4)  :: r4, (c4, c8, c16,    n=1, 1), r8, r16   ]).ne.kind(c4 )) print *, 'error  line:129  ', kind([complex(kind=4)  :: r4, (c4, c8, c16,    n=1, 1), r8, r16   ]), '  ', kind(c4)
if (kind([complex(kind=8)  :: r4, (c4, c8, c16,    n=1, 1), r8, r16   ]).ne.kind(c8 )) print *, 'error  line:130  ', kind([complex(kind=8)  :: r4, (c4, c8, c16,    n=1, 1), r8, r16   ]), '  ', kind(c8)
if (kind([complex(kind=16) :: r4, (c4, c8, c16,    n=1, 1), r8, r16   ]).ne.kind(c16)) print *, 'error  line:131  ', kind([complex(kind=16) :: r4, (c4, c8, c16,    n=1, 1), r8, r16   ]), '  ', kind(c16)

if (kind([integer(kind=1)  :: c4, (i1, i2, i4, i8, n=1, 1), c8, c16   ]).ne.kind(i1))  print *, 'error  line:133  ', kind([integer(kind=1)  :: c4, (i1, i2, i4, i8, n=1, 1), c8, c16   ]), '  ', kind(i1)
if (kind([integer(kind=2)  :: c4, (i1, i2, i4, i8, n=1, 1), c8, c16   ]).ne.kind(i2))  print *, 'error  line:134  ', kind([integer(kind=2)  :: c4, (i1, i2, i4, i8, n=1, 1), c8, c16   ]), '  ', kind(i2)
if (kind([integer(kind=4)  :: c4, (i1, i2, i4, i8, n=1, 1), c8, c16   ]).ne.kind(i4))  print *, 'error  line:135  ', kind([integer(kind=4)  :: c4, (i1, i2, i4, i8, n=1, 1), c8, c16   ]), '  ', kind(i4)
if (kind([integer(kind=8)  :: c4, (i1, i2, i4, i8, n=1, 1), c8, c16   ]).ne.kind(i8))  print *, 'error  line:136  ', kind([integer(kind=8)  :: c4, (i1, i2, i4, i8, n=1, 1), c8, c16   ]), '  ', kind(i8)

if (kind([real(kind=4)     :: c4, (i1, i2, i4, i8, n=1, 1), c8, c16   ]).ne.kind(r4 )) print *, 'error  line:138  ', kind([real(kind=4)     :: c4, (i1, i2, i4, i8, n=1, 1), c8, c16   ]), '  ', kind(r4)
if (kind([real(kind=8)     :: c4, (i1, i2, i4, i8, n=1, 1), c8, c16   ]).ne.kind(r8 )) print *, 'error  line:139  ', kind([real(kind=8)     :: c4, (i1, i2, i4, i8, n=1, 1), c8, c16   ]), '  ', kind(r8)
if (kind([real(kind=16)    :: c4, (i1, i2, i4, i8, n=1, 1), c8, c16   ]).ne.kind(r16)) print *, 'error  line:140  ', kind([real(kind=16)    :: c4, (i1, i2, i4, i8, n=1, 1), c8, c16   ]), '  ', kind(r16)

if (kind([complex(kind=4)  :: c4, (i1, i2, i4, i8, n=1, 1), c8, c16   ]).ne.kind(c4 )) print *, 'error  line:142  ', kind([complex(kind=4)  :: c4, (i1, i2, i4, i8, n=1, 1), c8, c16   ]), '  ', kind(c4)
if (kind([complex(kind=8)  :: c4, (i1, i2, i4, i8, n=1, 1), c8, c16   ]).ne.kind(c8 )) print *, 'error  line:143  ', kind([complex(kind=8)  :: c4, (i1, i2, i4, i8, n=1, 1), c8, c16   ]), '  ', kind(c8)
if (kind([complex(kind=16) :: c4, (i1, i2, i4, i8, n=1, 1), c8, c16   ]).ne.kind(c16)) print *, 'error  line:144  ', kind([complex(kind=16) :: c4, (i1, i2, i4, i8, n=1, 1), c8, c16   ]), '  ', kind(c16)

if (kind([integer(kind=1)  :: c4, (r4, r8, r16,    n=1, 1), c8, c16   ]).ne.kind(i1))  print *, 'error  line:146  ', kind([integer(kind=1)  :: c4, (r4, r8, r16,    n=1, 1), c8, c16   ]), '  ', kind(i1)
if (kind([integer(kind=2)  :: c4, (r4, r8, r16,    n=1, 1), c8, c16   ]).ne.kind(i2))  print *, 'error  line:147  ', kind([integer(kind=2)  :: c4, (r4, r8, r16,    n=1, 1), c8, c16   ]), '  ', kind(i2)
if (kind([integer(kind=4)  :: c4, (r4, r8, r16,    n=1, 1), c8, c16   ]).ne.kind(i4))  print *, 'error  line:148  ', kind([integer(kind=4)  :: c4, (r4, r8, r16,    n=1, 1), c8, c16   ]), '  ', kind(i4)
if (kind([integer(kind=8)  :: c4, (r4, r8, r16,    n=1, 1), c8, c16   ]).ne.kind(i8))  print *, 'error  line:149  ', kind([integer(kind=8)  :: c4, (r4, r8, r16,    n=1, 1), c8, c16   ]), '  ', kind(i8)

if (kind([real(kind=4)     :: c4, (r4, r8, r16,    n=1, 1), c8, c16   ]).ne.kind(r4 )) print *, 'error  line:151  ', kind([real(kind=4)     :: c4, (r4, r8, r16,    n=1, 1), c8, c16   ]), '  ', kind(r4)
if (kind([real(kind=8)     :: c4, (r4, r8, r16,    n=1, 1), c8, c16   ]).ne.kind(r8 )) print *, 'error  line:152  ', kind([real(kind=8)     :: c4, (r4, r8, r16,    n=1, 1), c8, c16   ]), '  ', kind(r8)
if (kind([real(kind=16)    :: c4, (r4, r8, r16,    n=1, 1), c8, c16   ]).ne.kind(r16)) print *, 'error  line:153  ', kind([real(kind=16)    :: c4, (r4, r8, r16,    n=1, 1), c8, c16   ]), '  ', kind(r16)

if (kind([complex(kind=4)  :: c4, (r4, r8, r16,    n=1, 1), c8, c16   ]).ne.kind(c4 )) print *, 'error  line:155  ', kind([complex(kind=4)  :: c4, (r4, r8, r16,    n=1, 1), c8, c16   ]), '  ', kind(c4)
if (kind([complex(kind=8)  :: c4, (r4, r8, r16,    n=1, 1), c8, c16   ]).ne.kind(c8 )) print *, 'error  line:156  ', kind([complex(kind=8)  :: c4, (r4, r8, r16,    n=1, 1), c8, c16   ]), '  ', kind(c8)
if (kind([complex(kind=16) :: c4, (r4, r8, r16,    n=1, 1), c8, c16   ]).ne.kind(c16)) print *, 'error  line:157  ', kind([complex(kind=16) :: c4, (r4, r8, r16,    n=1, 1), c8, c16   ]), '  ', kind(c16)

if (kind([integer(kind=1)  :: c4, (c4, c8, c16,    n=1, 1), c8, c16   ]).ne.kind(i1))  print *, 'error  line:159  ', kind([integer(kind=1)  :: c4, (c4, c8, c16,    n=1, 1), c8, c16   ]), '  ', kind(i1)
if (kind([integer(kind=2)  :: c4, (c4, c8, c16,    n=1, 1), c8, c16   ]).ne.kind(i2))  print *, 'error  line:160  ', kind([integer(kind=2)  :: c4, (c4, c8, c16,    n=1, 1), c8, c16   ]), '  ', kind(i2)
if (kind([integer(kind=4)  :: c4, (c4, c8, c16,    n=1, 1), c8, c16   ]).ne.kind(i4))  print *, 'error  line:161  ', kind([integer(kind=4)  :: c4, (c4, c8, c16,    n=1, 1), c8, c16   ]), '  ', kind(i4)
if (kind([integer(kind=8)  :: c4, (c4, c8, c16,    n=1, 1), c8, c16   ]).ne.kind(i8))  print *, 'error  line:162  ', kind([integer(kind=8)  :: c4, (c4, c8, c16,    n=1, 1), c8, c16   ]), '  ', kind(i8)

if (kind([real(kind=4)     :: c4, (c4, c8, c16,    n=1, 1), c8, c16   ]).ne.kind(r4 )) print *, 'error  line:164  ', kind([real(kind=4)     :: c4, (c4, c8, c16,    n=1, 1), c8, c16   ]), '  ', kind(r4)
if (kind([real(kind=8)     :: c4, (c4, c8, c16,    n=1, 1), c8, c16   ]).ne.kind(r8 )) print *, 'error  line:165  ', kind([real(kind=8)     :: c4, (c4, c8, c16,    n=1, 1), c8, c16   ]), '  ', kind(r8)
if (kind([real(kind=16)    :: c4, (c4, c8, c16,    n=1, 1), c8, c16   ]).ne.kind(r16)) print *, 'error  line:166  ', kind([real(kind=16)    :: c4, (c4, c8, c16,    n=1, 1), c8, c16   ]), '  ', kind(r16)

if (kind([complex(kind=4)  :: c4, (c4, c8, c16,    n=1, 1), c8, c16   ]).ne.kind(c4 )) print *, 'error  line:168  ', kind([complex(kind=4)  :: c4, (c4, c8, c16,    n=1, 1), c8, c16   ]), '  ', kind(c4)
if (kind([complex(kind=8)  :: c4, (c4, c8, c16,    n=1, 1), c8, c16   ]).ne.kind(c8 )) print *, 'error  line:169  ', kind([complex(kind=8)  :: c4, (c4, c8, c16,    n=1, 1), c8, c16   ]), '  ', kind(c8)
if (kind([complex(kind=16) :: c4, (c4, c8, c16,    n=1, 1), c8, c16   ]).ne.kind(c16)) print *, 'error  line:170  ', kind([complex(kind=16) :: c4, (c4, c8, c16,    n=1, 1), c8, c16   ]), '  ', kind(c16)

if (kind([logical(kind=1)  :: l1, (l1, l2, l4, l8, n=1, 1), l2, l4, l8]).ne.kind(l1))  print *, 'error  line:172  ', kind([logical(kind=1)  :: l1, (l1, l2, l4, l8, n=1, 1), l2, l4, l8]), '  ', kind(l1)
if (kind([logical(kind=2)  :: l1, (l1, l2, l4, l8, n=1, 1), l2, l4, l8]).ne.kind(l2))  print *, 'error  line:173  ', kind([logical(kind=2)  :: l1, (l1, l2, l4, l8, n=1, 1), l2, l4, l8]), '  ', kind(l2)
if (kind([logical(kind=4)  :: l1, (l1, l2, l4, l8, n=1, 1), l2, l4, l8]).ne.kind(l4))  print *, 'error  line:174  ', kind([logical(kind=4)  :: l1, (l1, l2, l4, l8, n=1, 1), l2, l4, l8]), '  ', kind(l4)
if (kind([logical(kind=8)  :: l1, (l1, l2, l4, l8, n=1, 1), l2, l4, l8]).ne.kind(l8))  print *, 'error  line:175  ', kind([logical(kind=8)  :: l1, (l1, l2, l4, l8, n=1, 1), l2, l4, l8]), '  ', kind(l8)

print *,'pass'

end
