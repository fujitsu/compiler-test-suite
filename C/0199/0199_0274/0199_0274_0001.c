#include <stdlib.h>
extern signed int v1 (unsigned int);
extern signed int (*v2) (unsigned int);
extern signed char v3 (void);
extern signed char (*v4) (void);
extern signed int v5 (unsigned int, unsigned char, signed short, unsigned char);
extern signed int (*v6) (unsigned int, unsigned char, signed short, unsigned char);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern unsigned short v9 (signed int);
extern unsigned short (*v10) (signed int);
extern void v11 (unsigned int, signed int, signed char);
extern void (*v12) (unsigned int, signed int, signed char);
extern unsigned int v13 (signed char);
extern unsigned int (*v14) (signed char);
extern unsigned short v15 (unsigned char, unsigned int, signed int);
extern unsigned short (*v16) (unsigned char, unsigned int, signed int);
extern signed char v19 (unsigned char);
extern signed char (*v20) (unsigned char);
extern signed int v21 (signed char, unsigned int, unsigned short, signed short);
extern signed int (*v22) (signed char, unsigned int, unsigned short, signed short);
extern signed int v23 (unsigned int);
extern signed int (*v24) (unsigned int);
extern signed char v25 (unsigned int, unsigned int);
extern signed char (*v26) (unsigned int, unsigned int);
extern signed short v27 (signed short);
extern signed short (*v28) (signed short);
void v29 (signed char, unsigned int, unsigned int, signed short);
void (*v30) (signed char, unsigned int, unsigned int, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v47 = 1;
signed char v46 = -2;
signed short v45 = -1;

void v29 (signed char v48, unsigned int v49, unsigned int v50, signed short v51)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
signed short v54 = -3;
signed short v53 = -1;
unsigned short v52 = 7;
trace++;
switch (trace)
{
case 5: 
return;
case 7: 
return;
case 9: 
return;
case 11: 
return;
default: abort ();
}
}
}
}
