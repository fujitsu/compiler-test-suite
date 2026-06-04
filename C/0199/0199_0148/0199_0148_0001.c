#include <stdlib.h>
signed short v1 (signed int, signed short, signed short);
signed short (*v2) (signed int, signed short, signed short) = v1;
extern unsigned char v3 (unsigned int, signed int);
extern unsigned char (*v4) (unsigned int, signed int);
extern unsigned char v5 (signed char, unsigned short, unsigned char);
extern unsigned char (*v6) (signed char, unsigned short, unsigned char);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern unsigned short v9 (signed int);
extern unsigned short (*v10) (signed int);
extern void v11 (signed short, unsigned short, unsigned char, unsigned char);
extern void (*v12) (signed short, unsigned short, unsigned char, unsigned char);
extern unsigned short v13 (unsigned short, unsigned char, signed char);
extern unsigned short (*v14) (unsigned short, unsigned char, signed char);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern signed short v17 (signed short, unsigned short, signed short);
extern signed short (*v18) (signed short, unsigned short, signed short);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern unsigned short v21 (unsigned short, unsigned int, signed int);
extern unsigned short (*v22) (unsigned short, unsigned int, signed int);
extern unsigned char v23 (unsigned int, unsigned int);
extern unsigned char (*v24) (unsigned int, unsigned int);
extern signed char v25 (unsigned int, unsigned short, signed int, signed short);
extern signed char (*v26) (unsigned int, unsigned short, signed int, signed short);
extern signed char v27 (unsigned short, signed short, unsigned char);
extern signed char (*v28) (unsigned short, signed short, unsigned char);
unsigned short v29 (unsigned short);
unsigned short (*v30) (unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v63 = 3U;
unsigned char v62 = 1;
unsigned int v61 = 4U;

unsigned short v29 (unsigned short v64)
{
history[history_index++] = (int)v64;
{
for (;;) {
signed int v67 = -4;
unsigned char v66 = 5;
unsigned char v65 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (signed int v68, signed short v69, signed short v70)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
unsigned char v73 = 4;
signed short v72 = 2;
signed int v71 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v74;
unsigned int v75;
unsigned char v76;
v74 = 6U + 2U;
v75 = 7U + 7U;
v76 = v23 (v74, v75);
history[history_index++] = (int)v76;
}
break;
case 2: 
{
signed short v77;
unsigned short v78;
signed short v79;
signed short v80;
v77 = v69 + v69;
v78 = 7 + 4;
v79 = v69 - 2;
v80 = v17 (v77, v78, v79);
history[history_index++] = (int)v80;
}
break;
case 4: 
{
signed int v81;
unsigned short v82;
v81 = v68 + v71;
v82 = v9 (v81);
history[history_index++] = (int)v82;
}
break;
case 8: 
{
signed char v83;
unsigned short v84;
unsigned char v85;
unsigned char v86;
v83 = -4 + -4;
v84 = 4 + 7;
v85 = 5 - v73;
v86 = v5 (v83, v84, v85);
history[history_index++] = (int)v86;
}
break;
case 14: 
return v69;
default: abort ();
}
}
}
}
