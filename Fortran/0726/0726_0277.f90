 type a
   integer ::a1=1
 end type
 type (a),allocatable,dimension(:):: x0
 type (a),pointer    ,dimension(:):: x1
 allocate(x0(2))
 write(70,*)x0
 allocate(x1(2))
 write(70,*) x1
 rewind 70
 read (70,*) i1,i2
 if (i1/=1)write(6,*) "NG"
 if (i2/=1)write(6,*) "NG"
 read (70,*) i1,i2
 if (i1/=1)write(6,*) "NG"
 if (i2/=1)write(6,*) "NG"
 print *,'pass'
 end
