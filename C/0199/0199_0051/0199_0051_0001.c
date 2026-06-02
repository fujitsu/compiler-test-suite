#include <stdlib.h>
unsigned int v3 (signed char, signed char, unsigned int, signed char);
unsigned int (*v4) (signed char, signed char, unsigned int, signed char) = v3;
extern unsigned short v5 (signed int, unsigned int, unsigned char);
extern unsigned short (*v6) (signed int, unsigned int, unsigned char);
extern signed char v7 (unsigned short, unsigned short, unsigned int);
extern signed char (*v8) (unsigned short, unsigned short, unsigned int);
extern signed short v9 (unsigned char, signed char, unsigned int);
extern signed short (*v10) (unsigned char, signed char, unsigned int);
extern signed short v11 (void);
extern signed short (*v12) (void);
signed char v13 (unsigned char);
signed char (*v14) (unsigned char) = v13;
extern signed short v15 (signed int, signed short);
extern signed short (*v16) (signed int, signed short);
extern signed int v17 (unsigned char, unsigned int, unsigned short);
extern signed int (*v18) (unsigned char, unsigned int, unsigned short);
extern void v19 (void);
extern void (*v20) (void);
extern signed short v21 (unsigned int, unsigned char);
extern signed short (*v22) (unsigned int, unsigned char);
static signed short v23 (signed short, signed int);
static signed short (*v24) (signed short, signed int) = v23;
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern unsigned short v29 (unsigned char, unsigned char);
extern unsigned short (*v30) (unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v60 = 0;
signed int v59 = 3;
signed char v58 = -4;

static signed short v23 (signed short v61, signed int v62)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned int v65 = 4U;
unsigned short v64 = 1;
signed short v63 = -2;
trace++;
switch (trace)
{
case 2: 
{
unsigned char v66;
signed char v67;
unsigned int v68;
signed short v69;
v66 = 1 + 6;
v67 = 1 - 1;
v68 = v65 - v65;
v69 = v9 (v66, v67, v68);
history[history_index++] = (int)v69;
}
break;
case 4: 
{
signed short v70;
signed int v71;
signed short v72;
v70 = v61 + v61;
v71 = 3 + 1;
v72 = v23 (v70, v71);
history[history_index++] = (int)v72;
}
break;
case 5: 
{
signed short v73;
signed int v74;
signed short v75;
v73 = v63 - v61;
v74 = 1 - v62;
v75 = v23 (v73, v74);
history[history_index++] = (int)v75;
}
break;
case 6: 
{
unsigned char v76;
signed char v77;
unsigned int v78;
signed short v79;
v76 = 1 - 1;
v77 = 0 - -3;
v78 = 0U - 5U;
v79 = v9 (v76, v77, v78);
history[history_index++] = (int)v79;
}
break;
case 8: 
return v63;
case 9: 
{
signed short v80;
signed int v81;
signed short v82;
v80 = v61 - 0;
v81 = v62 + 0;
v82 = v23 (v80, v81);
history[history_index++] = (int)v82;
}
break;
case 10: 
{
signed short v83;
signed int v84;
signed short v85;
v83 = v61 + -3;
v84 = v62 - v62;
v85 = v23 (v83, v84);
history[history_index++] = (int)v85;
}
break;
case 11: 
return v61;
case 12: 
return v63;
case 13: 
return v61;
case 14: 
return v63;
default: abort ();
}
}
}
}

signed char v13 (unsigned char v86)
{
history[history_index++] = (int)v86;
{
for (;;) {
unsigned short v89 = 6;
unsigned char v88 = 5;
unsigned short v87 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (signed char v90, signed char v91, unsigned int v92, signed char v93)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
signed char v96 = 2;
signed int v95 = -2;
unsigned int v94 = 0U;
trace++;
switch (trace)
{
case 1: 
{
signed short v97;
signed int v98;
signed short v99;
v97 = -2 - 0;
v98 = -2 + 1;
v99 = v23 (v97, v98);
history[history_index++] = (int)v99;
}
break;
case 15: 
return v92;
default: abort ();
}
}
}
}
