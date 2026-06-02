#include <stdlib.h>
extern signed short v1 (signed int);
extern signed short (*v2) (signed int);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern signed char v5 (unsigned int);
extern signed char (*v6) (unsigned int);
extern signed short v7 (void);
extern signed short (*v8) (void);
void v9 (unsigned int, unsigned int);
void (*v10) (unsigned int, unsigned int) = v9;
void v13 (signed int, signed char, unsigned char, signed int);
void (*v14) (signed int, signed char, unsigned char, signed int) = v13;
extern signed short v15 (signed short, unsigned int);
extern signed short (*v16) (signed short, unsigned int);
extern signed char v17 (signed short, signed char, unsigned char);
extern signed char (*v18) (signed short, signed char, unsigned char);
extern signed int v19 (signed short);
extern signed int (*v20) (signed short);
extern signed short v21 (unsigned short);
extern signed short (*v22) (unsigned short);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern unsigned int v25 (unsigned short);
extern unsigned int (*v26) (unsigned short);
extern signed char v27 (unsigned char, unsigned int, unsigned short);
extern signed char (*v28) (unsigned char, unsigned int, unsigned short);
extern unsigned int v29 (unsigned char, signed char, unsigned char);
extern unsigned int (*v30) (unsigned char, signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v88 = 7;
unsigned char v87 = 2;
unsigned short v86 = 1;

void v13 (signed int v89, signed char v90, unsigned char v91, signed int v92)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
signed int v95 = -2;
unsigned short v94 = 0;
unsigned short v93 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (unsigned int v96, unsigned int v97)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
unsigned char v100 = 4;
signed int v99 = 1;
signed int v98 = 0;
trace++;
switch (trace)
{
case 11: 
return;
default: abort ();
}
}
}
}
