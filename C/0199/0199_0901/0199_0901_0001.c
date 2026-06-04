#include <stdlib.h>
extern unsigned short v1 (signed short, unsigned char);
extern unsigned short (*v2) (signed short, unsigned char);
extern signed short v3 (signed char, unsigned char);
extern signed short (*v4) (signed char, unsigned char);
extern signed char v5 (signed int, signed short, unsigned short, unsigned int);
extern signed char (*v6) (signed int, signed short, unsigned short, unsigned int);
extern unsigned short v7 (signed char, unsigned char);
extern unsigned short (*v8) (signed char, unsigned char);
extern unsigned char v9 (signed short);
extern unsigned char (*v10) (signed short);
extern signed char v11 (signed int);
extern signed char (*v12) (signed int);
extern signed int v13 (void);
extern signed int (*v14) (void);
extern unsigned char v15 (unsigned short);
extern unsigned char (*v16) (unsigned short);
extern signed short v19 (signed char, signed char, signed short);
extern signed short (*v20) (signed char, signed char, signed short);
signed short v21 (signed short);
signed short (*v22) (signed short) = v21;
unsigned int v23 (signed int);
unsigned int (*v24) (signed int) = v23;
extern void v27 (signed short);
extern void (*v28) (signed short);
extern unsigned int v29 (signed char);
extern unsigned int (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v53 = 3U;
signed short v52 = 2;
signed int v51 = -1;

unsigned int v23 (signed int v54)
{
history[history_index++] = (int)v54;
{
for (;;) {
signed char v57 = 3;
signed int v56 = 1;
unsigned char v55 = 5;
trace++;
switch (trace)
{
case 7: 
return 2U;
case 9: 
{
signed short v58;
unsigned char v59;
unsigned short v60;
v58 = -3 + -1;
v59 = v55 + 2;
v60 = v1 (v58, v59);
history[history_index++] = (int)v60;
}
break;
case 11: 
return 2U;
default: abort ();
}
}
}
}

signed short v21 (signed short v61)
{
history[history_index++] = (int)v61;
{
for (;;) {
signed short v64 = 3;
unsigned short v63 = 6;
signed char v62 = 1;
trace++;
switch (trace)
{
case 2: 
return v61;
default: abort ();
}
}
}
}
