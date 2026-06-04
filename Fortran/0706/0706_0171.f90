c
c
      call s1
      print *,'pass'
      end
      subroutine s1
         interface
           subroutine ss2(pp,j)
              character,target::pp(j,j)
           end subroutine
         end interface
      character,target::pp(2,2)=reshape((/'1','2','3','4'/),(/2,2/))
      call ss2(pp,2)
      end
      subroutine ss2(pp,j)
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
      ww=w(1,et2     %tvs); call chk(ww)
      write(unit,*)ww,w(1,et2     %tvs),et2%tvs;call io
      ww=w(1,et2(:,:)%tvs); call chk(ww)
      write(unit,*)ww,w(1,et2(:,:)  %tvs),et2(:,:)%tvs;call io
      ww=w(1,et2(::1,::1)%tvs); call chk(ww)
      write(unit,*)ww,w(1,et2(::1,::1)  %tvs),et2(::1,::1)%tvs;call io
      ww=w(1,et2(::i,::i)%tvs); call chk(ww)
      write(unit,*)ww,w(1,et2(::i,::i)  %tvs),et2(::i,::i)%tvs;call io
      ww=w(1,et2(v,v)%tvs); call chk(ww)
      write(unit,*)ww,w(1,et2(v,v)  %tvs),et2(v,v)%tvs;call io
      ww=w(1,aa          ); call chk(ww)
      write(unit,*)ww,w(1,aa            ),aa        ;call io
      ww=w(1,aa(:,:)     ); call chk(ww)
      write(unit,*)ww,w(1,aa(:,:)            ),aa(:,:)     ;call io
      ww=w(1,aa(::1,::1)     ); call chk(ww)
      write(unit,*)ww,w(1,aa(::1,::1)        ),aa(::1,::1)     ;call io
      ww=w(1,aa(::i,::i)     ); call chk(ww)
      write(unit,*)ww,w(1,aa(::i,::i)       ),aa(::i,::i)     ;call io
      ww=w(1,aa(v,v)     ); call chk(ww)
      write(unit,*)ww,w(1,aa(v,v)            ),aa(v,v)     ;call io
      ww=w(1,bb          ); call chk(ww)
      write(unit,*)ww,w(1,bb            ),bb        ;call io
      ww=w(1,bb(:,:)     ); call chk(ww)
      write(unit,*)ww,w(1,bb(:,:)            ),bb(:,:)     ;call io
      ww=w(1,bb(::1,::1)     ); call chk(ww)
      write(unit,*)ww,w(1,bb(::1,::1)       ),bb(::1,::1)     ;call io
      ww=w(1,bb(::i,::i)     ); call chk(ww)
      write(unit,*)ww,w(1,bb(::i,::i)        ),bb(::i,::i)     ;call io
      ww=w(1,bb(v,v)     ); call chk(ww)
      write(unit,*)ww,w(1,bb(v,v)         ),bb(v,v)     ;call io
      ww=w(1,ds%dd          ); call chk(ww)
      write(unit,*)ww,w(1,ds%dd         ),ds%dd     ;call io
      ww=w(1,ds%dd(:,:)     ); call chk(ww)
      write(unit,*)ww,w(1,ds%dd(:,:)      ),ds%dd(:,:)  ;call io
      ww=w(1,ds%dd(::1,::1)     ); call chk(ww)
      write(unit,*)ww,w(1,ds%dd(::1,::1)      ),ds%dd(::1,::1)  ;call io
      ww=w(1,ds%dd(::i,::i)     ); call chk(ww)
      write(unit,*)ww,w(1,ds%dd(::i,::i)      ),ds%dd(::i,::i)  ;call io
      ww=w(1,ds%dd(v,v)     ); call chk(ww)
      write(unit,*)ww,w(1,ds%dd(v,v)      ),ds%dd(v,v)  ;call io
      ww=w(1,ds%ee          ); call chk(ww)
      write(unit,*)ww,w(1,ds%ee         ),ds%ee     ;call io
      ww=w(1,ds%ee(:,:)     ); call chk(ww)
      write(unit,*)ww,w(1,ds%ee(:,:)      ),ds%ee(:,:)     ;call io
      ww=w(1,ds%ee(::1,::1)     ); call chk(ww)
      write(unit,*)ww,w(1,ds%ee(::1,::1)  ),ds%ee(::1,::1)     ;call io
      ww=w(1,ds%ee(::i,::i)     ); call chk(ww)
      write(unit,*)ww,w(1,ds%ee(::i,::i)  ),ds%ee(::i,::i)     ;call io
      ww=w(1,ds%ee(v,v)  ); call chk(ww)
      write(unit,*)ww,w(1,ds%ee(v,v)   ),ds%ee(v,v)     ;call io
      ww=w(1,dq%dd          ); call chk(ww)
      write(unit,*)ww,w(1,dq%dd         ),dq%dd     ;call io
      ww=w(1,dq%dd(:,:)     ); call chk(ww)
      write(unit,*)ww,w(1,dq%dd(:,:)      ),dq%dd(:,:)  ;call io
      ww=w(1,dq%dd(::1,::1)     ); call chk(ww)
      write(unit,*)ww,w(1,dq%dd(::1,::1)      ),dq%dd(::1,::1)  ;call io
      ww=w(1,dq%dd(::i,::i)     ); call chk(ww)
      write(unit,*)ww,w(1,dq%dd(::i,::i)      ),dq%dd(::i,::i)  ;call io
      ww=w(1,dq%dd(v,v)     ); call chk(ww)
      write(unit,*)ww,w(1,dq%dd(v,v)      ),dq%dd(v,v)  ;call io
      ww=w(1,dq%ee          ); call chk(ww)
      write(unit,*)ww,w(1,dq%ee         ),dq%ee     ;call io
      ww=w(1,dq%ee(:,:)     ); call chk(ww)
      write(unit,*)ww,w(1,dq%ee(:,:)      ),dq%ee(:,:)     ;call io
      ww=w(1,dq%ee(::1,::1)     ); call chk(ww)
      write(unit,*)ww,w(1,dq%ee(::1,::1)   ),dq%ee(::1,::1)     ;call io
      ww=w(1,dq%ee(::i,::i)     ); call chk(ww)
      write(unit,*)ww,w(1,dq%ee(::i,::i)  ),dq%ee(::i,::i)     ;call io
      ww=w(1,dq%ee(v,v)     ); call chk(ww)
      write(unit,*)ww,w(1,dq%ee(v,v)      ),dq%ee(v,v)     ;call io
      ww=w(1,pp          ); call chk(ww)
      write(unit,*)ww,w(1,pp            ),pp        ;call io
      ww=w(1,pp(:,:)     ); call chk(ww)
      write(unit,*)ww,w(1,pp(:,:)            ),pp(:,:)     ;call io
      ww=w(1,pp(::1,::1)     ); call chk(ww)
      write(unit,*)ww,w(1,pp(::1,::1)       ),pp(::1,::1)     ;call io
      ww=w(1,pp(::i,::i)     ); call chk(ww)
      write(unit,*)ww,w(1,pp(::i,::i)       ),pp(::i,::i)     ;call io
      ww=w(1,pp(v,v)     ); call chk(ww)
      write(unit,*)ww,w(1,pp(v,v)          ),pp(v,v)     ;call io
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
