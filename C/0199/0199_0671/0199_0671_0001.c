#include <stdlib.h>
signed short v1 (unsigned int);
signed short (*v2) (unsigned int) = v1;
unsigned char v3 (signed short, signed short);
unsigned char (*v4) (signed short, signed short) = v3;
extern unsigned int v5 (signed int, unsigned int);
extern unsigned int (*v6) (signed int, unsigned int);
extern unsigned char v7 (unsigned short, signed int, unsigned short);
extern unsigned char (*v8) (unsigned short, signed int, unsigned short);
extern unsigned int v9 (signed short, signed char, unsigned int);
extern unsigned int (*v10) (signed short, signed char, unsigned int);
extern unsigned char v11 (signed char, unsigned int);
extern unsigned char (*v12) (signed char, unsigned int);
extern signed char v13 (signed int, signed char, unsigned int, signed short);
extern signed char (*v14) (signed int, signed char, unsigned int, signed short);
extern signed char v15 (unsigned int, unsigned short, unsigned short, signed int);
extern signed char (*v16) (unsigned int, unsigned short, unsigned short, signed int);
extern unsigned char v17 (signed char);
extern unsigned char (*v18) (signed char);
extern unsigned char v19 (signed short, unsigned char, unsigned short);
extern unsigned char (*v20) (signed short, unsigned char, unsigned short);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern signed short v25 (unsigned char, unsigned char, signed int);
extern signed short (*v26) (unsigned char, unsigned char, signed int);
extern signed short v27 (signed short);
extern signed short (*v28) (signed short);
extern unsigned char v29 (unsigned short, unsigned int, unsigned short);
extern unsigned char (*v30) (unsigned short, unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v62 = -3;
unsigned short v61 = 7;
unsigned short v60 = 5;

unsigned char v3 (signed short v63, signed short v64)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
signed int v67 = -1;
signed char v66 = 2;
unsigned short v65 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (unsigned int v68)
{
history[history_index++] = (int)v68;
{
for (;;) {
signed char v71 = 3;
signed int v70 = -3;
signed short v69 = -3;
trace++;
switch (trace)
{
case 0: 
{
signed int v72;
signed char v73;
unsigned int v74;
signed short v75;
signed char v76;
v72 = -2 - v70;
v73 = v71 - v71;
v74 = 5U + v68;
v75 = 2 - -4;
v76 = v13 (v72, v73, v74, v75);
history[history_index++] = (int)v76;
}
break;
case 2: 
{
signed char v77;
unsigned int v78;
unsigned char v79;
v77 = 2 + v71;
v78 = 3U + v68;
v79 = v11 (v77, v78);
history[history_index++] = (int)v79;
}
break;
case 4: 
{
signed char v80;
unsigned char v81;
v80 = -1 - -3;
v81 = v17 (v80);
history[history_index++] = (int)v81;
}
break;
case 9: 
{
signed char v82;
unsigned int v83;
unsigned char v84;
v82 = 0 - v71;
v83 = 2U + v68;
v84 = v11 (v82, v83);
history[history_index++] = (int)v84;
}
break;
case 11: 
return 1;
case 14: 
return 1;
default: abort ();
}
}
}
}
