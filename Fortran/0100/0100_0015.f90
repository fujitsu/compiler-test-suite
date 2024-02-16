complex(2)::c=2,c1
integer(4)::i4=10
integer(4)::i2=10
integer(4)::i8=10
real(2)::r2=10
real(4)::r4=10
real(8)::r8=10
real(16)::r16=10
complex(4)::c4=(10.0,0.0)
complex(8)::c8=10.0
complex(16)::c32=10
c1=i4/c
if( c1 .ne. (5.0,0.0))print*,101
c1=i2/c
if( c1 .ne. (5.0,0.0))print*,102
c1=i8/c
if( c1 .ne. (5.0,0.0))print*,103
c1=r2/c
if( c1 .ne. (5.0,0.0))print*,104
c1=r4/c
if( c1 .ne. (5.0,0.0))print*,105
c1=r8/c
if( c1 .ne. (5.0,0.0))print*,106
c1=r16/c
if( c1 .ne. (5.0,0.0))print*,107
c1=c4/c
if( c1 .ne. (5.0,0.0))print*,108
c1=c8/c
if( c1 .ne. (5.0,0.0))print*,109
c1=c32/c
if( c1 .ne. (5.0,0.0))print*,110
print*,"pass"
end

