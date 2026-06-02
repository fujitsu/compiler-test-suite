#include <stdlib.h>
extern unsigned char v1 (unsigned int);
extern unsigned char (*v2) (unsigned int);
extern signed int v3 (signed char, unsigned char, unsigned short);
extern signed int (*v4) (signed char, unsigned char, unsigned short);
extern unsigned short v5 (unsigned char);
extern unsigned short (*v6) (unsigned char);
extern unsigned char v7 (unsigned char, signed short, unsigned short, unsigned short);
extern unsigned char (*v8) (unsigned char, signed short, unsigned short, unsigned short);
extern void v9 (void);
extern void (*v10) (void);
extern unsigned short v11 (signed int, signed int, unsigned short, signed int);
extern unsigned short (*v12) (signed int, signed int, unsigned short, signed int);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern unsigned int v17 (signed short);
extern unsigned int (*v18) (signed short);
extern signed int v19 (unsigned char, signed short, unsigned short, signed char);
extern signed int (*v20) (unsigned char, signed short, unsigned short, signed char);
extern unsigned short v21 (unsigned short);
extern unsigned short (*v22) (unsigned short);
extern unsigned char v23 (signed int);
extern unsigned char (*v24) (signed int);
extern void v25 (unsigned short);
extern void (*v26) (unsigned short);
void v27 (void);
void (*v28) (void) = v27;
extern void v29 (unsigned int);
extern void (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v81 = 3;
unsigned char v80 = 1;
unsigned int v79 = 4U;

void v27 (void)
{
{
for (;;) {
signed int v84 = 2;
signed int v83 = 0;
unsigned short v82 = 0;
trace++;
switch (trace)
{
case 3: 
{
unsigned int v85;
v85 = 3U - 1U;
v29 (v85);
}
break;
case 5: 
{
signed int v86;
v86 = v15 ();
history[history_index++] = (int)v86;
}
break;
case 7: 
{
unsigned int v87;
v87 = 0U - 1U;
v29 (v87);
}
break;
case 9: 
{
signed int v88;
v88 = v15 ();
history[history_index++] = (int)v88;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}
