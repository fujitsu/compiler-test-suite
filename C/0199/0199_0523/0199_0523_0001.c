#include <stdlib.h>
signed short v1 (unsigned int, signed char, unsigned short, signed short);
signed short (*v2) (unsigned int, signed char, unsigned short, signed short) = v1;
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed char v7 (signed short, unsigned char, signed char);
extern signed char (*v8) (signed short, unsigned char, signed char);
extern unsigned int v9 (signed int, unsigned short, signed int, signed short);
extern unsigned int (*v10) (signed int, unsigned short, signed int, signed short);
extern void v11 (signed int, unsigned char, unsigned char, signed int);
extern void (*v12) (signed int, unsigned char, unsigned char, signed int);
extern signed int v13 (void);
extern signed int (*v14) (void);
extern unsigned char v15 (unsigned char, signed int, unsigned int);
extern unsigned char (*v16) (unsigned char, signed int, unsigned int);
extern unsigned int v17 (unsigned int, unsigned int, signed char, signed char);
extern unsigned int (*v18) (unsigned int, unsigned int, signed char, signed char);
extern signed char v19 (unsigned short, unsigned short);
extern signed char (*v20) (unsigned short, unsigned short);
extern signed char v21 (unsigned int, signed char, unsigned short, signed int);
extern signed char (*v22) (unsigned int, signed char, unsigned short, signed int);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern void v25 (signed int, signed int, signed char);
extern void (*v26) (signed int, signed int, signed char);
extern signed int v27 (signed int, signed short, signed char);
extern signed int (*v28) (signed int, signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v50 = 5U;
unsigned int v49 = 1U;
signed char v48 = -2;

signed short v1 (unsigned int v51, signed char v52, unsigned short v53, signed short v54)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
signed int v57 = 0;
signed short v56 = -2;
signed short v55 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed int v58;
signed short v59;
signed char v60;
signed int v61;
v58 = -3 - v57;
v59 = v54 + 3;
v60 = -1 + v52;
v61 = v27 (v58, v59, v60);
history[history_index++] = (int)v61;
}
break;
case 2: 
{
signed short v62;
unsigned char v63;
signed char v64;
signed char v65;
v62 = v55 - v54;
v63 = 4 - 1;
v64 = -2 - 3;
v65 = v7 (v62, v63, v64);
history[history_index++] = (int)v65;
}
break;
case 14: 
return v56;
default: abort ();
}
}
}
}
