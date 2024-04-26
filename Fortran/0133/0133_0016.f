      module submod
      integer,parameter::N=5
      integer,parameter::NN=25
      integer,parameter::ANS=12
      integer(kind=8),dimension(1:NN)::vec=0
      integer(kind=8),dimension(1:N)::vec1=(/(i,i=1,N)/)
      integer(kind=8),dimension(1:NN)::vec2,vec3,vec4
      logical,dimension(1:NN)::mask=(/(mod(i,N)/=0,i=1,NN)/)

      contains
      subroutine init_data

      vec2=reshape(reshape(cshift(spread(vec1,2,N),
     &     (/(mod(i,3),i=1,N)/),1),
     &     (/sum(shape(vec1)),sum(shape(vec1))/)),
     &     (/product(shape(vec1))*product(shape(vec1))/))

      vec3=reshape(reshape(merge(reshape(transpose(
     &     cshift(spread(vec1,1,N),(/(mod(i,5),i=N,1,-1)/),2)),
     &     (/NN/)),reshape(vec2,(/NN/)),mask),(/maxval(vec1),
     &     maxval(vec1)/)),(/N*sum(shape(vec1))/))

      vec4=merge((/reshape(spread(vec1,1,2),(/N*2/)),
     &     reshape(spread(vec1,2,2),(/N*2/)),vec1/),
     &     vec3,vec2<vec3)

      end subroutine

      end

      use submod
      integer(kind=8),dimension(1:NN)::lvec1,lvec2,lvec3,lvec4
      logical,dimension(1:NN)::mm1,mm2,mm3,mm4
      call init_data

      lvec1=0
      lvec2=lvec1
      lvec3=lvec2
      lvec4=lvec2
      where (reshape(spread(vec1,2,N),(/NN/))>vec2)
         lvec1=merge(vec4,vec2,mask)+vec3
         lvec2=merge(vec2,vec4,mask)+vec2
         lvec3=merge(vec3,vec4,mask)+vec3
         lvec4=merge(vec4,vec3,mask)+vec4
      elsewhere
         lvec1=merge(vec2,vec3,mask)-vec3
         lvec2=merge(vec3,vec2,mask)-vec2
         lvec3=merge(vec3,vec4,mask)-vec4
         lvec4=merge(vec4,vec3,mask)-vec3
      endwhere

      mm1 = (lvec1 > lvec2)
      mm2 = (lvec2 > lvec3)
      mm3 = (lvec3 > lvec4)
      mm4 = (lvec4 > lvec1)

      where (mm1 .or. mm2)
         vec3 = merge(vec3,vec2,mm1)
      elsewhere
         vec2 = merge(vec2,vec3,mm2)
      endwhere

      where (mm3 .or. mm4)
         vec3 = merge(vec3,vec4,mm3)
      elsewhere
         vec4 = merge(vec4,vec3,mm4)
      endwhere

      if (count(mm1 .and. mm2 .and. mm3 .and. mm4).ne.0) then
         vec = vec2 + vec3
      else
         vec = vec2 + vec4
      endif

      if (int(sqrt(real(sum(vec),kind=8)),kind=4).eq.ANS) then
         print *,"OK"
      else
         print *,"NG"
         print *,sum(vec)
      endif

      end
