 call s1
 print *,'pass'
 end
 subroutine s1
 implicit integer(1)(a),integer(2)(b),integer(4)(c),integer(8)(d)
 implicit real   (4)(e),real   (8)(f),real   (16)(g)
 implicit complex(4)(h),complex(8)(i),complex(16)(j)
 implicit logical(1)(k),logical(2)(l),logical(4)(m),logical(8)(n)
 complex(4)::aa(2),as
 dimension aai(2),bai(2),cai(2),dai(2),eai(2),fai(2),gai(2),hai(2),iai(2),jai(2),kai(2),lai(2),mai(2),nai(2)
 asi1=1; bsi1=1; csi1=1; dsi1=1; esi1=1; fsi1=1; gsi1=1; hsi1=1; isi1=1; jsi1=1; ksi1=1; lsi1=1; msi1=1; nsi1=1
 asi0=0; bsi0=0; csi0=0; dsi0=0; esi0=0; fsi0=0; gsi0=0; hsi0=0; isi0=0; jsi0=0; ksi0=0; lsi0=0; msi0=0; nsi0=0
 aai(1)=1; bai(1)=1; cai(1)=1; dai(1)=1; eai(1)=1; fai(1)=1; gai(1)=1; hai(1)=1; iai(1)=1; jai(1)=1; kai(1)=1; lai(1)=1; mai(1)=1; nai(1)=1
 aai(2)=0; bai(2)=0; cai(2)=0; dai(2)=0; eai(2)=0; fai(2)=0; gai(2)=0; hai(2)=0; iai(2)=0; jai(2)=0; kai(2)=0; lai(2)=0; mai(2)=0; nai(2)=0
 as=asi1;if (as/=1)print *,'fail';as=0
 as=bsi1;if (as/=1)print *,'fail';as=0
 as=csi1;if (as/=1)print *,'fail';as=0
 as=dsi1;if (as/=1)print *,'fail';as=0
 as=esi1;if (as/=1)print *,'fail';as=0
 as=fsi1;if (as/=1)print *,'fail';as=0
 as=gsi1;if (as/=1)print *,'fail';as=0
 as=hsi1;if (as/=1)print *,'fail';as=0
 as=isi1;if (as/=1)print *,'fail';as=0
 as=jsi1;if (as/=1)print *,'fail';as=0
 as=merge(1,0,ksi1);if (as/=1)print *,'fail';as=0
 as=merge(1,0,lsi1);if (as/=1)print *,'fail';as=0
 as=merge(1,0,msi1);if (as/=1)print *,'fail';as=0
 as=merge(1,0,nsi1);if (as/=1)print *,'fail';as=0
 aa(2)=aai(1);if (aa(2)/=1)print *,'fail';aa(2)=0
 aa(2)=bai(1);if (aa(2)/=1)print *,'fail';aa(2)=0
 aa(2)=cai(1);if (aa(2)/=1)print *,'fail';aa(2)=0
 aa(2)=dai(1);if (aa(2)/=1)print *,'fail';aa(2)=0
 aa(2)=eai(1);if (aa(2)/=1)print *,'fail';aa(2)=0
 aa(2)=fai(1);if (aa(2)/=1)print *,'fail';aa(2)=0
 aa(2)=gai(1);if (aa(2)/=1)print *,'fail';aa(2)=0
 aa(2)=hai(1);if (aa(2)/=1)print *,'fail';aa(2)=0
 aa(2)=iai(1);if (aa(2)/=1)print *,'fail';aa(2)=0
 aa(2)=jai(1);if (aa(2)/=1)print *,'fail';aa(2)=0
 aa(2)=merge(1,0,kai(1));if (aa(2)/=1)print *,'fail';aa(2)=0
 aa(2)=merge(1,0,lai(1));if (aa(2)/=1)print *,'fail';aa(2)=0
 aa(2)=merge(1,0,mai(1));if (aa(2)/=1)print *,'fail';aa(2)=0
 aa(2)=merge(1,0,nai(1));if (aa(2)/=1)print *,'fail';aa(2)=0
 end
