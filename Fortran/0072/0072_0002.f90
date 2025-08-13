subroutine s1
namelist /nam/ k1,b,c
integer::k1
dimension b(2)
pointer::c
b=1
allocate(c)
c=1
k1=1
write(3,nam)
end
subroutine s2
implicit integer(a,b)
         namelist /nam/aaa,bbb
         integer,pointer::aaa
         integer,allocatable::bbb(:)
         allocate(aaa)
         allocate(bbb(3))
         aaa=1
         bbb=2
         write(16,nam)
         end
subroutine s3
implicit integer(a,b)
         integer,pointer::aaa
         integer,allocatable::bbb(:)
         namelist /nam/aaa,bbb
         allocate(aaa)
         allocate(bbb(3))
         aaa=1
         bbb=2
         write(16,nam)
         end
subroutine s4
implicit integer(a,b)
         namelist /nam/aaa,bbb
         integer,pointer::aaa
         integer,allocatable::bbb
         allocate(aaa)
         allocate(bbb)
         aaa=1
         bbb=2
         write(16,nam)
         end

call s1
call s2
call s3
call s4
call chk
print *,'pass'
end
subroutine chk
integer::aaa,bbb(3)
         namelist /nam/aaa,bbb
rewind 16
read(16,nam)
if (aaa/=1) print *,101
if (any(bbb/=2)) print *,201
end
