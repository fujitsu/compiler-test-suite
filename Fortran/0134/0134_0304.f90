subroutine s1
type ty1
 sequence
end type
type ty2
  sequence
  type(ty1):: s
  integer:: r
end type
type(ty2)::str,str2
type ty3
 sequence
 type(ty2)::str
 integer(8)::k
end type
type(ty3)::str3
type(ty1)::str0(2)
common /com/ str,i4
write(1,*),loc(str%r)-loc(str%s)
write(1,*),loc(i4)-loc(str)
write(1,*),sizeof(str)
write(1,*),' '
write(1,*),loc(str2%r)-loc(str2%s)
write(1,*),sizeof(str2)
write(1,*),' '
write(1,*),loc(str3%k)-loc(str3)
write(1,*),sizeof(str3)
write(1,*),' '
write(1,*),loc(str0(2))-loc(str0(1))
write(1,*),sizeof(str0)
end
call s1
print *,'pass'
end
