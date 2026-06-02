#include <stdlib.h>
extern signed short v1 (signed short, signed int);
extern signed short (*v2) (signed short, signed int);
extern signed char v3 (signed char, signed short, unsigned char);
extern signed char (*v4) (signed char, signed short, unsigned char);
extern signed short v5 (unsigned short);
extern signed short (*v6) (unsigned short);
extern signed char v7 (signed int, signed int, unsigned short, signed short);
extern signed char (*v8) (signed int, signed int, unsigned short, signed short);
signed char v9 (signed short, unsigned short, unsigned char);
signed char (*v10) (signed short, unsigned short, unsigned char) = v9;
extern signed int v11 (signed int, unsigned int, signed int);
extern signed int (*v12) (signed int, unsigned int, signed int);
extern void v13 (signed int);
extern void (*v14) (signed int);
extern unsigned short v15 (unsigned short, unsigned int, signed char);
extern unsigned short (*v16) (unsigned short, unsigned int, signed char);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern unsigned int v21 (signed short, unsigned short, unsigned short, unsigned short);
extern unsigned int (*v22) (signed short, unsigned short, unsigned short, unsigned short);
extern signed int v23 (unsigned char, unsigned int);
extern signed int (*v24) (unsigned char, unsigned int);
signed int v25 (unsigned char, unsigned int, unsigned short, unsigned int);
signed int (*v26) (unsigned char, unsigned int, unsigned short, unsigned int) = v25;
extern signed short v27 (signed char, unsigned int, signed int, unsigned short);
extern signed short (*v28) (signed char, unsigned int, signed int, unsigned short);
signed int v29 (unsigned char, unsigned char, signed int);
signed int (*v30) (unsigned char, unsigned char, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v65 = 6;
signed int v64 = 1;
signed char v63 = -1;

signed int v29 (unsigned char v66, unsigned char v67, signed int v68)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
signed int v71 = -3;
unsigned short v70 = 7;
signed int v69 = 0;
trace++;
switch (trace)
{
case 8: 
{
signed int v72;
unsigned int v73;
signed int v74;
signed int v75;
v72 = 2 + v68;
v73 = 7U - 0U;
v74 = v71 + v68;
v75 = v11 (v72, v73, v74);
history[history_index++] = (int)v75;
}
break;
case 10: 
{
signed int v76;
unsigned int v77;
signed int v78;
signed int v79;
v76 = v69 + v71;
v77 = 6U + 4U;
v78 = v68 + v69;
v79 = v11 (v76, v77, v78);
history[history_index++] = (int)v79;
}
break;
case 12: 
return v71;
case 14: 
return v68;
default: abort ();
}
}
}
}

signed int v25 (unsigned char v80, unsigned int v81, unsigned short v82, unsigned int v83)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
signed char v86 = -2;
unsigned short v85 = 4;
unsigned short v84 = 5;
trace++;
switch (trace)
{
case 5: 
return -1;
default: abort ();
}
}
}
}

signed char v9 (signed short v87, unsigned short v88, unsigned char v89)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned char v92 = 4;
unsigned char v91 = 3;
signed int v90 = 1;
trace++;
switch (trace)
{
case 1: 
{
signed int v93;
v93 = 0 + -1;
v13 (v93);
}
break;
case 17: 
return -2;
default: abort ();
}
}
}
}
