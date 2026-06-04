#include <stdlib.h>
extern unsigned short v1 (unsigned short, unsigned short, signed short, unsigned char);
extern unsigned short (*v2) (unsigned short, unsigned short, signed short, unsigned char);
extern signed char v3 (unsigned int);
extern signed char (*v4) (unsigned int);
signed int v5 (unsigned char);
signed int (*v6) (unsigned char) = v5;
extern signed short v7 (signed int, signed int, signed int);
extern signed short (*v8) (signed int, signed int, signed int);
extern void v9 (unsigned short);
extern void (*v10) (unsigned short);
signed char v11 (signed short, unsigned short, signed int);
signed char (*v12) (signed short, unsigned short, signed int) = v11;
extern signed char v13 (unsigned short);
extern signed char (*v14) (unsigned short);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern void v23 (unsigned char, unsigned short, signed int, unsigned int);
extern void (*v24) (unsigned char, unsigned short, signed int, unsigned int);
extern signed short v25 (signed short, signed int);
extern signed short (*v26) (signed short, signed int);
extern signed int v27 (unsigned short);
extern signed int (*v28) (unsigned short);
extern unsigned int v29 (unsigned char);
extern unsigned int (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v53 = 4;
signed int v52 = -2;
signed char v51 = -3;

signed char v11 (signed short v54, unsigned short v55, signed int v56)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
unsigned short v59 = 2;
signed short v58 = -2;
signed short v57 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (unsigned char v60)
{
history[history_index++] = (int)v60;
{
for (;;) {
unsigned char v63 = 4;
unsigned char v62 = 6;
signed short v61 = 3;
trace++;
switch (trace)
{
case 2: 
{
signed int v64;
signed int v65;
signed int v66;
signed short v67;
v64 = 0 - 3;
v65 = 1 + 1;
v66 = -1 + -1;
v67 = v7 (v64, v65, v66);
history[history_index++] = (int)v67;
}
break;
case 4: 
{
signed int v68;
signed int v69;
signed int v70;
signed short v71;
v68 = 3 + 2;
v69 = 0 + 0;
v70 = -3 - 2;
v71 = v7 (v68, v69, v70);
history[history_index++] = (int)v71;
}
break;
case 6: 
{
signed int v72;
signed int v73;
signed int v74;
signed short v75;
v72 = -4 - 2;
v73 = 1 + 0;
v74 = 3 - 0;
v75 = v7 (v72, v73, v74);
history[history_index++] = (int)v75;
}
break;
case 8: 
{
signed int v76;
signed int v77;
signed int v78;
signed short v79;
v76 = 0 - -3;
v77 = 2 - 1;
v78 = -2 - 3;
v79 = v7 (v76, v77, v78);
history[history_index++] = (int)v79;
}
break;
case 10: 
return -3;
default: abort ();
}
}
}
}
