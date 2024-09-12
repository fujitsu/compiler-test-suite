subroutine s1
  type x
     integer:: a1
     integer,allocatable:: a2(:)
     integer:: a3
 end type
 type(x):: v1(3),v2(3)
 logical::mask(3)=.true.
 allocate(v1(1)%a2(2))
 allocate(v1(2)%a2(2))
 allocate(v1(3)%a2(2))
 v1(1)%a2=10
 v1(2)%a2=10
 v1(3)%a2=10
 v1   %a1=100
 v1   %a3=101
 allocate(v2(1)%a2(3))
 allocate(v2(2)%a2(3))
 allocate(v2(3)%a2(3))
 v2(1)%a2=11
 v2(2)%a2=11
 v2(3)%a2=11
 v2   %a1=110
 v2   %a3=111
where (mask)
 v1=v2
end where
 if (any(v1(1)%a2(:3)/=11)) print *,101
 if (any(v1(2)%a2(:3)/=11)) print *,102
 if (any(v1(3)%a2(:3)/=11)) print *,103
 if (any(v1   %a1    /=110)) print *,104
 if (any(v1   %a3    /=111)) print *,105
 if (any(v2(1)%a2(:3)/=11)) print *,201
 if (any(v2(2)%a2(:3)/=11)) print *,202
 if (any(v2(3)%a2(:3)/=11)) print *,203
 if (any(v2   %a1    /=110)) print *,204
 if (any(v2   %a3    /=111)) print *,205
end
call s1
print *,'pass'
end
