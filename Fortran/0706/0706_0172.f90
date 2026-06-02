c
c
      call s1
      print *,'pass'
      end
      subroutine s1
         interface
           subroutine ss2(pp,j)
              character,target::pp(j,1,j)
           end subroutine
         end interface
      character,target::pp(2,1,2)=reshape((/'1','2','3','4'/),(/2,1,2/))
      call ss2(pp,2)
      end
      subroutine ss2(pp,j)
      type t; character         tvs,tva(2,1,2);end type
      type (t),pointer::et2(:,:,:)
      type w; integer i;character :: pva(2,1,2);end type
      type (w)::ww
      character,target::aa(2,1,2)=reshape((/'1','2','3','4'/),(/2,1,2/))
      character(*),target::pp(j,1,j)
      character,pointer::bb(:,:,:)
      type df
        integer df_i
        character        ::ee(2,1,2)
        character,pointer::dd(:,:,:)
      end type
      type(df),target::ds
      type(df),pointer::dq
      integer ::v(2)=(/1,2/),unit,h(1)=1
      i=1;unit=11
      open(unit,delim='quote')
      allocate(dq)
      dq%ee(:,:,:)=reshape((/'1','2','3','4'/),(/2,1,2/))
      allocate(dq%dd(2,1,2));
      dq%dd(:,:,:)=reshape((/'1','2','3','4'/),(/2,1,2/))
      ds%ee(:,:,:)=reshape((/'1','2','3','4'/),(/2,1,2/))
      allocate(ds%dd(2,1,2));
      ds%dd(:,:,:)=reshape((/'1','2','3','4'/),(/2,1,2/))
      allocate(bb(2,1,2))
      bb(:,:,:)=reshape((/'1','2','3','4'/),(/2,1,2/))
      allocate(et2(2,1,2))
      et2%tvs=reshape((/'1','2','3','4'/),(/2,1,2/))
      ww=w(1,et2     %tvs); call chk(ww)
      write(unit,*)ww,w(1,et2     %tvs),et2%tvs;call io
      ww=w(1,et2(:,:,:)%tvs); call chk(ww)
      write(unit,*)ww,w(1,et2(:,:,:)  %tvs),et2(:,:,:)%tvs;call io
      ww=w(1,et2(::1,::1,::1)%tvs); call chk(ww)
      write(unit,*)ww,w(1,et2(::1,::1,::1)  %tvs),
     1   et2(::1,::1,::1)%tvs;call io
      ww=w(1,et2(::i,::i,::i)%tvs); call chk(ww)
      write(unit,*)ww,w(1,et2(::i,::i,::i)  %tvs),
     1   et2(::i,::i,::i)%tvs;call io
      ww=w(1,et2(v,h,v)%tvs); call chk(ww)
      write(unit,*)ww,w(1,et2(v,h,v)  %tvs),et2(v,h,v)%tvs;call io
      ww=w(1,aa          ); call chk(ww)
      write(unit,*)ww,w(1,aa            ),aa        ;call io
      ww=w(1,aa(:,:,:)     ); call chk(ww)
      write(unit,*)ww,w(1,aa(:,:,:)            ),aa(:,:,:)     ;call io
      ww=w(1,aa(::1,::1,::1)     ); call chk(ww)
      write(unit,*)ww,w(1,aa(::1,::1,::1)        ),
     1  aa(::1,::1,::1)     ;call io
      ww=w(1,aa(::i,::i,::i)     ); call chk(ww)
      write(unit,*)ww,w(1,aa(::i,::i,::i)       ),
     1  aa(::i,::i,::i)     ;call io
      ww=w(1,aa(v,h,v)     ); call chk(ww)
      write(unit,*)ww,w(1,aa(v,h,v)            ),aa(v,h,v)     ;call io
      ww=w(1,bb          ); call chk(ww)
      write(unit,*)ww,w(1,bb            ),bb        ;call io
      ww=w(1,bb(:,:,:)     ); call chk(ww)
      write(unit,*)ww,w(1,bb(:,:,:)            ),bb(:,:,:)     ;call io
      ww=w(1,bb(::1,::1,::1)     ); call chk(ww)
      write(unit,*)ww,w(1,bb(::1,::1,::1)       ),
     1   bb(::1,::1,::1)     ;call io
      ww=w(1,bb(::i,::i,::i)     ); call chk(ww)
      write(unit,*)ww,w(1,bb(::i,::i,::i)        ),
     1   bb(::i,::i,::i)     ;call io
      ww=w(1,bb(v,h,v)     ); call chk(ww)
      write(unit,*)ww,w(1,bb(v,h,v)         ),bb(v,h,v)     ;call io
      ww=w(1,ds%dd          ); call chk(ww)
      write(unit,*)ww,w(1,ds%dd         ),ds%dd     ;call io
      ww=w(1,ds%dd(:,:,:)     ); call chk(ww)
      write(unit,*)ww,w(1,ds%dd(:,:,:)      ),ds%dd(:,:,:)  ;call io
      ww=w(1,ds%dd(::1,::1,::1)     ); call chk(ww)
      write(unit,*)ww,w(1,ds%dd(::1,::1,::1)  ),
     1  ds%dd(::1,::1,::1)  ;call io
      ww=w(1,ds%dd(::i,::i,::i)     ); call chk(ww)
      write(unit,*)ww,w(1,ds%dd(::i,::i,::i)      ),
     1 ds%dd(::i,::i,::i)  ;call io
      ww=w(1,ds%dd(v,h,v)     ); call chk(ww)
      write(unit,*)ww,w(1,ds%dd(v,h,v)      ),ds%dd(v,h,v)  ;call io
      ww=w(1,ds%ee          ); call chk(ww)
      write(unit,*)ww,w(1,ds%ee         ),ds%ee     ;call io
      ww=w(1,ds%ee(:,:,:)     ); call chk(ww)
      write(unit,*)ww,w(1,ds%ee(:,:,:)      ),ds%ee(:,:,:)     ;call io
      ww=w(1,ds%ee(::1,::1,::1)     ); call chk(ww)
      write(unit,*)ww,w(1,ds%ee(::1,::1,::1)  ),
     1 ds%ee(::1,::1,::1)     ;call io
      ww=w(1,ds%ee(::i,::i,::i)     ); call chk(ww)
      write(unit,*)ww,w(1,ds%ee(::i,::i,::i)  ),
     1 ds%ee(::i,::i,::i)     ;call io
      ww=w(1,ds%ee(v,h,v)  ); call chk(ww)
      write(unit,*)ww,w(1,ds%ee(v,h,v)   ),ds%ee(v,h,v)     ;call io
      ww=w(1,dq%dd          ); call chk(ww)
      write(unit,*)ww,w(1,dq%dd         ),dq%dd     ;call io
      ww=w(1,dq%dd(:,:,:)     ); call chk(ww)
      write(unit,*)ww,w(1,dq%dd(:,:,:)      ),dq%dd(:,:,:)  ;call io
      ww=w(1,dq%dd(::1,::1,::1)     ); call chk(ww)
      write(unit,*)ww,w(1,dq%dd(::1,::1,::1)      ),
     1 dq%dd(::1,::1,::1)  ;call io
      ww=w(1,dq%dd(::i,::i,::i)     ); call chk(ww)
      write(unit,*)ww,w(1,dq%dd(::i,::i,::i) ),
     1 dq%dd(::i,::i,::i)  ;call io
      ww=w(1,dq%dd(v,h,v)     ); call chk(ww)
      write(unit,*)ww,w(1,dq%dd(v,h,v)      ),dq%dd(v,h,v)  ;call io
      ww=w(1,dq%ee          ); call chk(ww)
      write(unit,*)ww,w(1,dq%ee         ),dq%ee     ;call io
      ww=w(1,dq%ee(:,:,:)     ); call chk(ww)
      write(unit,*)ww,w(1,dq%ee(:,:,:)      ),dq%ee(:,:,:)     ;call io
      ww=w(1,dq%ee(::1,::1,::1)     ); call chk(ww)
      write(unit,*)ww,w(1,dq%ee(::1,::1,::1)   ),
     1  dq%ee(::1,::1,::1)     ;call io
      ww=w(1,dq%ee(::i,::i,::i)     ); call chk(ww)
      write(unit,*)ww,w(1,dq%ee(::i,::i,::i)  ),
     1 dq%ee(::i,::i,::i)     ;call io
      ww=w(1,dq%ee(v,h,v)     ); call chk(ww)
      write(unit,*)ww,w(1,dq%ee(v,h,v)      ),dq%ee(v,h,v)     ;call io
      ww=w(1,pp          ); call chk(ww)
      write(unit,*)ww,w(1,pp            ),pp        ;call io
      ww=w(1,pp(:,:,:)     ); call chk(ww)
      write(unit,*)ww,w(1,pp(:,:,:)            ),pp(:,:,:)     ;call io
      ww=w(1,pp(::1,::1,::1)     ); call chk(ww)
      write(unit,*)ww,w(1,pp(::1,::1,::1)),pp(::1,::1,::1)  ;call io
      ww=w(1,pp(::i,::i,::i)     ); call chk(ww)
      write(unit,*)ww,w(1,pp(::i,::i,::i)),pp(::i,::i,::i)     ;call io
      ww=w(1,pp(v,h,v)     ); call chk(ww)
      write(unit,*)ww,w(1,pp(v,h,v)          ),pp(v,h,v)     ;call io
      contains
      subroutine chk(z)
      type (w)::z
      if (ww%i/=z%i)print *,'fail'
      if (any(ww%pva/=z%pva))print *,'fail'
      if (any(ww%pva/=reshape((/'1','2','3','4'/),(/2,1,2/))))
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
