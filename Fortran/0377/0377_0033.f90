integer           :: ii
integer(kind=1)   :: i1
integer(kind=2)   :: i2
integer(kind=4)   :: i4
integer(kind=8)   :: i8

real              :: rr
real(kind=4 )     :: r4
real(kind=8 )     :: r8
real(kind=16)     :: r16

complex           :: cc
complex(kind=4 )  :: c4
complex(kind=8 )  :: c8
complex(kind=16)  :: c16

if (kind([integer :: [real    :: ],[complex :: ]]).ne.kind(ii)) then
 print *, 'error  line: 17  ', kind([integer :: [real    :: ],[complex :: ]]), ' ', kind(ii)
end if
if (kind([real    :: [integer :: ],[complex :: ]]).ne.kind(rr)) then
 print *, 'error  line: 20  ', kind([real    :: [integer :: ],[complex :: ]]), ' ', kind(rr)
end if
if (kind([complex :: [integer :: ],[real    :: ]]).ne.kind(cc)) then
 print *, 'error  line: 23  ', kind([complex :: [integer :: ],[real    :: ]]), ' ', kind(cc)
end if

if (kind([integer :: [real    :: ii],[real    :: cc],[complex :: ii],[complex :: rr]]).ne.kind(ii)) then
 print *, 'error  line: 27  ', kind([integer :: [real    :: ii],[real    :: cc],[complex :: ii],[complex :: rr]]), ' ', kind(ii)
end if
if (kind([real    :: [integer :: rr],[integer :: cc],[complex :: ii],[complex :: rr]]).ne.kind(rr)) then
 print *, 'error  line: 30  ', kind([real    :: [integer :: rr],[integer :: cc],[complex :: ii],[complex :: rr]]), ' ', kind(rr)
end if
if (kind([complex :: [integer :: rr],[integer :: cc],[real    :: ii],[real    :: cc]]).ne.kind(cc)) then
 print *, 'error  line: 33  ', kind([complex :: [integer :: rr],[integer :: cc],[real    :: ii],[real    :: cc]]), ' ', kind(cc)
end if

if (kind([integer(kind=1)  :: [real(kind=4)    :: ],[real(kind=8)    :: ],[real(kind=16)    :: ]]).ne.kind(i1)) then
 print *, 'error  line: 37  ', kind([integer(kind=1)  :: [real(kind=4)    :: ],[real(kind=8)    :: ],[real(kind=16)    :: ]]), ' ', kind(i1)
end if
if (kind([integer(kind=1)  :: [complex(kind=4) :: ],[complex(kind=8) :: ],[complex(kind=16) :: ]]).ne.kind(i1)) then
 print *, 'error  line: 40  ', kind([integer(kind=1)  :: [complex(kind=4) :: ],[complex(kind=8) :: ],[complex(kind=16) :: ]]), ' ', kind(i1)
end if
if (kind([integer(kind=2)  :: [real(kind=4)    :: ],[real(kind=8)    :: ],[real(kind=16)    :: ]]).ne.kind(i2)) then
 print *, 'error  line: 43  ', kind([integer(kind=2)  :: [real(kind=4)    :: ],[real(kind=8)    :: ],[real(kind=16)    :: ]]), ' ', kind(i2)
end if
if (kind([integer(kind=2)  :: [complex(kind=4) :: ],[complex(kind=8) :: ],[complex(kind=16) :: ]]).ne.kind(i2)) then
 print *, 'error  line: 46  ', kind([integer(kind=2)  :: [complex(kind=4) :: ],[complex(kind=8) :: ],[complex(kind=16) :: ]]), ' ', kind(i2)
end if
if (kind([integer(kind=4)  :: [real(kind=4)    :: ],[real(kind=8)    :: ],[real(kind=16)    :: ]]).ne.kind(i4)) then
 print *, 'error  line: 49  ', kind([integer(kind=4)  :: [real(kind=4)    :: ],[real(kind=8)    :: ],[real(kind=16)    :: ]]), ' ', kind(i4)
end if
if (kind([integer(kind=4)  :: [complex(kind=4) :: ],[complex(kind=8) :: ],[complex(kind=16) :: ]]).ne.kind(i4)) then
 print *, 'error  line: 50  ', kind([integer(kind=4)  :: [complex(kind=4) :: ],[complex(kind=8) :: ],[complex(kind=16) :: ]]), ' ', kind(i4)
end if
if (kind([integer(kind=8)  :: [real(kind=4)    :: ],[real(kind=8)    :: ],[real(kind=16)    :: ]]).ne.kind(i8)) then
 print *, 'error  line: 55  ', kind([integer(kind=8)  :: [real(kind=4)    :: ],[real(kind=8)    :: ],[real(kind=16)    :: ]]), ' ', kind(i8)
end if
if (kind([integer(kind=8)  :: [complex(kind=4) :: ],[complex(kind=8) :: ],[complex(kind=16) :: ]]).ne.kind(i8)) then
 print *, 'error  line: 58  ', kind([integer(kind=8)  :: [complex(kind=4) :: ],[complex(kind=8) :: ],[complex(kind=16) :: ]]), ' ', kind(i8)
end if

if (kind([integer(kind=1)  :: [real(kind=4)    :: i1 ],[real(kind=8)    :: i1 ],[real(kind=16)    :: i1 ]]).ne.kind(i1)) then
 print *, 'error  line: 62  ', kind([integer(kind=1)  :: [real(kind=4)    :: i1 ],[real(kind=8)    :: i1 ],[real(kind=16)    :: i1 ]]), ' ', kind(i1)
end if
if (kind([integer(kind=1)  :: [real(kind=4)    :: i2 ],[real(kind=8)    :: i2 ],[real(kind=16)    :: i2 ]]).ne.kind(i1)) then
 print *, 'error  line: 65  ', kind([integer(kind=1)  :: [real(kind=4)    :: i2 ],[real(kind=8)    :: i2 ],[real(kind=16)    :: i2 ]]), ' ', kind(i1)
end if
if (kind([integer(kind=1)  :: [real(kind=4)    :: i4 ],[real(kind=8)    :: i4 ],[real(kind=16)    :: i4 ]]).ne.kind(i1)) then
 print *, 'error  line: 68  ', kind([integer(kind=1)  :: [real(kind=4)    :: i4 ],[real(kind=8)    :: i4 ],[real(kind=16)    :: i4 ]]), ' ', kind(i1)
end if
if (kind([integer(kind=1)  :: [real(kind=4)    :: i8 ],[real(kind=8)    :: i8 ],[real(kind=16)    :: i8 ]]).ne.kind(i1)) then
 print *, 'error  line: 71  ', kind([integer(kind=1)  :: [real(kind=4)    :: i8 ],[real(kind=8)    :: i8 ],[real(kind=16)    :: i8 ]]), ' ', kind(i1)
end if
if (kind([integer(kind=1)  :: [real(kind=4)    :: c4 ],[real(kind=8)    :: c4 ],[real(kind=16)    :: c4 ]]).ne.kind(i1)) then
 print *, 'error  line: 74  ', kind([integer(kind=1)  :: [real(kind=4)    :: c4 ],[real(kind=8)    :: c4 ],[real(kind=16)    :: c4 ]]), ' ', kind(i1)
end if
if (kind([integer(kind=1)  :: [real(kind=4)    :: c8 ],[real(kind=8)    :: c8 ],[real(kind=16)    :: c8 ]]).ne.kind(i1)) then
 print *, 'error  line: 77  ', kind([integer(kind=1)  :: [real(kind=4)    :: c8 ],[real(kind=8)    :: c8 ],[real(kind=16)    :: c8 ]]), ' ', kind(i1)
end if
if (kind([integer(kind=1)  :: [real(kind=4)    :: c16],[real(kind=8)    :: c16],[real(kind=16)    :: c16]]).ne.kind(i1)) then
 print *, 'error  line: 80  ', kind([integer(kind=1)  :: [real(kind=4)    :: c16],[real(kind=8)    :: c16],[real(kind=16)    :: c16]]), ' ', kind(i1)
end if
if (kind([integer(kind=1)  :: [complex(kind=4) :: i1 ],[complex(kind=8) :: i1 ],[complex(kind=16) :: i1 ]]).ne.kind(i1)) then
 print *, 'error  line: 83  ', kind([integer(kind=1)  :: [complex(kind=4) :: i1 ],[complex(kind=8) :: i1 ],[complex(kind=16) :: i1 ]]), ' ', kind(i1)
end if
if (kind([integer(kind=1)  :: [complex(kind=4) :: i2 ],[complex(kind=8) :: i2 ],[complex(kind=16) :: i2 ]]).ne.kind(i1)) then
 print *, 'error  line: 86  ', kind([integer(kind=1)  :: [complex(kind=4) :: i2 ],[complex(kind=8) :: i2 ],[complex(kind=16) :: i2 ]]), ' ', kind(i1)
end if
if (kind([integer(kind=1)  :: [complex(kind=4) :: i4 ],[complex(kind=8) :: i4 ],[complex(kind=16) :: i4 ]]).ne.kind(i1)) then
 print *, 'error  line: 89  ', kind([integer(kind=1)  :: [complex(kind=4) :: i4 ],[complex(kind=8) :: i4 ],[complex(kind=16) :: i4 ]]), ' ', kind(i1)
end if
if (kind([integer(kind=1)  :: [complex(kind=4) :: i8 ],[complex(kind=8) :: i8 ],[complex(kind=16) :: i8 ]]).ne.kind(i1)) then
 print *, 'error  line: 92  ', kind([integer(kind=1)  :: [complex(kind=4) :: i8 ],[complex(kind=8) :: i8 ],[complex(kind=16) :: i8 ]]), ' ', kind(i1)
end if
if (kind([integer(kind=1)  :: [complex(kind=4) :: c4 ],[complex(kind=8) :: c4 ],[complex(kind=16) :: c4 ]]).ne.kind(i1)) then
 print *, 'error  line: 95  ', kind([integer(kind=1)  :: [complex(kind=4) :: c4 ],[complex(kind=8) :: c4 ],[complex(kind=16) :: c4 ]]), ' ', kind(i1)
end if
if (kind([integer(kind=1)  :: [complex(kind=4) :: c8 ],[complex(kind=8) :: c8 ],[complex(kind=16) :: c8 ]]).ne.kind(i1)) then
 print *, 'error  line: 98  ', kind([integer(kind=1)  :: [complex(kind=4) :: c8 ],[complex(kind=8) :: c8 ],[complex(kind=16) :: c8 ]]), ' ', kind(i1)
end if
if (kind([integer(kind=1)  :: [complex(kind=4) :: c16],[complex(kind=8) :: c16],[complex(kind=16) :: c16]]).ne.kind(i1)) then
 print *, 'error  line:101  ', kind([integer(kind=1)  :: [complex(kind=4) :: c16],[complex(kind=8) :: c16],[complex(kind=16) :: c16]]), ' ', kind(i1)
end if

if (kind([integer(kind=2)  :: [real(kind=4)    :: i1 ],[real(kind=8)    :: i1 ],[real(kind=16)    :: i1 ]]).ne.kind(i2)) then
 print *, 'error  line:105  ', kind([integer(kind=2)  :: [real(kind=4)    :: i1 ],[real(kind=8)    :: i1 ],[real(kind=16)    :: i1 ]]), ' ', kind(i2)
end if
if (kind([integer(kind=2)  :: [real(kind=4)    :: i2 ],[real(kind=8)    :: i2 ],[real(kind=16)    :: i2 ]]).ne.kind(i2)) then
 print *, 'error  line:108  ', kind([integer(kind=2)  :: [real(kind=4)    :: i2 ],[real(kind=8)    :: i2 ],[real(kind=16)    :: i2 ]]), ' ', kind(i2)
end if
if (kind([integer(kind=2)  :: [real(kind=4)    :: i4 ],[real(kind=8)    :: i4 ],[real(kind=16)    :: i4 ]]).ne.kind(i2)) then
 print *, 'error  line:111  ', kind([integer(kind=2)  :: [real(kind=4)    :: i4 ],[real(kind=8)    :: i4 ],[real(kind=16)    :: i4 ]]), ' ', kind(i2)
end if
if (kind([integer(kind=2)  :: [real(kind=4)    :: i8 ],[real(kind=8)    :: i8 ],[real(kind=16)    :: i8 ]]).ne.kind(i2)) then
 print *, 'error  line:114  ', kind([integer(kind=2)  :: [real(kind=4)    :: i8 ],[real(kind=8)    :: i8 ],[real(kind=16)    :: i8 ]]), ' ', kind(i2)
end if
if (kind([integer(kind=2)  :: [real(kind=4)    :: c4 ],[real(kind=8)    :: c4 ],[real(kind=16)    :: c4 ]]).ne.kind(i2)) then
 print *, 'error  line:117  ', kind([integer(kind=2)  :: [real(kind=4)    :: c4 ],[real(kind=8)    :: c4 ],[real(kind=16)    :: c4 ]]), ' ', kind(i2)
end if
if (kind([integer(kind=2)  :: [real(kind=4)    :: c8 ],[real(kind=8)    :: c8 ],[real(kind=16)    :: c8 ]]).ne.kind(i2)) then
 print *, 'error  line:120  ', kind([integer(kind=2)  :: [real(kind=4)    :: c8 ],[real(kind=8)    :: c8 ],[real(kind=16)    :: c8 ]]), ' ', kind(i2)
end if
if (kind([integer(kind=2)  :: [real(kind=4)    :: c16],[real(kind=8)    :: c16],[real(kind=16)    :: c16]]).ne.kind(i2)) then
 print *, 'error  line:123  ', kind([integer(kind=2)  :: [real(kind=4)    :: c16],[real(kind=8)    :: c16],[real(kind=16)    :: c16]]), ' ', kind(i2)
end if
if (kind([integer(kind=2)  :: [complex(kind=4) :: i1 ],[complex(kind=8) :: i1 ],[complex(kind=16) :: i1 ]]).ne.kind(i2)) then
 print *, 'error  line:126  ', kind([integer(kind=2)  :: [complex(kind=4) :: i1 ],[complex(kind=8) :: i1 ],[complex(kind=16) :: i1 ]]), ' ', kind(i2)
end if
if (kind([integer(kind=2)  :: [complex(kind=4) :: i2 ],[complex(kind=8) :: i2 ],[complex(kind=16) :: i2 ]]).ne.kind(i2)) then
 print *, 'error  line:129  ', kind([integer(kind=2)  :: [complex(kind=4) :: i2 ],[complex(kind=8) :: i2 ],[complex(kind=16) :: i2 ]]), ' ', kind(i2)
end if
if (kind([integer(kind=2)  :: [complex(kind=4) :: i4 ],[complex(kind=8) :: i4 ],[complex(kind=16) :: i4 ]]).ne.kind(i2)) then
 print *, 'error  line:132  ', kind([integer(kind=2)  :: [complex(kind=4) :: i4 ],[complex(kind=8) :: i4 ],[complex(kind=16) :: i4 ]]), ' ', kind(i2)
end if
if (kind([integer(kind=2)  :: [complex(kind=4) :: i8 ],[complex(kind=8) :: i8 ],[complex(kind=16) :: i8 ]]).ne.kind(i2)) then
 print *, 'error  line:135  ', kind([integer(kind=2)  :: [complex(kind=4) :: i8 ],[complex(kind=8) :: i8 ],[complex(kind=16) :: i8 ]]), ' ', kind(i2)
end if
if (kind([integer(kind=2)  :: [complex(kind=4) :: r4 ],[complex(kind=8) :: r4 ],[complex(kind=16) :: r4 ]]).ne.kind(i2)) then
 print *, 'error  line:138  ', kind([integer(kind=2)  :: [complex(kind=4) :: r4 ],[complex(kind=8) :: r4 ],[complex(kind=16) :: r4 ]]), ' ', kind(i2)
end if
if (kind([integer(kind=2)  :: [complex(kind=4) :: r8 ],[complex(kind=8) :: r8 ],[complex(kind=16) :: r8 ]]).ne.kind(i2)) then
 print *, 'error  line:141  ', kind([integer(kind=2)  :: [complex(kind=4) :: r8 ],[complex(kind=8) :: r8 ],[complex(kind=16) :: r8 ]]), ' ', kind(i2)
end if
if (kind([integer(kind=2)  :: [complex(kind=4) :: r16],[complex(kind=8) :: r16],[complex(kind=16) :: r16]]).ne.kind(i2)) then
 print *, 'error  line:144  ', kind([integer(kind=2)  :: [complex(kind=4) :: r16],[complex(kind=8) :: r16],[complex(kind=16) :: r16]]), ' ', kind(i2)
end if

if (kind([integer(kind=4)  :: [real(kind=4)    :: i1 ],[real(kind=8)    :: i1 ],[real(kind=16)    :: i1 ]]).ne.kind(i4)) then
 print *, 'error  line:148  ', kind([integer(kind=4)  :: [real(kind=4)    :: i1 ],[real(kind=8)    :: i1 ],[real(kind=16)    :: i1 ]]), ' ', kind(i4)
end if
if (kind([integer(kind=4)  :: [real(kind=4)    :: i2 ],[real(kind=8)    :: i2 ],[real(kind=16)    :: i2 ]]).ne.kind(i4)) then
 print *, 'error  line:151  ', kind([integer(kind=4)  :: [real(kind=4)    :: i2 ],[real(kind=8)    :: i2 ],[real(kind=16)    :: i2 ]]), ' ', kind(i4)
end if
if (kind([integer(kind=4)  :: [real(kind=4)    :: i4 ],[real(kind=8)    :: i4 ],[real(kind=16)    :: i4 ]]).ne.kind(i4)) then
 print *, 'error  line:154  ', kind([integer(kind=4)  :: [real(kind=4)    :: i4 ],[real(kind=8)    :: i4 ],[real(kind=16)    :: i4 ]]), ' ', kind(i4)
end if
if (kind([integer(kind=4)  :: [real(kind=4)    :: i8 ],[real(kind=8)    :: i8 ],[real(kind=16)    :: i8 ]]).ne.kind(i4)) then
 print *, 'error  line:157  ', kind([integer(kind=4)  :: [real(kind=4)    :: i8 ],[real(kind=8)    :: i8 ],[real(kind=16)    :: i8 ]]), ' ', kind(i4)
end if
if (kind([integer(kind=4)  :: [real(kind=4)    :: c4 ],[real(kind=8)    :: c4 ],[real(kind=16)    :: c4 ]]).ne.kind(i4)) then
 print *, 'error  line:160  ', kind([integer(kind=4)  :: [real(kind=4)    :: c4 ],[real(kind=8)    :: c4 ],[real(kind=16)    :: c4 ]]), ' ', kind(i4)
end if
if (kind([integer(kind=4)  :: [real(kind=4)    :: c8 ],[real(kind=8)    :: c8 ],[real(kind=16)    :: c8 ]]).ne.kind(i4)) then
 print *, 'error  line:163  ', kind([integer(kind=4)  :: [real(kind=4)    :: c8 ],[real(kind=8)    :: c8 ],[real(kind=16)    :: c8 ]]), ' ', kind(i4)
end if
if (kind([integer(kind=4)  :: [real(kind=4)    :: c16],[real(kind=8)    :: c16],[real(kind=16)    :: c16]]).ne.kind(i4)) then
 print *, 'error  line:166  ', kind([integer(kind=4)  :: [real(kind=4)    :: c16],[real(kind=8)    :: c16],[real(kind=16)    :: c16]]), ' ', kind(i4)
end if
if (kind([integer(kind=4)  :: [complex(kind=4) :: i1 ],[complex(kind=8) :: i1 ],[complex(kind=16) :: i1 ]]).ne.kind(i4)) then
 print *, 'error  line:169  ', kind([integer(kind=4)  :: [complex(kind=4) :: i1 ],[complex(kind=8) :: i1 ],[complex(kind=16) :: i1 ]]), ' ', kind(i4)
end if
if (kind([integer(kind=4)  :: [complex(kind=4) :: i2 ],[complex(kind=8) :: i2 ],[complex(kind=16) :: i2 ]]).ne.kind(i4)) then
 print *, 'error  line:172  ', kind([integer(kind=4)  :: [complex(kind=4) :: i2 ],[complex(kind=8) :: i2 ],[complex(kind=16) :: i2 ]]), ' ', kind(i4)
end if
if (kind([integer(kind=4)  :: [complex(kind=4) :: i4 ],[complex(kind=8) :: i4 ],[complex(kind=16) :: i4 ]]).ne.kind(i4)) then
 print *, 'error  line:175  ', kind([integer(kind=4)  :: [complex(kind=4) :: i4 ],[complex(kind=8) :: i4 ],[complex(kind=16) :: i4 ]]), ' ', kind(i4)
end if
if (kind([integer(kind=4)  :: [complex(kind=4) :: i8 ],[complex(kind=8) :: i8 ],[complex(kind=16) :: i8 ]]).ne.kind(i4)) then
 print *, 'error  line:178  ', kind([integer(kind=4)  :: [complex(kind=4) :: i8 ],[complex(kind=8) :: i8 ],[complex(kind=16) :: i8 ]]), ' ', kind(i4)
end if
if (kind([integer(kind=4)  :: [complex(kind=4) :: r4 ],[complex(kind=8) :: r4 ],[complex(kind=16) :: r4 ]]).ne.kind(i4)) then
 print *, 'error  line:181  ', kind([integer(kind=4)  :: [complex(kind=4) :: r4 ],[complex(kind=8) :: r4 ],[complex(kind=16) :: r4 ]]), ' ', kind(i4)
end if
if (kind([integer(kind=4)  :: [complex(kind=4) :: r8 ],[complex(kind=8) :: r8 ],[complex(kind=16) :: r8 ]]).ne.kind(i4)) then
 print *, 'error  line:184  ', kind([integer(kind=4)  :: [complex(kind=4) :: r8 ],[complex(kind=8) :: r8 ],[complex(kind=16) :: r8 ]]), ' ', kind(i4)
end if
if (kind([integer(kind=4)  :: [complex(kind=4) :: r16],[complex(kind=8) :: r16],[complex(kind=16) :: r16]]).ne.kind(i4)) then
 print *, 'error  line:187  ', kind([integer(kind=4)  :: [complex(kind=4) :: r16],[complex(kind=8) :: r16],[complex(kind=16) :: r16]]), ' ', kind(i4)
end if

if (kind([integer(kind=8)  :: [real(kind=4)    :: i1 ],[real(kind=8)    :: i1 ],[real(kind=16)    :: i1 ]]).ne.kind(i8)) then
 print *, 'error  line:191  ', kind([integer(kind=8)  :: [real(kind=4)    :: i1 ],[real(kind=8)    :: i1 ],[real(kind=16)    :: i1 ]]), ' ', kind(i8)
end if
if (kind([integer(kind=8)  :: [real(kind=4)    :: i2 ],[real(kind=8)    :: i2 ],[real(kind=16)    :: i2 ]]).ne.kind(i8)) then
 print *, 'error  line:194  ', kind([integer(kind=8)  :: [real(kind=4)    :: i2 ],[real(kind=8)    :: i2 ],[real(kind=16)    :: i2 ]]), ' ', kind(i8)
end if
if (kind([integer(kind=8)  :: [real(kind=4)    :: i4 ],[real(kind=8)    :: i4 ],[real(kind=16)    :: i4 ]]).ne.kind(i8)) then
 print *, 'error  line:197  ', kind([integer(kind=8)  :: [real(kind=4)    :: i4 ],[real(kind=8)    :: i4 ],[real(kind=16)    :: i4 ]]), ' ', kind(i8)
end if
if (kind([integer(kind=8)  :: [real(kind=4)    :: i8 ],[real(kind=8)    :: i8 ],[real(kind=16)    :: i8 ]]).ne.kind(i8)) then
 print *, 'error  line:200  ', kind([integer(kind=8)  :: [real(kind=4)    :: i8 ],[real(kind=8)    :: i8 ],[real(kind=16)    :: i8 ]]), ' ', kind(i8)
end if
if (kind([integer(kind=8)  :: [real(kind=4)    :: c4 ],[real(kind=8)    :: c4 ],[real(kind=16)    :: c4 ]]).ne.kind(i8)) then
 print *, 'error  line:203  ', kind([integer(kind=8)  :: [real(kind=4)    :: c4 ],[real(kind=8)    :: c4 ],[real(kind=16)    :: c4 ]]), ' ', kind(i8)
end if
if (kind([integer(kind=8)  :: [real(kind=4)    :: c8 ],[real(kind=8)    :: c8 ],[real(kind=16)    :: c8 ]]).ne.kind(i8)) then
 print *, 'error  line:206  ', kind([integer(kind=8)  :: [real(kind=4)    :: c8 ],[real(kind=8)    :: c8 ],[real(kind=16)    :: c8 ]]), ' ', kind(i8)
end if
if (kind([integer(kind=8)  :: [real(kind=4)    :: c16],[real(kind=8)    :: c16],[real(kind=16)    :: c16]]).ne.kind(i8)) then
 print *, 'error  line:209  ', kind([integer(kind=8)  :: [real(kind=4)    :: c16],[real(kind=8)    :: c16],[real(kind=16)    :: c16]]), ' ', kind(i8)
end if
if (kind([integer(kind=8)  :: [complex(kind=4) :: i1 ],[complex(kind=8) :: i1 ],[complex(kind=16) :: i1 ]]).ne.kind(i8)) then
 print *, 'error  line:212  ', kind([integer(kind=8)  :: [complex(kind=4) :: i1 ],[complex(kind=8) :: i1 ],[complex(kind=16) :: i1 ]]), ' ', kind(i8)
end if
if (kind([integer(kind=8)  :: [complex(kind=4) :: i2 ],[complex(kind=8) :: i2 ],[complex(kind=16) :: i2 ]]).ne.kind(i8)) then
 print *, 'error  line:215  ', kind([integer(kind=8)  :: [complex(kind=4) :: i2 ],[complex(kind=8) :: i2 ],[complex(kind=16) :: i2 ]]), ' ', kind(i8)
end if
if (kind([integer(kind=8)  :: [complex(kind=4) :: i4 ],[complex(kind=8) :: i4 ],[complex(kind=16) :: i4 ]]).ne.kind(i8)) then
 print *, 'error  line:218  ', kind([integer(kind=8)  :: [complex(kind=4) :: i4 ],[complex(kind=8) :: i4 ],[complex(kind=16) :: i4 ]]), ' ', kind(i8)
end if
if (kind([integer(kind=8)  :: [complex(kind=4) :: i8 ],[complex(kind=8) :: i8 ],[complex(kind=16) :: i8 ]]).ne.kind(i8)) then
 print *, 'error  line:221  ', kind([integer(kind=8)  :: [complex(kind=4) :: i8 ],[complex(kind=8) :: i8 ],[complex(kind=16) :: i8 ]]), ' ', kind(i8)
end if
if (kind([integer(kind=8)  :: [complex(kind=4) :: r4 ],[complex(kind=8) :: r4 ],[complex(kind=16) :: r4 ]]).ne.kind(i8)) then
 print *, 'error  line:224  ', kind([integer(kind=8)  :: [complex(kind=4) :: r4 ],[complex(kind=8) :: r4 ],[complex(kind=16) :: r4 ]]), ' ', kind(i8)
end if
if (kind([integer(kind=8)  :: [complex(kind=4) :: r8 ],[complex(kind=8) :: r8 ],[complex(kind=16) :: r8 ]]).ne.kind(i8)) then
 print *, 'error  line:227  ', kind([integer(kind=8)  :: [complex(kind=4) :: r8 ],[complex(kind=8) :: r8 ],[complex(kind=16) :: r8 ]]), ' ', kind(i8)
end if
if (kind([integer(kind=8)  :: [complex(kind=4) :: r16],[complex(kind=8) :: r16],[complex(kind=16) :: r16]]).ne.kind(i8)) then
 print *, 'error  line:230  ', kind([integer(kind=8)  :: [complex(kind=4) :: r16],[complex(kind=8) :: r16],[complex(kind=16) :: r16]]), ' ', kind(i8)
end if

if (kind([real(kind=4)     :: [integer(kind=1) :: ],[integer(kind=2) :: ],[integer(kind=4)  :: ],[integer(kind=8) :: ]]).ne.kind(r4 )) then
 print *, 'error  line:234  ', kind([real(kind=4)     :: [integer(kind=1) :: ],[integer(kind=2) :: ],[integer(kind=4)  :: ],[integer(kind=8) :: ]]), ' ', kind(r4 )
end if
if (kind([real(kind=4)     :: [complex(kind=4) :: ],[complex(kind=8) :: ],[complex(kind=16) :: ]]).ne.kind(r4 )) then
 print *, 'error  line:237  ', kind([real(kind=4)     :: [complex(kind=4) :: ],[complex(kind=8) :: ],[complex(kind=16) :: ]]), ' ', kind(r4 )
end if
if (kind([real(kind=8)     :: [integer(kind=1) :: ],[integer(kind=2) :: ],[integer(kind=4)  :: ],[integer(kind=8) :: ]]).ne.kind(r8 )) then
 print *, 'error  line:240  ', kind([real(kind=8)     :: [integer(kind=1) :: ],[integer(kind=2) :: ],[integer(kind=4)  :: ],[integer(kind=8) :: ]]), ' ', kind(r8 )
end if
if (kind([real(kind=8)     :: [complex(kind=4) :: ],[complex(kind=8) :: ],[complex(kind=16) :: ]]).ne.kind(r8 )) then
 print *, 'error  line:243  ', kind([real(kind=8)     :: [complex(kind=4) :: ],[complex(kind=8) :: ],[complex(kind=16) :: ]]), ' ', kind(r8 )
end if
if (kind([real(kind=16)    :: [integer(kind=1) :: ],[integer(kind=2) :: ],[integer(kind=4)  :: ],[integer(kind=8) :: ]]).ne.kind(r16)) then
 print *, 'error  line:246  ', kind([real(kind=16)    :: [integer(kind=1) :: ],[integer(kind=2) :: ],[integer(kind=4)  :: ],[integer(kind=8) :: ]]), ' ', kind(r16)
end if
if (kind([real(kind=16)    :: [complex(kind=4) :: ],[complex(kind=8) :: ],[complex(kind=16) :: ]]).ne.kind(r16)) then
 print *, 'error  line:249  ', kind([real(kind=16)    :: [complex(kind=4) :: ],[complex(kind=8) :: ],[complex(kind=16) :: ]]), ' ', kind(r16)
end if

if (kind([real(kind=4)     :: [integer(kind=1) :: r4 ],[integer(kind=2) :: r4 ],[integer(kind=4) :: r4 ],[integer(kind=8) :: r4 ]]).ne.kind(r4)) then
 print *, 'error  line:253  ', kind([real(kind=4)     :: [integer(kind=1) :: r4 ],[integer(kind=2) :: r4 ],[integer(kind=4) :: r4 ],[integer(kind=8) :: r4 ]]), ' ', kind(r4)
end if
if (kind([real(kind=4)     :: [integer(kind=1) :: r8 ],[integer(kind=2) :: r8 ],[integer(kind=4) :: r8 ],[integer(kind=8) :: r8 ]]).ne.kind(r4)) then
 print *, 'error  line:256  ', kind([real(kind=4)     :: [integer(kind=1) :: r8 ],[integer(kind=2) :: r8 ],[integer(kind=4) :: r8 ],[integer(kind=8) :: r8 ]]), ' ', kind(r4)
end if
if (kind([real(kind=4)     :: [integer(kind=1) :: r16],[integer(kind=2) :: r16],[integer(kind=4) :: r16],[integer(kind=8) :: r16]]).ne.kind(r4)) then
 print *, 'error  line:259  ', kind([real(kind=4)     :: [integer(kind=1) :: r16],[integer(kind=2) :: r16],[integer(kind=4) :: r16],[integer(kind=8) :: r16]]), ' ', kind(r4)
end if
if (kind([real(kind=4)     :: [integer(kind=1) :: c4 ],[integer(kind=2) :: c4 ],[integer(kind=4) :: c4 ],[integer(kind=8) :: c4 ]]).ne.kind(r4)) then
 print *, 'error  line:262  ', kind([real(kind=4)     :: [integer(kind=1) :: c4 ],[integer(kind=2) :: c4 ],[integer(kind=4) :: c4 ],[integer(kind=8) :: c4 ]]), ' ', kind(r4)
end if
if (kind([real(kind=4)     :: [integer(kind=1) :: c8 ],[integer(kind=2) :: c8 ],[integer(kind=4) :: c8 ],[integer(kind=8) :: c8 ]]).ne.kind(r4)) then
 print *, 'error  line:265  ', kind([real(kind=4)     :: [integer(kind=1) :: c8 ],[integer(kind=2) :: c8 ],[integer(kind=4) :: c8 ],[integer(kind=8) :: c8 ]]), ' ', kind(r4)
end if
if (kind([real(kind=4)     :: [integer(kind=1) :: c16],[integer(kind=2) :: c16],[integer(kind=4) :: c16],[integer(kind=8) :: c16]]).ne.kind(r4)) then
 print *, 'error  line:268  ', kind([real(kind=4)     :: [integer(kind=1) :: c16],[integer(kind=2) :: c16],[integer(kind=4) :: c16],[integer(kind=8) :: c16]]), ' ', kind(r4)
end if
if (kind([real(kind=4)     :: [complex(kind=4) :: i1 ],[complex(kind=8) :: i1 ],[complex(kind=16) :: i1 ]]).ne.kind(r4)) then
 print *, 'error  line:271  ', kind([real(kind=4)     :: [complex(kind=4) :: i1 ],[complex(kind=8) :: i1 ],[complex(kind=16) :: i1 ]]), ' ', kind(r4)
end if
if (kind([real(kind=4)     :: [complex(kind=4) :: i2 ],[complex(kind=8) :: i2 ],[complex(kind=16) :: i2 ]]).ne.kind(r4)) then
 print *, 'error  line:274  ', kind([real(kind=4)     :: [complex(kind=4) :: i2 ],[complex(kind=8) :: i2 ],[complex(kind=16) :: i2 ]]), ' ', kind(r4)
end if
if (kind([real(kind=4)     :: [complex(kind=4) :: i4 ],[complex(kind=8) :: i4 ],[complex(kind=16) :: i4 ]]).ne.kind(r4)) then
 print *, 'error  line:277  ', kind([real(kind=4)     :: [complex(kind=4) :: i4 ],[complex(kind=8) :: i4 ],[complex(kind=16) :: i4 ]]), ' ', kind(r4)
end if
if (kind([real(kind=4)     :: [complex(kind=4) :: i8 ],[complex(kind=8) :: i8 ],[complex(kind=16) :: i8 ]]).ne.kind(r4)) then
 print *, 'error  line:280  ', kind([real(kind=4)     :: [complex(kind=4) :: i8 ],[complex(kind=8) :: i8 ],[complex(kind=16) :: i8 ]]), ' ', kind(r4)
end if
if (kind([real(kind=4)     :: [complex(kind=4) :: r4 ],[complex(kind=8) :: r4 ],[complex(kind=16) :: r4 ]]).ne.kind(r4)) then
 print *, 'error  line:283  ', kind([real(kind=4)     :: [complex(kind=4) :: r4 ],[complex(kind=8) :: r4 ],[complex(kind=16) :: r4 ]]), ' ', kind(r4)
end if
if (kind([real(kind=4)     :: [complex(kind=4) :: r8 ],[complex(kind=8) :: r8 ],[complex(kind=16) :: r8 ]]).ne.kind(r4)) then
 print *, 'error  line:286  ', kind([real(kind=4)     :: [complex(kind=4) :: r8 ],[complex(kind=8) :: r8 ],[complex(kind=16) :: r8 ]]), ' ', kind(r4)
end if
if (kind([real(kind=4)     :: [complex(kind=4) :: r16],[complex(kind=8) :: r16],[complex(kind=16) :: r16]]).ne.kind(r4)) then
 print *, 'error  line:289  ', kind([real(kind=4)     :: [complex(kind=4) :: r16],[complex(kind=8) :: r16],[complex(kind=16) :: r16]]), ' ', kind(r4)
end if

if (kind([real(kind=8)     :: [integer(kind=1) :: r4 ],[integer(kind=2) :: r4 ],[integer(kind=4) :: r4 ],[integer(kind=8) :: r4 ]]).ne.kind(r8)) then
 print *, 'error  line:294  ', kind([real(kind=8)     :: [integer(kind=1) :: r4 ],[integer(kind=2) :: r4 ],[integer(kind=4) :: r4 ],[integer(kind=8) :: r4 ]]), ' ', kind(r8)
end if
if (kind([real(kind=8)     :: [integer(kind=1) :: r8 ],[integer(kind=2) :: r8 ],[integer(kind=4) :: r8 ],[integer(kind=8) :: r8 ]]).ne.kind(r8)) then
 print *, 'error  line:296  ', kind([real(kind=8)     :: [integer(kind=1) :: r8 ],[integer(kind=2) :: r8 ],[integer(kind=4) :: r8 ],[integer(kind=8) :: r8 ]]), ' ', kind(r8)
end if
if (kind([real(kind=8)     :: [integer(kind=1) :: r16],[integer(kind=2) :: r16],[integer(kind=4) :: r16],[integer(kind=8) :: r16]]).ne.kind(r8)) then
 print *, 'error  line:299  ', kind([real(kind=8)     :: [integer(kind=1) :: r16],[integer(kind=2) :: r16],[integer(kind=4) :: r16],[integer(kind=8) :: r16]]), ' ', kind(r8)
end if
if (kind([real(kind=8)     :: [integer(kind=1) :: c4 ],[integer(kind=2) :: c4 ],[integer(kind=4) :: c4 ],[integer(kind=8) :: c4 ]]).ne.kind(r8)) then
 print *, 'error  line:302  ', kind([real(kind=8)     :: [integer(kind=1) :: c4 ],[integer(kind=2) :: c4 ],[integer(kind=4) :: c4 ],[integer(kind=8) :: c4 ]]), ' ', kind(r8)
end if
if (kind([real(kind=8)     :: [integer(kind=1) :: c8 ],[integer(kind=2) :: c8 ],[integer(kind=4) :: c8 ],[integer(kind=8) :: c8 ]]).ne.kind(r8)) then
 print *, 'error  line:305  ', kind([real(kind=8)     :: [integer(kind=1) :: c8 ],[integer(kind=2) :: c8 ],[integer(kind=4) :: c8 ],[integer(kind=8) :: c8 ]]), ' ', kind(r8)
end if
if (kind([real(kind=8)     :: [integer(kind=1) :: c16],[integer(kind=2) :: c16],[integer(kind=4) :: c16],[integer(kind=8) :: c16]]).ne.kind(r8)) then
 print *, 'error  line:308  ', kind([real(kind=8)     :: [integer(kind=1) :: c16],[integer(kind=2) :: c16],[integer(kind=4) :: c16],[integer(kind=8) :: c16]]), ' ', kind(r8)
end if
if (kind([real(kind=8)     :: [complex(kind=4) :: i1 ],[complex(kind=8) :: i1 ],[complex(kind=16) :: i1 ]]).ne.kind(r8)) then
 print *, 'error  line:311  ', kind([real(kind=8)     :: [complex(kind=4) :: i1 ],[complex(kind=8) :: i1 ],[complex(kind=16) :: i1 ]]), ' ', kind(r8)
end if
if (kind([real(kind=8)     :: [complex(kind=4) :: i2 ],[complex(kind=8) :: i2 ],[complex(kind=16) :: i2 ]]).ne.kind(r8)) then
 print *, 'error  line:314  ', kind([real(kind=8)     :: [complex(kind=4) :: i2 ],[complex(kind=8) :: i2 ],[complex(kind=16) :: i2 ]]), ' ', kind(r8)
end if
if (kind([real(kind=8)     :: [complex(kind=4) :: i4 ],[complex(kind=8) :: i4 ],[complex(kind=16) :: i4 ]]).ne.kind(r8)) then
 print *, 'error  line:317  ', kind([real(kind=8)     :: [complex(kind=4) :: i4 ],[complex(kind=8) :: i4 ],[complex(kind=16) :: i4 ]]), ' ', kind(r8)
end if
if (kind([real(kind=8)     :: [complex(kind=4) :: i8 ],[complex(kind=8) :: i8 ],[complex(kind=16) :: i8 ]]).ne.kind(r8)) then
 print *, 'error  line:320  ', kind([real(kind=8)     :: [complex(kind=4) :: i8 ],[complex(kind=8) :: i8 ],[complex(kind=16) :: i8 ]]), ' ', kind(r8)
end if
if (kind([real(kind=8)     :: [complex(kind=4) :: r4 ],[complex(kind=8) :: r4 ],[complex(kind=16) :: r4 ]]).ne.kind(r8)) then
 print *, 'error  line:323  ', kind([real(kind=8)     :: [complex(kind=4) :: r4 ],[complex(kind=8) :: r4 ],[complex(kind=16) :: r4 ]]), ' ', kind(r8)
end if
if (kind([real(kind=8)     :: [complex(kind=4) :: r8 ],[complex(kind=8) :: r8 ],[complex(kind=16) :: r8 ]]).ne.kind(r8)) then
 print *, 'error  line:326  ', kind([real(kind=8)     :: [complex(kind=4) :: r8 ],[complex(kind=8) :: r8 ],[complex(kind=16) :: r8 ]]), ' ', kind(r8)
end if
if (kind([real(kind=8)     :: [complex(kind=4) :: r16],[complex(kind=8) :: r16],[complex(kind=16) :: r16]]).ne.kind(r8)) then
 print *, 'error  line:329  ', kind([real(kind=8)     :: [complex(kind=4) :: r16],[complex(kind=8) :: r16],[complex(kind=16) :: r16]]), ' ', kind(r8)
end if

if (kind([real(kind=16)    :: [integer(kind=1) :: r4 ],[integer(kind=2) :: r4 ],[integer(kind=4) :: r4 ],[integer(kind=8) :: r4 ]]).ne.kind(r16)) then
 print *, 'error  line:333  ', kind([real(kind=16)    :: [integer(kind=1) :: r4 ],[integer(kind=2) :: r4 ],[integer(kind=4) :: r4 ],[integer(kind=8) :: r4 ]]), ' ', kind(r16)
end if
if (kind([real(kind=16)    :: [integer(kind=1) :: r8 ],[integer(kind=2) :: r8 ],[integer(kind=4) :: r8 ],[integer(kind=8) :: r8 ]]).ne.kind(r16)) then
 print *, 'error  line:336  ', kind([real(kind=16)    :: [integer(kind=1) :: r8 ],[integer(kind=2) :: r8 ],[integer(kind=4) :: r8 ],[integer(kind=8) :: r8 ]]), ' ', kind(r16)
end if
if (kind([real(kind=16)    :: [integer(kind=1) :: r16],[integer(kind=2) :: r16],[integer(kind=4) :: r16],[integer(kind=8) :: r16]]).ne.kind(r16)) then
 print *, 'error  line:339  ', kind([real(kind=16)    :: [integer(kind=1) :: r16],[integer(kind=2) :: r16],[integer(kind=4) :: r16],[integer(kind=8) :: r16]]), ' ', kind(r16)
end if
if (kind([real(kind=16)    :: [integer(kind=1) :: c4 ],[integer(kind=2) :: c4 ],[integer(kind=4) :: c4 ],[integer(kind=8) :: c4 ]]).ne.kind(r16)) then
 print *, 'error  line:342  ', kind([real(kind=16)    :: [integer(kind=1) :: c4 ],[integer(kind=2) :: c4 ],[integer(kind=4) :: c4 ],[integer(kind=8) :: c4 ]]), ' ', kind(r16)
end if
if (kind([real(kind=16)    :: [integer(kind=1) :: c8 ],[integer(kind=2) :: c8 ],[integer(kind=4) :: c8 ],[integer(kind=8) :: c8 ]]).ne.kind(r16)) then
 print *, 'error  line:345  ', kind([real(kind=16)    :: [integer(kind=1) :: c8 ],[integer(kind=2) :: c8 ],[integer(kind=4) :: c8 ],[integer(kind=8) :: c8 ]]), ' ', kind(r16)
end if
if (kind([real(kind=16)    :: [integer(kind=1) :: c16],[integer(kind=2) :: c16],[integer(kind=4) :: c16],[integer(kind=8) :: c16]]).ne.kind(r16)) then
 print *, 'error  line:348  ', kind([real(kind=16)    :: [integer(kind=1) :: c16],[integer(kind=2) :: c16],[integer(kind=4) :: c16],[integer(kind=8) :: c16]]), ' ', kind(r16)
end if
if (kind([real(kind=16)    :: [complex(kind=4) :: i1 ],[complex(kind=8) :: i1 ],[complex(kind=16) :: i1 ]]).ne.kind(r16)) then
 print *, 'error  line:351  ', kind([real(kind=16)    :: [complex(kind=4) :: i1 ],[complex(kind=8) :: i1 ],[complex(kind=16) :: i1 ]]), ' ', kind(r16)
end if
if (kind([real(kind=16)    :: [complex(kind=4) :: i2 ],[complex(kind=8) :: i2 ],[complex(kind=16) :: i2 ]]).ne.kind(r16)) then
 print *, 'error  line:354  ', kind([real(kind=16)    :: [complex(kind=4) :: i2 ],[complex(kind=8) :: i2 ],[complex(kind=16) :: i2 ]]), ' ', kind(r16)
end if
if (kind([real(kind=16)    :: [complex(kind=4) :: i4 ],[complex(kind=8) :: i4 ],[complex(kind=16) :: i4 ]]).ne.kind(r16)) then
 print *, 'error  line:357  ', kind([real(kind=16)    :: [complex(kind=4) :: i4 ],[complex(kind=8) :: i4 ],[complex(kind=16) :: i4 ]]), ' ', kind(r16)
end if
if (kind([real(kind=16)    :: [complex(kind=4) :: i8 ],[complex(kind=8) :: i8 ],[complex(kind=16) :: i8 ]]).ne.kind(r16)) then
 print *, 'error  line:360  ', kind([real(kind=16)    :: [complex(kind=4) :: i8 ],[complex(kind=8) :: i8 ],[complex(kind=16) :: i8 ]]), ' ', kind(r16)
end if
if (kind([real(kind=16)    :: [complex(kind=4) :: r4 ],[complex(kind=8) :: r4 ],[complex(kind=16) :: r4 ]]).ne.kind(r16)) then
 print *, 'error  line:363  ', kind([real(kind=16)    :: [complex(kind=4) :: r4 ],[complex(kind=8) :: r4 ],[complex(kind=16) :: r4 ]]), ' ', kind(r16)
end if
if (kind([real(kind=16)    :: [complex(kind=4) :: r8 ],[complex(kind=8) :: r8 ],[complex(kind=16) :: r8 ]]).ne.kind(r16)) then
 print *, 'error  line:366  ', kind([real(kind=16)    :: [complex(kind=4) :: r8 ],[complex(kind=8) :: r8 ],[complex(kind=16) :: r8 ]]), ' ', kind(r16)
end if
if (kind([real(kind=16)    :: [complex(kind=4) :: r16],[complex(kind=8) :: r16],[complex(kind=16) :: r16]]).ne.kind(r16)) then
 print *, 'error  line:369  ', kind([real(kind=16)    :: [complex(kind=4) :: r16],[complex(kind=8) :: r16],[complex(kind=16) :: r16]]), ' ', kind(r16)
end if

if (kind([complex(kind=4)  :: [integer(kind=1) :: ],[integer(kind=2) :: ],[integer(kind=4) :: ],[integer(kind=8) :: ]]).ne.kind(c4 )) then
 print *, 'error  line:373  ', kind([complex(kind=4)  :: [integer(kind=1) :: ],[integer(kind=2) :: ],[integer(kind=4) :: ],[integer(kind=8) :: ]]), ' ', kind(c4 )
end if
if (kind([complex(kind=8)  :: [integer(kind=1) :: ],[integer(kind=2) :: ],[integer(kind=4) :: ],[integer(kind=8) :: ]]).ne.kind(c8 )) then
 print *, 'error  line:376  ', kind([complex(kind=8)  :: [integer(kind=1) :: ],[integer(kind=2) :: ],[integer(kind=4) :: ],[integer(kind=8) :: ]]), ' ', kind(c8 )
end if
if (kind([complex(kind=16) :: [integer(kind=1) :: ],[integer(kind=2) :: ],[integer(kind=4) :: ],[integer(kind=8) :: ]]).ne.kind(c16)) then
 print *, 'error  line:379  ', kind([complex(kind=16) :: [integer(kind=1) :: ],[integer(kind=2) :: ],[integer(kind=4) :: ],[integer(kind=8) :: ]]), ' ', kind(c16)
end if
if (kind([complex(kind=4)  :: [real(kind=4)    :: ],[real(kind=8)    :: ],[real(kind=16)   :: ]]).ne.kind(c4 )) then
 print *, 'error  line:382  ', kind([complex(kind=4)  :: [real(kind=4)    :: ],[real(kind=8)    :: ],[real(kind=16)   :: ]]), ' ', kind(c4 )
end if
if (kind([complex(kind=8)  :: [real(kind=4)    :: ],[real(kind=8)    :: ],[real(kind=16)   :: ]]).ne.kind(c8 )) then
 print *, 'error  line:385  ', kind([complex(kind=8)  :: [real(kind=4)    :: ],[real(kind=8)    :: ],[real(kind=16)   :: ]]), ' ', kind(c8)
end if
if (kind([complex(kind=16) :: [real(kind=4)    :: ],[real(kind=8)    :: ],[real(kind=16)   :: ]]).ne.kind(c16)) then
 print *, 'error  line:388  ', kind([complex(kind=16) :: [real(kind=4)    :: ],[real(kind=8)    :: ],[real(kind=16)   :: ]]), ' ', kind(c16)
end if

if (kind([complex(kind=4)  :: [integer(kind=1) :: r4 ],[integer(kind=2) :: r4 ],[integer(kind=4) :: r4 ],[integer(kind=8) :: r4 ]]).ne.kind(c4)) then
 print *, 'error  line:392  ', kind([complex(kind=4)  :: [integer(kind=1) :: r4 ],[integer(kind=2) :: r4 ],[integer(kind=4) :: r4 ],[integer(kind=8) :: r4 ]]), ' ', kind(c4)
end if
if (kind([complex(kind=4)  :: [integer(kind=1) :: r8 ],[integer(kind=2) :: r8 ],[integer(kind=4) :: r8 ],[integer(kind=8) :: r8 ]]).ne.kind(c4)) then
 print *, 'error  line:395  ', kind([complex(kind=4)  :: [integer(kind=1) :: r8 ],[integer(kind=2) :: r8 ],[integer(kind=4) :: r8 ],[integer(kind=8) :: r8 ]]), ' ', kind(c4)
end if
if (kind([complex(kind=4)  :: [integer(kind=1) :: r16],[integer(kind=2) :: r16],[integer(kind=4) :: r16],[integer(kind=8) :: r16]]).ne.kind(c4)) then
 print *, 'error  line:398  ', kind([complex(kind=4)  :: [integer(kind=1) :: r16],[integer(kind=2) :: r16],[integer(kind=4) :: r16],[integer(kind=8) :: r16]]), ' ', kind(c4)
end if
if (kind([complex(kind=4)  :: [integer(kind=1) :: c4 ],[integer(kind=2) :: c4 ],[integer(kind=4) :: c4 ],[integer(kind=8) :: c4 ]]).ne.kind(c4)) then
 print *, 'error  line:401  ', kind([complex(kind=4)  :: [integer(kind=1) :: c4 ],[integer(kind=2) :: c4 ],[integer(kind=4) :: c4 ],[integer(kind=8) :: c4 ]]), ' ', kind(c4)
end if
if (kind([complex(kind=4)  :: [integer(kind=1) :: c8 ],[integer(kind=2) :: c8 ],[integer(kind=4) :: c8 ],[integer(kind=8) :: c8 ]]).ne.kind(c4)) then
 print *, 'error  line:404  ', kind([complex(kind=4)  :: [integer(kind=1) :: c8 ],[integer(kind=2) :: c8 ],[integer(kind=4) :: c8 ],[integer(kind=8) :: c8 ]]), ' ', kind(c4)
end if
if (kind([complex(kind=4)  :: [integer(kind=1) :: c16],[integer(kind=2) :: c16],[integer(kind=4) :: c16],[integer(kind=8) :: c16]]).ne.kind(c4)) then
 print *, 'error  line:407  ', kind([complex(kind=4)  :: [integer(kind=1) :: c16],[integer(kind=2) :: c16],[integer(kind=4) :: c16],[integer(kind=8) :: c16]]), ' ', kind(c4)
end if
if (kind([complex(kind=4)  :: [real(kind=4)    :: i1 ],[real(kind=8)    :: i1 ],[real(kind=16)   :: i1 ]]).ne.kind(c4)) then
 print *, 'error  line:410  ', kind([complex(kind=4)  :: [real(kind=4)    :: i1 ],[real(kind=8)    :: i1 ],[real(kind=16)   :: i1 ]]), ' ', kind(c4)
end if
if (kind([complex(kind=4)  :: [real(kind=4)    :: i2 ],[real(kind=8)    :: i2 ],[real(kind=16)   :: i2 ]]).ne.kind(c4)) then
 print *, 'error  line:413  ', kind([complex(kind=4)  :: [real(kind=4)    :: i2 ],[real(kind=8)    :: i2 ],[real(kind=16)   :: i2 ]]), ' ', kind(c4)
end if
if (kind([complex(kind=4)  :: [real(kind=4)    :: i4 ],[real(kind=8)    :: i4 ],[real(kind=16)   :: i4 ]]).ne.kind(c4)) then
 print *, 'error  line:416  ', kind([complex(kind=4)  :: [real(kind=4)    :: i4 ],[real(kind=8)    :: i4 ],[real(kind=16)   :: i4 ]]), ' ', kind(c4)
end if
if (kind([complex(kind=4)  :: [real(kind=4)    :: i8 ],[real(kind=8)    :: i8 ],[real(kind=16)   :: i8 ]]).ne.kind(c4)) then
 print *, 'error  line:419  ', kind([complex(kind=4)  :: [real(kind=4)    :: i8 ],[real(kind=8)    :: i8 ],[real(kind=16)   :: i8 ]]), ' ', kind(c4)
end if
if (kind([complex(kind=4)  :: [real(kind=4)    :: c4 ],[real(kind=8)    :: c4 ],[real(kind=16)   :: c4 ]]).ne.kind(c4)) then
 print *, 'error  line:422  ', kind([complex(kind=4)  :: [real(kind=4)    :: c4 ],[real(kind=8)    :: c4 ],[real(kind=16)   :: c4 ]]), ' ', kind(c4)
end if
if (kind([complex(kind=4)  :: [real(kind=4)    :: c8 ],[real(kind=8)    :: c8 ],[real(kind=16)   :: c8 ]]).ne.kind(c4)) then
 print *, 'error  line:425  ', kind([complex(kind=4)  :: [real(kind=4)    :: c8 ],[real(kind=8)    :: c8 ],[real(kind=16)   :: c8 ]]), ' ', kind(c4)
end if
if (kind([complex(kind=4)  :: [real(kind=4)    :: c16],[real(kind=8)    :: c16],[real(kind=16)   :: c16]]).ne.kind(c4)) then
 print *, 'error  line:428  ', kind([complex(kind=4)  :: [real(kind=4)    :: c16],[real(kind=8)    :: c16],[real(kind=16)   :: c16]]), ' ', kind(c4)
end if

if (kind([complex(kind=8)  :: [integer(kind=1) :: r4 ],[integer(kind=2) :: r4 ],[integer(kind=4) :: r4 ],[integer(kind=8) :: r4 ]]).ne.kind(c8)) then
 print *, 'error  line:432  ', kind([complex(kind=8)  :: [integer(kind=1) :: r4 ],[integer(kind=2) :: r4 ],[integer(kind=4) :: r4 ],[integer(kind=8) :: r4 ]]), ' ', kind(c8)
end if
if (kind([complex(kind=8)  :: [integer(kind=1) :: r8 ],[integer(kind=2) :: r8 ],[integer(kind=4) :: r8 ],[integer(kind=8) :: r8 ]]).ne.kind(c8)) then
 print *, 'error  line:435  ', kind([complex(kind=8)  :: [integer(kind=1) :: r8 ],[integer(kind=2) :: r8 ],[integer(kind=4) :: r8 ],[integer(kind=8) :: r8 ]]), ' ', kind(c8)
end if
if (kind([complex(kind=8)  :: [integer(kind=1) :: r16],[integer(kind=2) :: r16],[integer(kind=4) :: r16],[integer(kind=8) :: r16]]).ne.kind(c8)) then
 print *, 'error  line:438  ', kind([complex(kind=8)  :: [integer(kind=1) :: r16],[integer(kind=2) :: r16],[integer(kind=4) :: r16],[integer(kind=8) :: r16]]), ' ', kind(c8)
end if
if (kind([complex(kind=8)  :: [integer(kind=1) :: c4 ],[integer(kind=2) :: c4 ],[integer(kind=4) :: c4 ],[integer(kind=8) :: c4 ]]).ne.kind(c8)) then
 print *, 'error  line:441  ', kind([complex(kind=8)  :: [integer(kind=1) :: c4 ],[integer(kind=2) :: c4 ],[integer(kind=4) :: c4 ],[integer(kind=8) :: c4 ]]), ' ', kind(c8)
end if
if (kind([complex(kind=8)  :: [integer(kind=1) :: c8 ],[integer(kind=2) :: c8 ],[integer(kind=4) :: c8 ],[integer(kind=8) :: c8 ]]).ne.kind(c8)) then
 print *, 'error  line:444  ', kind([complex(kind=8)  :: [integer(kind=1) :: c8 ],[integer(kind=2) :: c8 ],[integer(kind=4) :: c8 ],[integer(kind=8) :: c8 ]]), ' ', kind(c8)
end if
if (kind([complex(kind=8)  :: [integer(kind=1) :: c16],[integer(kind=2) :: c16],[integer(kind=4) :: c16],[integer(kind=8) :: c16]]).ne.kind(c8)) then
 print *, 'error  line:447  ', kind([complex(kind=8)  :: [integer(kind=1) :: c16],[integer(kind=2) :: c16],[integer(kind=4) :: c16],[integer(kind=8) :: c16]]), ' ', kind(c8)
end if
if (kind([complex(kind=8)  :: [real(kind=4)    :: i1 ],[real(kind=8)    :: i1 ],[real(kind=16)   :: i1 ]]).ne.kind(c8)) then
 print *, 'error  line:450  ', kind([complex(kind=8)  :: [real(kind=4)    :: i1 ],[real(kind=8)    :: i1 ],[real(kind=16)   :: i1 ]]), ' ', kind(c8)
end if
if (kind([complex(kind=8)  :: [real(kind=4)    :: i2 ],[real(kind=8)    :: i2 ],[real(kind=16)   :: i2 ]]).ne.kind(c8)) then
 print *, 'error  line:453  ', kind([complex(kind=8)  :: [real(kind=4)    :: i2 ],[real(kind=8)    :: i2 ],[real(kind=16)   :: i2 ]]), ' ', kind(c8)
end if
if (kind([complex(kind=8)  :: [real(kind=4)    :: i4 ],[real(kind=8)    :: i4 ],[real(kind=16)   :: i4 ]]).ne.kind(c8)) then
 print *, 'error  line:456  ', kind([complex(kind=8)  :: [real(kind=4)    :: i4 ],[real(kind=8)    :: i4 ],[real(kind=16)   :: i4 ]]), ' ', kind(c8)
end if
if (kind([complex(kind=8)  :: [real(kind=4)    :: i8 ],[real(kind=8)    :: i8 ],[real(kind=16)   :: i8 ]]).ne.kind(c8)) then
 print *, 'error  line:459  ', kind([complex(kind=8)  :: [real(kind=4)    :: i8 ],[real(kind=8)    :: i8 ],[real(kind=16)   :: i8 ]]), ' ', kind(c8)
end if
if (kind([complex(kind=8)  :: [real(kind=4)    :: c4 ],[real(kind=8)    :: c4 ],[real(kind=16)   :: c4 ]]).ne.kind(c8)) then
 print *, 'error  line:462  ', kind([complex(kind=8)  :: [real(kind=4)    :: c4 ],[real(kind=8)    :: c4 ],[real(kind=16)   :: c4 ]]), ' ', kind(c8)
end if
if (kind([complex(kind=8)  :: [real(kind=4)    :: c8 ],[real(kind=8)    :: c8 ],[real(kind=16)   :: c8 ]]).ne.kind(c8)) then
 print *, 'error  line:465  ', kind([complex(kind=8)  :: [real(kind=4)    :: c8 ],[real(kind=8)    :: c8 ],[real(kind=16)   :: c8 ]]), ' ', kind(c8)
end if
if (kind([complex(kind=8)  :: [real(kind=4)    :: c16],[real(kind=8)    :: c16],[real(kind=16)   :: c16]]).ne.kind(c8)) then
 print *, 'error  line:468  ', kind([complex(kind=8)  :: [real(kind=4)    :: c16],[real(kind=8)    :: c16],[real(kind=16)   :: c16]]), ' ', kind(c8)
end if

if (kind([complex(kind=16) :: [integer(kind=1) :: r4 ],[integer(kind=2) :: r4 ],[integer(kind=4) :: r4 ],[integer(kind=8) :: r4 ]]).ne.kind(c16)) then
 print *, 'error  line:472  ', kind([complex(kind=16) :: [integer(kind=1) :: r4 ],[integer(kind=2) :: r4 ],[integer(kind=4) :: r4 ],[integer(kind=8) :: r4 ]]), ' ', kind(c16)
end if
if (kind([complex(kind=16) :: [integer(kind=1) :: r8 ],[integer(kind=2) :: r8 ],[integer(kind=4) :: r8 ],[integer(kind=8) :: r8 ]]).ne.kind(c16)) then
 print *, 'error  line:475  ', kind([complex(kind=16) :: [integer(kind=1) :: r8 ],[integer(kind=2) :: r8 ],[integer(kind=4) :: r8 ],[integer(kind=8) :: r8 ]]), ' ', kind(c16)
end if
if (kind([complex(kind=16) :: [integer(kind=1) :: r16],[integer(kind=2) :: r16],[integer(kind=4) :: r16],[integer(kind=8) :: r16]]).ne.kind(c16)) then
 print *, 'error  line:478  ', kind([complex(kind=16) :: [integer(kind=1) :: r16],[integer(kind=2) :: r16],[integer(kind=4) :: r16],[integer(kind=8) :: r16]]), ' ', kind(c16)
end if
if (kind([complex(kind=16) :: [integer(kind=1) :: c4 ],[integer(kind=2) :: c4 ],[integer(kind=4) :: c4 ],[integer(kind=8) :: c4 ]]).ne.kind(c16)) then
 print *, 'error  line:481  ', kind([complex(kind=16) :: [integer(kind=1) :: c4 ],[integer(kind=2) :: c4 ],[integer(kind=4) :: c4 ],[integer(kind=8) :: c4 ]]), ' ', kind(c16)
end if
if (kind([complex(kind=16) :: [integer(kind=1) :: c8 ],[integer(kind=2) :: c8 ],[integer(kind=4) :: c8 ],[integer(kind=8) :: c8 ]]).ne.kind(c16)) then
 print *, 'error  line:484  ', kind([complex(kind=16) :: [integer(kind=1) :: c8 ],[integer(kind=2) :: c8 ],[integer(kind=4) :: c8 ],[integer(kind=8) :: c8 ]]), ' ', kind(c16)
end if
if (kind([complex(kind=16) :: [integer(kind=1) :: c16],[integer(kind=2) :: c16],[integer(kind=4) :: c16],[integer(kind=8) :: c16]]).ne.kind(c16)) then
 print *, 'error  line:487  ', kind([complex(kind=16) :: [integer(kind=1) :: c16],[integer(kind=2) :: c16],[integer(kind=4) :: c16],[integer(kind=8) :: c16]]), ' ', kind(c16)
end if
if (kind([complex(kind=16) :: [real(kind=4)    :: i1 ],[real(kind=8)    :: i1 ],[real(kind=16)   :: i1 ]]).ne.kind(c16)) then
 print *, 'error  line:490  ', kind([complex(kind=16) :: [real(kind=4)    :: i1 ],[real(kind=8)    :: i1 ],[real(kind=16)   :: i1 ]]), ' ', kind(c16)
end if
if (kind([complex(kind=16) :: [real(kind=4)    :: i2 ],[real(kind=8)    :: i2 ],[real(kind=16)   :: i2 ]]).ne.kind(c16)) then
 print *, 'error  line:493  ', kind([complex(kind=16) :: [real(kind=4)    :: i2 ],[real(kind=8)    :: i2 ],[real(kind=16)   :: i2 ]]), ' ', kind(c16)
end if
if (kind([complex(kind=16) :: [real(kind=4)    :: i4 ],[real(kind=8)    :: i4 ],[real(kind=16)   :: i4 ]]).ne.kind(c16)) then
 print *, 'error  line:496  ', kind([complex(kind=16) :: [real(kind=4)    :: i4 ],[real(kind=8)    :: i4 ],[real(kind=16)   :: i4 ]]), ' ', kind(c16)
end if
if (kind([complex(kind=16) :: [real(kind=4)    :: i8 ],[real(kind=8)    :: i8 ],[real(kind=16)   :: i8 ]]).ne.kind(c16)) then
 print *, 'error  line:499  ', kind([complex(kind=16) :: [real(kind=4)    :: i8 ],[real(kind=8)    :: i8 ],[real(kind=16)   :: i8 ]]), ' ', kind(c16)
end if
if (kind([complex(kind=16) :: [real(kind=4)    :: c4 ],[real(kind=8)    :: c4 ],[real(kind=16)   :: c4 ]]).ne.kind(c16)) then
 print *, 'error  line:502  ', kind([complex(kind=16) :: [real(kind=4)    :: c4 ],[real(kind=8)    :: c4 ],[real(kind=16)   :: c4 ]]), ' ', kind(c16)
end if
if (kind([complex(kind=16) :: [real(kind=4)    :: c8 ],[real(kind=8)    :: c8 ],[real(kind=16)   :: c8 ]]).ne.kind(c16)) then
 print *, 'error  line:505  ', kind([complex(kind=16) :: [real(kind=4)    :: c8 ],[real(kind=8)    :: c8 ],[real(kind=16)   :: c8 ]]), ' ', kind(c16)
end if
if (kind([complex(kind=16) :: [real(kind=4)    :: c16],[real(kind=8)    :: c16],[real(kind=16)   :: c16]]).ne.kind(c16)) then
 print *, 'error  line:508  ', kind([complex(kind=16) :: [real(kind=4)    :: c16],[real(kind=8)    :: c16],[real(kind=16)   :: c16]]), ' ', kind(c16)
end if

print *,'pass'

end
