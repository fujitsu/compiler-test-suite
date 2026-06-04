#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern unsigned int v3 (unsigned int, signed short, signed short);
extern unsigned int (*v4) (unsigned int, signed short, signed short);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern unsigned int v7 (unsigned int);
extern unsigned int (*v8) (unsigned int);
unsigned short v9 (signed short, signed int, unsigned char);
unsigned short (*v10) (signed short, signed int, unsigned char) = v9;
extern unsigned short v11 (signed int, unsigned char);
extern unsigned short (*v12) (signed int, unsigned char);
extern signed int v13 (signed char);
extern signed int (*v14) (signed char);
extern unsigned int v15 (signed short, unsigned int);
extern unsigned int (*v16) (signed short, unsigned int);
extern void v17 (signed char, unsigned int, unsigned short);
extern void (*v18) (signed char, unsigned int, unsigned short);
extern unsigned int v19 (unsigned int, unsigned short, signed short, signed char);
extern unsigned int (*v20) (unsigned int, unsigned short, signed short, signed char);
extern signed int v21 (unsigned char, signed short);
extern signed int (*v22) (unsigned char, signed short);
extern signed char v23 (signed char);
extern signed char (*v24) (signed char);
extern unsigned int v25 (unsigned short);
extern unsigned int (*v26) (unsigned short);
extern void v27 (void);
extern void (*v28) (void);
extern unsigned short v29 (signed short, signed int, signed int, signed char);
extern unsigned short (*v30) (signed short, signed int, signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v55 = -4;
unsigned int v54 = 1U;
unsigned short v53 = 1;

unsigned short v9 (signed short v56, signed int v57, unsigned char v58)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
signed char v61 = 0;
unsigned char v60 = 2;
signed int v59 = -4;
trace++;
switch (trace)
{
case 5: 
{
signed short v62;
unsigned int v63;
unsigned int v64;
v62 = v56 - v56;
v63 = 0U - 5U;
v64 = v15 (v62, v63);
history[history_index++] = (int)v64;
}
break;
case 7: 
return 5;
case 9: 
{
unsigned int v65;
unsigned int v66;
v65 = 7U - 0U;
v66 = v7 (v65);
history[history_index++] = (int)v66;
}
break;
case 13: 
return 2;
default: abort ();
}
}
}
}
