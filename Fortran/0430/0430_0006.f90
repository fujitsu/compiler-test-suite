module mod1
type ::ty2(i)
integer,kind::i=4
character(len=i):: chk( 4,i )
character(len=i):: chk2( i, 4 )
character(len=4):: chk3( 4,i )
character(len=4):: chk4( i, 4 )
character(len=i):: chk5( 4, 4 )
character(len=4):: chk6( i, 4 )
character(len=4):: chk7( 4, i )
character(len=4):: chk8( i, i )
end type
TYPE(ty2(4))   ::y
end

use mod1
if(len(y%chk) .ne. 4 .or. ubound(y%chk,1) .ne. 4 .or. y%i .ne.4)print *,101
if(len(y%chk2) .ne. 4 .or. ubound(y%chk2,1) .ne. 4 .or. y%i .ne.4)print *,102
if(len(y%chk3) .ne. 4 .or. ubound(y%chk3,1) .ne. 4 .or. y%i .ne.4)print *,103
if(len(y%chk4) .ne. 4 .or. ubound(y%chk4,1) .ne. 4 .or. y%i .ne.4)print *,104
if(len(y%chk5) .ne. 4 .or. ubound(y%chk5,1) .ne. 4 .or. y%i .ne.4)print *,105
if(len(y%chk6) .ne. 4 .or. ubound(y%chk6,1) .ne. 4 .or. y%i .ne.4)print *,106
if(len(y%chk7) .ne. 4 .or. ubound(y%chk7,1) .ne. 4 .or. y%i .ne.4)print *,107
if(len(y%chk8) .ne. 4 .or. ubound(y%chk8,1) .ne. 4 .or. y%i .ne.4)print *,108
print*,'pass'
end
