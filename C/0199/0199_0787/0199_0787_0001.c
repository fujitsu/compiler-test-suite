#include <stdlib.h>
extern unsigned char v1 (unsigned int);
extern unsigned char (*v2) (unsigned int);
extern unsigned short v3 (unsigned char, unsigned char);
extern unsigned short (*v4) (unsigned char, unsigned char);
extern unsigned int v5 (unsigned char, unsigned short, signed short);
extern unsigned int (*v6) (unsigned char, unsigned short, signed short);
extern unsigned char v7 (unsigned int, unsigned short, signed char);
extern unsigned char (*v8) (unsigned int, unsigned short, signed char);
extern signed char v9 (signed short, signed int, signed char);
extern signed char (*v10) (signed short, signed int, signed char);
extern unsigned int v11 (signed short);
extern unsigned int (*v12) (signed short);
extern void v13 (unsigned short, unsigned int, signed char, signed char);
extern void (*v14) (unsigned short, unsigned int, signed char, signed char);
extern signed char v15 (unsigned char);
extern signed char (*v16) (unsigned char);
extern void v17 (unsigned int, unsigned short, signed char);
extern void (*v18) (unsigned int, unsigned short, signed char);
unsigned char v19 (signed int, unsigned short, unsigned char);
unsigned char (*v20) (signed int, unsigned short, unsigned char) = v19;
extern unsigned short v21 (signed int, unsigned char);
extern unsigned short (*v22) (signed int, unsigned char);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern signed int v25 (signed short, unsigned char);
extern signed int (*v26) (signed short, unsigned char);
extern signed char v27 (unsigned char);
extern signed char (*v28) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v47 = 3;
unsigned short v46 = 3;
signed short v45 = 2;

unsigned char v19 (signed int v48, unsigned short v49, unsigned char v50)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
signed char v53 = 0;
signed int v52 = -4;
unsigned int v51 = 2U;
trace++;
switch (trace)
{
case 7: 
{
signed int v54;
unsigned char v55;
unsigned short v56;
v54 = v52 + v52;
v55 = 0 - 5;
v56 = v21 (v54, v55);
history[history_index++] = (int)v56;
}
break;
case 9: 
{
signed int v57;
unsigned char v58;
unsigned short v59;
v57 = v48 - v48;
v58 = 3 - 5;
v59 = v21 (v57, v58);
history[history_index++] = (int)v59;
}
break;
case 13: 
return 6;
default: abort ();
}
}
}
}
