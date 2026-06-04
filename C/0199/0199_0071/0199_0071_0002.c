#include <stdlib.h>
extern unsigned int v1 (signed char, signed char, unsigned int, signed short);
extern unsigned int (*v2) (signed char, signed char, unsigned int, signed short);
void v3 (unsigned short, signed short);
void (*v4) (unsigned short, signed short) = v3;
extern void v5 (unsigned short);
extern void (*v6) (unsigned short);
extern signed char v7 (void);
extern signed char (*v8) (void);
signed int v9 (unsigned char);
signed int (*v10) (unsigned char) = v9;
extern signed int v11 (signed short);
extern signed int (*v12) (signed short);
extern signed int v13 (unsigned short, unsigned int, unsigned int);
extern signed int (*v14) (unsigned short, unsigned int, unsigned int);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern unsigned int v17 (signed int);
extern unsigned int (*v18) (signed int);
extern signed char v19 (unsigned int, unsigned int, unsigned short);
extern signed char (*v20) (unsigned int, unsigned int, unsigned short);
extern unsigned short v21 (signed short, signed char, signed char, signed int);
extern unsigned short (*v22) (signed short, signed char, signed char, signed int);
extern unsigned char v23 (signed short, signed int);
extern unsigned char (*v24) (signed short, signed int);
extern unsigned short v27 (unsigned int, signed char, unsigned int);
extern unsigned short (*v28) (unsigned int, signed char, unsigned int);
extern unsigned short v29 (unsigned short, unsigned short, unsigned short);
extern unsigned short (*v30) (unsigned short, unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v63 = 6;
signed short v62 = -1;
signed char v61 = -4;

signed int v9 (unsigned char v64)
{
history[history_index++] = (int)v64;
{
for (;;) {
signed char v67 = 2;
unsigned short v66 = 6;
unsigned int v65 = 4U;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v68;
v68 = 5 + 1;
v5 (v68);
}
break;
case 7: 
{
unsigned short v69;
v69 = v66 + v66;
v5 (v69);
}
break;
case 9: 
{
unsigned int v70;
unsigned int v71;
unsigned short v72;
signed char v73;
v70 = 7U + 3U;
v71 = v65 - v65;
v72 = v66 + v66;
v73 = v19 (v70, v71, v72);
history[history_index++] = (int)v73;
}
break;
case 13: 
return -4;
default: abort ();
}
}
}
}

void v3 (unsigned short v74, signed short v75)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
unsigned int v78 = 2U;
signed char v77 = -3;
signed short v76 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
