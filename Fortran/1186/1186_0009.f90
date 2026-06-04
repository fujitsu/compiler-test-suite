subroutine s
!!!! implicit none
  block
allocatable::&
&     a00010,a00011,a00012,a00013,a00014,a00015,a00016,a00017
allocate( a00010,a00011,a00012,a00013,a00014,a00015,a00016,a00017 )
a00010=1.1
!a00011=1.1
!a00012=1.1
!a00013=1.1
!a00014=1.1
!a00015=1.1
!a00016=1.1
!a00017=1.1
!if (a00010/=1.1) print *,1001
!if (a00011/=1.1) print *,1001
!if (a00012/=1.1) print *,1001
!if (a00013/=1.1) print *,1001
!if (a00014/=1.1) print *,1001
!if (a00015/=1.1) print *,1001
!if (a00016/=1.1) print *,1001
!if (a00017/=1.1) print *,1001
end  block
end
call s
print *,'sngg332p : pass'
end
