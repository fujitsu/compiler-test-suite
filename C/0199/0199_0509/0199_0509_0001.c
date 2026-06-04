#include <stdlib.h>
extern unsigned char v1 (signed short, unsigned char, signed char);
extern unsigned char (*v2) (signed short, unsigned char, signed char);
extern unsigned short v5 (signed char, signed short);
extern unsigned short (*v6) (signed char, signed short);
unsigned char v7 (signed int, signed char, signed char, signed short);
unsigned char (*v8) (signed int, signed char, signed char, signed short) = v7;
extern unsigned char v9 (unsigned char, signed short, signed char, signed short);
extern unsigned char (*v10) (unsigned char, signed short, signed char, signed short);
extern signed int v11 (signed short, unsigned char, unsigned short, unsigned short);
extern signed int (*v12) (signed short, unsigned char, unsigned short, unsigned short);
extern unsigned int v13 (unsigned char, signed int, signed int);
extern unsigned int (*v14) (unsigned char, signed int, signed int);
extern signed int v15 (unsigned short);
extern signed int (*v16) (unsigned short);
extern unsigned short v17 (unsigned int);
extern unsigned short (*v18) (unsigned int);
extern signed char v19 (signed int, unsigned int, unsigned int);
extern signed char (*v20) (signed int, unsigned int, unsigned int);
extern unsigned char v21 (signed char, unsigned short, signed char);
extern unsigned char (*v22) (signed char, unsigned short, signed char);
extern unsigned char v23 (signed short);
extern unsigned char (*v24) (signed short);
signed short v25 (signed int, signed char);
signed short (*v26) (signed int, signed char) = v25;
extern void v27 (unsigned char, signed int, unsigned short);
extern void (*v28) (unsigned char, signed int, unsigned short);
extern signed int v29 (unsigned short);
extern signed int (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v46 = 2U;
signed int v45 = 1;
signed char v44 = -3;

signed short v25 (signed int v47, signed char v48)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
unsigned short v51 = 3;
signed int v50 = -2;
signed char v49 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (signed int v52, signed char v53, signed char v54, signed short v55)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned int v58 = 3U;
unsigned int v57 = 2U;
signed int v56 = 3;
trace++;
switch (trace)
{
case 6: 
{
unsigned short v59;
signed int v60;
v59 = 5 + 4;
v60 = v29 (v59);
history[history_index++] = (int)v60;
}
break;
case 8: 
{
unsigned short v61;
signed int v62;
v61 = 7 + 0;
v62 = v29 (v61);
history[history_index++] = (int)v62;
}
break;
case 10: 
{
unsigned short v63;
signed int v64;
v63 = 4 - 5;
v64 = v29 (v63);
history[history_index++] = (int)v64;
}
break;
case 12: 
return 0;
default: abort ();
}
}
}
}
