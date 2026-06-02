#include <stdlib.h>
extern unsigned char v1 (signed char, signed short, unsigned short);
extern unsigned char (*v2) (signed char, signed short, unsigned short);
extern void v3 (signed int, signed char, signed char);
extern void (*v4) (signed int, signed char, signed char);
signed int v5 (unsigned char, signed char, signed int);
signed int (*v6) (unsigned char, signed char, signed int) = v5;
extern unsigned short v7 (signed short, signed char);
extern unsigned short (*v8) (signed short, signed char);
extern unsigned char v9 (signed int, unsigned short, unsigned short);
extern unsigned char (*v10) (signed int, unsigned short, unsigned short);
extern void v11 (unsigned int, signed int);
extern void (*v12) (unsigned int, signed int);
signed int v13 (unsigned int, unsigned char);
signed int (*v14) (unsigned int, unsigned char) = v13;
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern unsigned short v17 (signed char, signed short, unsigned short);
extern unsigned short (*v18) (signed char, signed short, unsigned short);
extern signed short v19 (signed char);
extern signed short (*v20) (signed char);
extern void v21 (signed char, signed short);
extern void (*v22) (signed char, signed short);
extern signed int v23 (unsigned char, unsigned int, unsigned int);
extern signed int (*v24) (unsigned char, unsigned int, unsigned int);
extern signed char v25 (signed char);
extern signed char (*v26) (signed char);
signed int v27 (signed short, unsigned char, signed char);
signed int (*v28) (signed short, unsigned char, signed char) = v27;
extern unsigned short v29 (unsigned int, unsigned short, unsigned char);
extern unsigned short (*v30) (unsigned int, unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v50 = 7U;
signed short v49 = -3;
unsigned char v48 = 2;

signed int v27 (signed short v51, unsigned char v52, signed char v53)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
signed short v56 = -3;
signed char v55 = 1;
signed short v54 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (unsigned int v57, unsigned char v58)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
unsigned short v61 = 6;
unsigned char v60 = 1;
unsigned short v59 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (unsigned char v62, signed char v63, signed int v64)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
unsigned short v67 = 5;
unsigned short v66 = 7;
signed char v65 = 0;
trace++;
switch (trace)
{
case 1: 
{
signed char v68;
signed char v69;
v68 = -1 - v63;
v69 = v25 (v68);
history[history_index++] = (int)v69;
}
break;
case 3: 
{
unsigned char v70;
unsigned int v71;
unsigned int v72;
signed int v73;
v70 = 7 - 1;
v71 = 3U - 2U;
v72 = 7U + 3U;
v73 = v23 (v70, v71, v72);
history[history_index++] = (int)v73;
}
break;
case 15: 
return -4;
default: abort ();
}
}
}
}
