integer,pointer :: int01(:),int03(:)
integer       :: int02(2)
integer :: ii
int02=3
allocate(int01,int03,source=int02(1:ii),stat=ii)
print*,sizeof(int01)
print*,sizeof(int03)
END PROGRAM

