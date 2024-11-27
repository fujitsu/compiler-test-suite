integer,pointer :: int01(:)
integer       :: int02(2)
integer :: ii
int02=3
allocate(int01,mold=int02(1:ii),stat=ii)
print*,sizeof(int01)
END PROGRAM

