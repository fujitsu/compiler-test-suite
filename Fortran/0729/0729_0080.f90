implicit none
integer,parameter::r16kind=16,r8kind=8,i8kind=8
real(r16kind):: r16
real(r8kind ):: r8
integer(i8kind):: i8
r16=12345.0_r16kind
r8=23456.0_r8kind
i8=34567_i8kind

write(116,*)'max(i8,r16)=>',max(i8,r16)
write(116,*)'min(i8,r16)=>',min(i8,r16)

r16 = r8
write(116,*)'r16=>',r16

r16 = 12345.0_r16kind

write(116,*)'int(r16,i8kind),kind( int(r16,i8kind) )=>',&
         int(r16,i8kind),kind( int(r16,i8kind) )
print *,'pass'

end
