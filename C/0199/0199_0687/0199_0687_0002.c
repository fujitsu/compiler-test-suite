#include <stdlib.h>
extern unsigned char v1 (signed int, signed char, signed int, unsigned char);
extern unsigned char (*v2) (signed int, signed char, signed int, unsigned char);
extern signed char v3 (void);
extern signed char (*v4) (void);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
void v7 (signed int, signed short, signed char);
void (*v8) (signed int, signed short, signed char) = v7;
extern void v9 (signed int, signed int, unsigned char);
extern void (*v10) (signed int, signed int, unsigned char);
unsigned int v11 (unsigned int, unsigned char, signed char);
unsigned int (*v12) (unsigned int, unsigned char, signed char) = v11;
extern signed char v13 (signed int);
extern signed char (*v14) (signed int);
extern signed char v15 (unsigned short, unsigned short, unsigned int);
extern signed char (*v16) (unsigned short, unsigned short, unsigned int);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern unsigned char v19 (signed char, unsigned int, signed short, unsigned char);
extern unsigned char (*v20) (signed char, unsigned int, signed short, unsigned char);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern unsigned short v27 (signed short, unsigned int, signed short);
extern unsigned short (*v28) (signed short, unsigned int, signed short);
extern unsigned char v29 (signed short, signed int);
extern unsigned char (*v30) (signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v69 = 0;
unsigned short v68 = 7;
unsigned char v67 = 2;

unsigned int v11 (unsigned int v70, unsigned char v71, signed char v72)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
unsigned int v75 = 3U;
unsigned char v74 = 1;
signed int v73 = -4;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v76;
unsigned short v77;
unsigned int v78;
signed char v79;
v76 = 3 - 7;
v77 = 5 - 5;
v78 = 0U - v75;
v79 = v15 (v76, v77, v78);
history[history_index++] = (int)v79;
}
break;
case 9: 
{
unsigned short v80;
unsigned short v81;
unsigned int v82;
signed char v83;
v80 = 6 + 1;
v81 = 4 + 7;
v82 = v75 + v75;
v83 = v15 (v80, v81, v82);
history[history_index++] = (int)v83;
}
break;
case 13: 
return 6U;
default: abort ();
}
}
}
}

void v7 (signed int v84, signed short v85, signed char v86)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
signed int v89 = 2;
signed short v88 = -3;
signed short v87 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
