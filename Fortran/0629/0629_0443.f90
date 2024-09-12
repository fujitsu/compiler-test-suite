      type bb
        integer,dimension(5)::ii=(/(i,i=1,5)/)
      end type
      type aa
        type(bb),allocatable,dimension(:)::type_bb_alo
      end type
      type (aa) :: type_aa
      type (bb) :: type_bb
      integer::jj=0

      allocate(type_aa%type_bb_alo(2))
      type_aa%type_bb_alo(:)=type_bb

      if (  &
        any( type_aa%type_bb_alo(1)%ii /= (/1,2,3,4,5/) )  &
        .or. &
        any( type_aa%type_bb_alo(2)%ii /= (/1,2,3,4,5/) )  &
      ) then
        jj = jj - 1
      else
        jj = jj + 1
      endif

      deallocate(type_aa%type_bb_alo)
      allocate(type_aa%type_bb_alo(1))
      type_aa%type_bb_alo(:)=type_bb

      if (  &
        any( type_aa%type_bb_alo(1)%ii /= (/1,2,3,4,5/) )  &
      ) then
        jj = jj - 1
      else
        jj = jj + 1
      endif

      if (jj==2) then
        print *,'ok'
      else
        print *,'ng'
      endif

      end
