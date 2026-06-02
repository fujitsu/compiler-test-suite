#include <stdlib.h>
extern unsigned short v1 (unsigned short, unsigned char);
extern unsigned short (*v2) (unsigned short, unsigned char);
extern signed char v3 (unsigned short, unsigned char);
extern signed char (*v4) (unsigned short, unsigned char);
extern unsigned char v5 (signed short);
extern unsigned char (*v6) (signed short);
extern unsigned short v9 (unsigned int, unsigned short);
extern unsigned short (*v10) (unsigned int, unsigned short);
extern unsigned short v11 (unsigned short, signed int);
extern unsigned short (*v12) (unsigned short, signed int);
extern unsigned char v13 (unsigned char, signed int, unsigned short);
extern unsigned char (*v14) (unsigned char, signed int, unsigned short);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern unsigned int v19 (signed short);
extern unsigned int (*v20) (signed short);
void v21 (unsigned short, signed short, unsigned short);
void (*v22) (unsigned short, signed short, unsigned short) = v21;
extern signed short v23 (unsigned short);
extern signed short (*v24) (unsigned short);
extern unsigned char v25 (unsigned char);
extern unsigned char (*v26) (unsigned char);
signed int v29 (signed int, signed short);
signed int (*v30) (signed int, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v68 = 1;
signed short v67 = -2;
signed int v66 = -4;

signed int v29 (signed int v69, signed short v70)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
unsigned short v73 = 2;
signed char v72 = -1;
signed int v71 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v21 (unsigned short v74, signed short v75, unsigned short v76)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
signed char v79 = -3;
signed char v78 = 1;
signed char v77 = -3;
trace++;
switch (trace)
{
case 9: 
return;
case 11: 
return;
default: abort ();
}
}
}
}
