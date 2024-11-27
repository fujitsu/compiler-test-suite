 type a
   integer ::a1=1
 end type
 type (a),allocatable,dimension(:):: x0
 type (a),pointer    ,dimension(:):: x1
 allocate(x0(2))
 write(1,*)x0
 allocate(x1(2))
 write(1,*) x1
 rewind 1
 read (1,*) i1,i2
 if (i1/=1)write(6,*) "NG"
 if (i2/=1)write(6,*) "NG"
 read (1,*) i1,i2
 if (i1/=1)write(6,*) "NG"
 if (i2/=1)write(6,*) "NG"
 print *,'pass'
 end
