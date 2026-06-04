c
c
      call s1
      print *,'pass'
      end
      subroutine s1
         interface
           subroutine ss2(pp,j,z)
              character,target::pp(j,j)
              character(*)::z
           end subroutine
         end interface
      character,target::pp(2,2)=reshape((/'1','2','3','4'/),(/2,2/))
      call ss2(pp,2,'')
      end
      subroutine ss2(pp,j,z)
      character(*)::z
      type t; character         tvs,tva(2,2);end type
      type (t),pointer::et2(:,:)
      type w; integer i;character :: pva(2,2);end type
      type (w)::ww
      character,target::aa(2,2)=reshape((/'1','2','3','4'/),(/2,2/))
      character(*),target::pp(j,j)
      character,pointer::bb(:,:)
      type df
        integer df_i
        character        ::ee(2,2)
        character,pointer::dd(:,:)
      end type
      type(df),target::ds
      type(df),pointer::dq
      integer ::v(2)=(/1,2/),unit
      i=1;unit=11
      open(unit,delim='quote')
      allocate(dq)
      dq%ee(:,:)=reshape((/'1','2','3','4'/),(/2,2/))
      allocate(dq%dd(2,2));
      dq%dd(:,:)=reshape((/'1','2','3','4'/),(/2,2/))
      ds%ee(:,:)=reshape((/'1','2','3','4'/),(/2,2/))
      allocate(ds%dd(2,2));
      ds%dd(:,:)=reshape((/'1','2','3','4'/),(/2,2/))
      allocate(bb(2,2));bb(:,:)=reshape((/'1','2','3','4'/),(/2,2/))
      allocate(et2(2,2));et2%tvs=reshape((/'1','2','3','4'/),(/2,2/))
      ww=w(1,z//et2     %tvs); call chk(ww)
      write(unit,*)ww,w(1,z//et2     %tvs),z//et2%tvs;call io
      ww=w(1,z//et2(:,:)%tvs); call chk(ww)
      write(unit,*)ww,w(1,z//et2(:,:)  %tvs),z//et2(:,:)%tvs;call io
      ww=w(1,z//et2(::1,::1)%tvs); call chk(ww)
      write(unit,*)ww,w(1,z//et2(::1,::1)  %tvs),
     1   z//et2(::1,::1)%tvs;call io
      ww=w(1,z//et2(::i,::i)%tvs); call chk(ww)
      write(unit,*)ww,w(1,z//et2(::i,::i)  %tvs),
     1    z//et2(::i,::i)%tvs;call io
      ww=w(1,z//et2(v,v)%tvs); call chk(ww)
      write(unit,*)ww,w(1,z//et2(v,v)  %tvs),z//et2(v,v)%tvs;call io
      ww=w(1,z//aa     ); call chk(ww)
      write(unit,*)ww,w(1,z//aa       ),z//aa        ;call io
      ww=w(1,z//aa(:,:)); call chk(ww)
      write(unit,*)ww,w(1,z//aa(:,:)       ),z//aa(:,:)     ;call io
      ww=w(1,z//aa(::1,::1)); call chk(ww)
      write(unit,*)ww,w(1,z//aa(::1,::1)   ),z//aa(::1,::1)     ;call io
      ww=w(1,z//aa(::i,::i)); call chk(ww)
      write(unit,*)ww,w(1,z//aa(::i,::i)  ),z//aa(::i,::i)     ;call io
      ww=w(1,z//aa(v,v)); call chk(ww)
      write(unit,*)ww,w(1,z//aa(v,v)       ),z//aa(v,v)     ;call io
      ww=w(1,z//bb     ); call chk(ww)
      write(unit,*)ww,w(1,z//bb       ),z//bb        ;call io
      ww=w(1,z//bb(:,:)); call chk(ww)
      write(unit,*)ww,w(1,z//bb(:,:)       ),z//bb(:,:)     ;call io
      ww=w(1,z//bb(::1,::1)); call chk(ww)
      write(unit,*)ww,w(1,z//bb(::1,::1)  ),z//bb(::1,::1)     ;call io
      ww=w(1,z//bb(::i,::i)); call chk(ww)
      write(unit,*)ww,w(1,z//bb(::i,::i)   ),z//bb(::i,::i)     ;call io
      ww=w(1,z//bb(v,v)); call chk(ww)
      write(unit,*)ww,w(1,z//bb(v,v)    ),z//bb(v,v)     ;call io
      ww=w(1,z//ds%dd     ); call chk(ww)
      write(unit,*)ww,w(1,z//ds%dd    ),z//ds%dd     ;call io
      ww=w(1,z//ds%dd(:,:)); call chk(ww)
      write(unit,*)ww,w(1,z//ds%dd(:,:) ),z//ds%dd(:,:)  ;call io
      ww=w(1,z//ds%dd(::1,::1)); call chk(ww)
      write(unit,*)ww,w(1,z//ds%dd(::1,::1) ),z//ds%dd(::1,::1);call io
      ww=w(1,z//ds%dd(::i,::i)); call chk(ww)
      write(unit,*)ww,w(1,z//ds%dd(::i,::i) ),z//ds%dd(::i,::i);call io
      ww=w(1,z//ds%dd(v,v)); call chk(ww)
      write(unit,*)ww,w(1,z//ds%dd(v,v) ),z//ds%dd(v,v)  ;call io
      ww=w(1,z//ds%ee     ); call chk(ww)
      write(unit,*)ww,w(1,z//ds%ee    ),z//ds%ee     ;call io
      ww=w(1,z//ds%ee(:,:)); call chk(ww)
      write(unit,*)ww,w(1,z//ds%ee(:,:) ),z//ds%ee(:,:)     ;call io
      ww=w(1,z//ds%ee(::1,::1)); call chk(ww)
      write(unit,*)ww,w(1,z//ds%ee(::1,::1)  ),z//ds%ee(::1,::1);call io
      ww=w(1,z//ds%ee(::i,::i)); call chk(ww)
      write(unit,*)ww,w(1,z//ds%ee(::i,::i)  ),z//ds%ee(::i,::i);call io
      ww=w(1,z//ds%ee(v,v)  ); call chk(ww)
      write(unit,*)ww,w(1,z//ds%ee(v,v)   ),z//ds%ee(v,v)     ;call io
      ww=w(1,z//dq%dd     ); call chk(ww)
      write(unit,*)ww,w(1,z//dq%dd    ),z//dq%dd     ;call io
      ww=w(1,z//dq%dd(:,:)); call chk(ww)
      write(unit,*)ww,w(1,z//dq%dd(:,:) ),z//dq%dd(:,:)  ;call io
      ww=w(1,z//dq%dd(::1,::1)); call chk(ww)
      write(unit,*)ww,w(1,z//dq%dd(::1,::1) ),dq%dd(::1,::1)  ;call io
      ww=w(1,z//dq%dd(::i,::i)); call chk(ww)
      write(unit,*)ww,w(1,z//dq%dd(::i,::i) ),z//dq%dd(::i,::i);call io
      ww=w(1,z//dq%dd(v,v)); call chk(ww)
      write(unit,*)ww,w(1,z//dq%dd(v,v) ),z//dq%dd(v,v)  ;call io
      ww=w(1,z//dq%ee     ); call chk(ww)
      write(unit,*)ww,w(1,z//dq%ee    ),z//dq%ee     ;call io
      ww=w(1,z//dq%ee(:,:)); call chk(ww)
      write(unit,*)ww,w(1,z//dq%ee(:,:) ),z//dq%ee(:,:)     ;call io
      ww=w(1,z//dq%ee(::1,::1)); call chk(ww)
      write(unit,*)ww,w(1,z//dq%ee(::1,::1)   ),z//dq%ee(::1,::1);callio
      ww=w(1,z//dq%ee(::i,::i)); call chk(ww)
      write(unit,*)ww,w(1,z//dq%ee(::i,::i)  ),z//dq%ee(::i,::i);call io
      ww=w(1,z//dq%ee(v,v)); call chk(ww)
      write(unit,*)ww,w(1,z//dq%ee(v,v) ),z//dq%ee(v,v)     ;call io
      ww=w(1,z//pp     ); call chk(ww)
      write(unit,*)ww,w(1,z//pp       ),z//pp        ;call io
      ww=w(1,z//pp(:,:)); call chk(ww)
      write(unit,*)ww,w(1,z//pp(:,:)       ),z//pp(:,:)     ;call io
      ww=w(1,z//pp(::1,::1)); call chk(ww)
      write(unit,*)ww,w(1,z//pp(::1,::1)  ),z//pp(::1,::1)     ;call io
      ww=w(1,z//pp(::i,::i)); call chk(ww)
      write(unit,*)ww,w(1,z//pp(::i,::i)  ),z//pp(::i,::i)     ;call io
      ww=w(1,z//pp(v,v)); call chk(ww)
      write(unit,*)ww,w(1,z//pp(v,v)     ),z//pp(v,v)     ;call io
      contains
      subroutine chk(z)
      type (w)::z
      if (ww%i/=z%i)print *,'fail'
      if (any(ww%pva/=z%pva))print *,'fail'
      if (any(ww%pva/=reshape((/'1','2','3','4'/),(/2,2/))))
     1 print *,'fail'
      if (size(ww%pva)/=size(z%pva))print *,'fail'
      end subroutine
      subroutine io
      type read
       integer i1
       character i2(4)
       integer i3
       character i4(8)
      end type
      type(read),pointer:: data
      allocate(data)
      rewind unit
      read(unit,*)data
      if (data%i1/=1)print *,'fail'
      if (any(data%i2/=(/'1','2','3','4'/)))print *,'fail'
      if (data%i3/=1)print *,'fail'
      if (any(data%i4/=(/'1','2','3','4','1','2','3','4'/)))
     1 print *,'fail'
      unit=unit+1
      open(unit,delim='quote')
      end subroutine
      end
