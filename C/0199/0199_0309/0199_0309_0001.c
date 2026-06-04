#include <stdlib.h>
extern signed short v1 (unsigned short, unsigned char);
extern signed short (*v2) (unsigned short, unsigned char);
extern unsigned short v3 (unsigned char);
extern unsigned short (*v4) (unsigned char);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern signed int v7 (signed int, unsigned char);
extern signed int (*v8) (signed int, unsigned char);
signed short v9 (signed short, unsigned int, unsigned int, unsigned int);
signed short (*v10) (signed short, unsigned int, unsigned int, unsigned int) = v9;
unsigned char v11 (unsigned short, unsigned int, unsigned short, signed short);
unsigned char (*v12) (unsigned short, unsigned int, unsigned short, signed short) = v11;
extern signed int v13 (signed int, signed char);
extern signed int (*v14) (signed int, signed char);
extern unsigned char v15 (signed int, signed int, signed int);
extern unsigned char (*v16) (signed int, signed int, signed int);
extern unsigned short v17 (signed char, unsigned int, unsigned short, signed int);
extern unsigned short (*v18) (signed char, unsigned int, unsigned short, signed int);
extern signed short v19 (unsigned char, signed char, signed char);
extern signed short (*v20) (unsigned char, signed char, signed char);
extern void v21 (signed int);
extern void (*v22) (signed int);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed short v25 (signed short, unsigned char, unsigned short, unsigned short);
extern signed short (*v26) (signed short, unsigned char, unsigned short, unsigned short);
extern void v27 (signed char, signed int, unsigned char);
extern void (*v28) (signed char, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v49 = 0U;
unsigned int v48 = 6U;
unsigned char v47 = 1;

unsigned char v11 (unsigned short v50, unsigned int v51, unsigned short v52, signed short v53)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
unsigned int v56 = 5U;
unsigned short v55 = 4;
signed int v54 = -2;
trace++;
switch (trace)
{
case 3: 
{
unsigned char v57;
signed char v58;
signed char v59;
signed short v60;
v57 = 5 - 5;
v58 = 3 + -1;
v59 = -2 - 3;
v60 = v19 (v57, v58, v59);
history[history_index++] = (int)v60;
}
break;
case 13: 
return 6;
default: abort ();
}
}
}
}

signed short v9 (signed short v61, unsigned int v62, unsigned int v63, unsigned int v64)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
signed char v67 = -3;
signed int v66 = -1;
unsigned char v65 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
