PROGRAM MAIN
  IMPLICIT NONE
  type base
   integer :: j1=2
  end type

  type,extends(base) :: tt1
   integer :: i1=3
  end type

  type,extends(tt1) :: textend
   character(len=3) :: ch(2)='hhh'
   character(len=5) :: ch2(2)='ppp'
  end type

  type container
   type(textend), allocatable :: src
   class(base),  POINTER:: vsar,bsar,csar
   class(base),  ALLOCATABLE:: wsar,nsar
   class(base),  POINTER:: var(:,:),bar(:),car(:)
   class(base),  ALLOCATABLE:: war(:),nar(:,:,:)
  end type

  type(container) :: object

  allocate(object%src)
  object%src=textend(6,5,['pwd','lwd'])
  allocate(object%bar(5),object%var(5,4),object%csar,object%nar(4,5,2),object%car(5),object%war(5),&
           object%bsar,object%vsar,object%nsar,object%wsar, MOLD= object%src)

  if(sizeof(object%var)/=24*20) print*,701,sizeof(object%var)
  if(sizeof(object%vsar)/=24) print*,702,sizeof(object%vsar)

  select type(v=>object%var)
  type is(textend)
  select type(b=>object%bar)
  type is(textend)
  select type(c=>object%car)
  type is(textend)
  select type(w=>object%war)
  type is(textend)
  select type(n=>object%nar)
  type is(textend)
  select type(vs=>object%vsar)
  type is(textend)
  select type(bs=>object%bsar)
  type is(textend)
  select type(cs=>object%csar)
  type is(textend)
  select type(ws=>object%wsar)
  type is(textend)
  select type(ns=>object%nsar)
  type is(textend)
   if(size(v)==5*4) print *,'pass'
   if(len(v%ch(1))/=3) print*,301
   if(any(v%i1/=3)) print*,501
   if(any(v%ch(2)/='hhh')) print*,601

   if(size(b)/=5) print *,201
   if(len(b%ch(1))/=3) print*,302
   if(any(b%i1/=3)) print*,502
   if(any(b%ch(2)/='hhh')) print*,602

   if(size(n)/=5*4*2) print *,202
   if(len(n%ch(1))/=3) print*,303
   if(any(n%i1/=3)) print*,503
   if(any(n%ch(2)/='hhh')) print*,603

   if(size(c)/=5) print *,203
   if(len(c%ch(1))/=3) print*,304
   if(any(c%i1/=3)) print*,504
   if(any(c%ch(2)/='hhh')) print*,604

   if(size(w)/=5) print *,204
   if(len(w%ch(1))/=3) print*,305
   if(any(w%i1/=3)) print*,505
   if(any(w%ch(2)/='hhh')) print*,605

   if(len(vs%ch(1))/=3) print*,306
   if((vs%i1/=3)) print*,506
   if((vs%ch(2)/='hhh')) print*,606

   if(len(bs%ch(1))/=3) print*,307
   if((bs%i1/=3)) print*,507
   if((bs%ch(2)/='hhh')) print*,607

   if(len(cs%ch(1))/=3) print*,308
   if((cs%i1/=3)) print*,508
   if((cs%ch(2)/='hhh')) print*,608

   if(len(ws%ch(1))/=3) print*,309
   if((ws%i1/=3)) print*,509
   if((ws%ch(2)/='hhh')) print*,609

   if(len(ns%ch(1))/=3) print*,310
   if((ns%i1/=3)) print*,510
   if((ns%ch(2)/='hhh')) print*,610

  class default
   print*,401
  end select
  class default
   print*,402
  end select
  class default
   print*,403
  end select
  class default
   print*,404
  end select
  class default
   print*,405
  end select
  class default
   print*,406
  end select
  class default
   print*,407
  end select
  class default
   print*,408
  end select
  class default
   print*,409
  end select
  class default
   print*,410
  end select
END PROGRAM
