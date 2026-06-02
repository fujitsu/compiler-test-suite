#include <stdlib.h>
extern signed char v1 (unsigned char, signed short, signed char, signed char);
extern signed char (*v2) (unsigned char, signed short, signed char, signed char);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern void v7 (void);
extern void (*v8) (void);
extern unsigned short v9 (signed char, unsigned char, signed char);
extern unsigned short (*v10) (signed char, unsigned char, signed char);
extern void v11 (unsigned short, signed short);
extern void (*v12) (unsigned short, signed short);
void v13 (unsigned int, signed int);
void (*v14) (unsigned int, signed int) = v13;
unsigned int v15 (signed short, signed int);
unsigned int (*v16) (signed short, signed int) = v15;
extern unsigned short v17 (signed int);
extern unsigned short (*v18) (signed int);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern void v21 (signed int);
extern void (*v22) (signed int);
extern unsigned short v23 (unsigned short, signed short);
extern unsigned short (*v24) (unsigned short, signed short);
extern signed char v25 (unsigned char);
extern signed char (*v26) (unsigned char);
extern signed int v27 (unsigned short, signed int, signed short);
extern signed int (*v28) (unsigned short, signed int, signed short);
extern unsigned int v29 (unsigned short, signed char, signed int);
extern unsigned int (*v30) (unsigned short, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v71 = 2;
signed int v70 = 1;
signed char v69 = -3;

unsigned int v15 (signed short v72, signed int v73)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
unsigned int v76 = 5U;
signed char v75 = -2;
unsigned int v74 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (unsigned int v77, signed int v78)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
unsigned short v81 = 5;
signed short v80 = -2;
unsigned char v79 = 2;
trace++;
switch (trace)
{
case 5: 
{
signed int v82;
v82 = -1 - v78;
v21 (v82);
}
break;
case 7: 
{
signed int v83;
v83 = v78 + -4;
v21 (v83);
}
break;
case 9: 
{
signed int v84;
v84 = -1 - -1;
v21 (v84);
}
break;
case 11: 
return;
case 13: 
return;
case 15: 
return;
default: abort ();
}
}
}
}
