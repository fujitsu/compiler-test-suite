c
c
      call s1
      print *,'pass'
      end
      subroutine s1
         interface
           subroutine ss2(pp,j,z)
              character,target::pp(j)
              character(*)::z
           end subroutine
         end interface
      character,target::pp(2)=(/'1','2'/)
      call ss2(pp,2,'')
      end
      subroutine ss2(pp,j,z)
      character(*)::z
      type t; character         tvs,tva(2);end type
      type (t),pointer::et2(:)
      type w; integer i;character :: pva(2);end type
      type (w)::ww
      character,target::aa(2)=(/'1','2'/)
      character(*),target::pp(j)
      character,pointer::bb(:)
      type df
        integer df_i
        character        ::ee(2)
        character,pointer::dd(:)
      end type
      type(df),target::ds
      type(df),pointer::dq
      integer ::v(2)=(/1,2/),unit
      i=1;unit=11
      open(unit,delim='quote')
      allocate(dq)
      dq%ee(:)=(/'1','2'/)
      allocate(dq%dd(2));dq%dd(:)=(/'1','2'/)
      ds%ee(:)=(/'1','2'/)
      allocate(ds%dd(2));ds%dd(:)=(/'1','2'/)
      allocate(bb(2));bb(:)=(/'1','2'/)
      allocate(et2(2));et2%tvs=(/'1','2'/)
      ww=w(1,z//et2     %tvs); call chk(ww)
      write(unit,*)ww,w(1,z//et2     %tvs),z//et2%tvs;call io
      ww=w(1,z//et2(:  )%tvs); call chk(ww)
      write(unit,*)ww,w(1,z//et2(:)  %tvs),z//et2(:)%tvs;call io
      ww=w(1,z//et2(::1)%tvs); call chk(ww)
      write(unit,*)ww,w(1,z//et2(::1)  %tvs),z//et2(::1)%tvs;call io
      ww=w(1,z//et2(::i)%tvs); call chk(ww)
      write(unit,*)ww,w(1,z//et2(::i)  %tvs),z//et2(::i)%tvs;call io
      ww=w(1,z//et2(v  )%tvs); call chk(ww)
      write(unit,*)ww,w(1,z//et2(v)  %tvs),z//et2(v)%tvs;call io
      ww=w(1,z//aa          ); call chk(ww)
      write(unit,*)ww,w(1,z//aa            ),z//aa        ;call io
      ww=w(1,z//aa(:  )     ); call chk(ww)
      write(unit,*)ww,w(1,z//aa(:)            ),z//aa(:)     ;call io
      ww=w(1,z//aa(::1)     ); call chk(ww)
      write(unit,*)ww,w(1,z//aa(::1)         ),z//aa(::1)     ;call io
      ww=w(1,z//aa(::i)     ); call chk(ww)
      write(unit,*)ww,w(1,z//aa(::i)       ),z//aa(::i)     ;call io
      ww=w(1,z//aa(v  )     ); call chk(ww)
      write(unit,*)ww,w(1,z//aa(v)            ),z//aa(v)     ;call io
      ww=w(1,z//bb          ); call chk(ww)
      write(unit,*)ww,w(1,z//bb            ),z//bb        ;call io
      ww=w(1,z//bb(:  )     ); call chk(ww)
      write(unit,*)ww,w(1,z//bb(:)            ),z//bb(:)     ;call io
      ww=w(1,z//bb(::1)     ); call chk(ww)
      write(unit,*)ww,w(1,z//bb(::1)        ),z//bb(::1)     ;call io
      ww=w(1,z//bb(::i)     ); call chk(ww)
      write(unit,*)ww,w(1,z//bb(::i)      ),z//bb(::i)     ;call io
      ww=w(1,z//bb(v  )     ); call chk(ww)
      write(unit,*)ww,w(1,z//bb(v)            ),z//bb(v)     ;call io
      ww=w(1,z//ds%dd          ); call chk(ww)
      write(unit,*)ww,w(1,z//ds%dd         ),z//ds%dd     ;call io
      ww=w(1,z//ds%dd(:  )     ); call chk(ww)
      write(unit,*)ww,w(1,z//ds%dd(:)      ),z//ds%dd(:)  ;call io
      ww=w(1,z//ds%dd(::1)     ); call chk(ww)
      write(unit,*)ww,w(1,z//ds%dd(::1)      ),z//ds%dd(::1)  ;call io
      ww=w(1,z//ds%dd(::i)     ); call chk(ww)
      write(unit,*)ww,w(1,z//ds%dd(::i)      ),z//ds%dd(::i)  ;call io
      ww=w(1,z//ds%dd(v  )     ); call chk(ww)
      write(unit,*)ww,w(1,z//ds%dd(v)      ),z//ds%dd(v)  ;call io
      ww=w(1,z//ds%ee          ); call chk(ww)
      write(unit,*)ww,w(1,z//ds%ee         ),z//ds%ee     ;call io
      ww=w(1,z//ds%ee(:)     ); call chk(ww)
      write(unit,*)ww,w(1,z//ds%ee(:)      ),z//ds%ee(:)     ;call io
      ww=w(1,z//ds%ee(::1)     ); call chk(ww)
      write(unit,*)ww,w(1,z//ds%ee(::1)   ),z//ds%ee(::1)     ;call io
      ww=w(1,z//ds%ee(::i)     ); call chk(ww)
      write(unit,*)ww,w(1,z//ds%ee(::i)   ),z//ds%ee(::i)     ;call io
      ww=w(1,z//ds%ee(v)     ); call chk(ww)
      write(unit,*)ww,w(1,z//ds%ee(v)    ),z//ds%ee(v)     ;call io
      ww=w(1,z//dq%dd          ); call chk(ww)
      write(unit,*)ww,w(1,z//dq%dd         ),z//dq%dd     ;call io
      ww=w(1,z//dq%dd(:  )     ); call chk(ww)
      write(unit,*)ww,w(1,z//dq%dd(:)      ),z//dq%dd(:)  ;call io
      ww=w(1,z//dq%dd(::1)     ); call chk(ww)
      write(unit,*)ww,w(1,z//dq%dd(::1)    ),z//dq%dd(::1)  ;call io
      ww=w(1,z//dq%dd(::i)     ); call chk(ww)
      write(unit,*)ww,w(1,z//dq%dd(::i)   ),z//dq%dd(::i)  ;call io
      ww=w(1,z//dq%dd(v  )     ); call chk(ww)
      write(unit,*)ww,w(1,z//dq%dd(v)      ),z//dq%dd(v)  ;call io
      ww=w(1,z//dq%ee          ); call chk(ww)
      write(unit,*)ww,w(1,z//dq%ee         ),z//dq%ee     ;call io
      ww=w(1,z//dq%ee(:)     ); call chk(ww)
      write(unit,*)ww,w(1,z//dq%ee(:)      ),z//dq%ee(:)  ;call io
      ww=w(1,z//dq%ee(::1)     ); call chk(ww)
      write(unit,*)ww,w(1,z//dq%ee(::1)      ),z//dq%ee(::1)  ;call io
      ww=w(1,z//dq%ee(::i)     ); call chk(ww)
      write(unit,*)ww,w(1,z//dq%ee(::i)      ),z//dq%ee(::i)    ;call io
      ww=w(1,z//dq%ee(v)     ); call chk(ww)
      write(unit,*)ww,w(1,z//dq%ee(v)      ),z//dq%ee(v)     ;call io
      ww=w(1,z//pp          ); call chk(ww)
      write(unit,*)ww,w(1,z//pp            ),z//pp        ;call io
      ww=w(1,z//pp(:  )     ); call chk(ww)
      write(unit,*)ww,w(1,z//pp(:)            ),z//pp(:)     ;call io
      ww=w(1,z//pp(::1)     ); call chk(ww)
      write(unit,*)ww,w(1,z//pp(::1)      ),z//pp(::1)     ;call io
      ww=w(1,z//pp(::i)     ); call chk(ww)
      write(unit,*)ww,w(1,z//pp(::i)        ),z//pp(::i)     ;call io
      ww=w(1,z//pp(v  )     ); call chk(ww)
      write(unit,*)ww,w(1,z//pp(v)            ),z//pp(v)     ;call io
      contains
      subroutine chk(z)
      type (w)::z
      if (ww%i/=z%i)print *,'fail'
      if (any(ww%pva/=z%pva))print *,'fail'
      if (any(ww%pva/=(/'1','2'/)))print *,'fail'
      if (size(ww%pva)/=size(z%pva))print *,'fail'
      end subroutine
      subroutine io
      type read
       integer i1
       character i2(2)
       integer i3
       character i4(4)
      end type
      type(read),pointer:: data
      allocate(data)
      rewind unit
      read(unit,*)data
      if (data%i1/=1)print *,'fail'
      if (any(data%i2/=(/'1','2'/)))print *,'fail'
      if (data%i3/=1)print *,'fail'
      if (any(data%i4/=(/'1','2','1','2'/)))print *,'fail'
      unit=unit+1
      open(unit,delim='quote')
      end subroutine
      end
