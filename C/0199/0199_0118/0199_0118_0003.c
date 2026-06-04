#include <stdlib.h>
extern signed int v1 (unsigned short, signed short);
extern signed int (*v2) (unsigned short, signed short);
extern signed char v5 (signed char, signed short);
extern signed char (*v6) (signed char, signed short);
extern void v7 (unsigned int, unsigned char, unsigned short, unsigned int);
extern void (*v8) (unsigned int, unsigned char, unsigned short, unsigned int);
extern signed int v9 (unsigned char);
extern signed int (*v10) (unsigned char);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern signed char v15 (signed short, signed int);
extern signed char (*v16) (signed short, signed int);
extern signed char v17 (signed char, signed int, signed int);
extern signed char (*v18) (signed char, signed int, signed int);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern void v21 (signed short, signed char, unsigned int, unsigned char);
extern void (*v22) (signed short, signed char, unsigned int, unsigned char);
extern unsigned short v23 (unsigned char, unsigned char);
extern unsigned short (*v24) (unsigned char, unsigned char);
unsigned char v25 (signed int, signed char, unsigned short);
unsigned char (*v26) (signed int, signed char, unsigned short) = v25;
extern signed int v27 (signed short, signed short, signed char, unsigned int);
extern signed int (*v28) (signed short, signed short, signed char, unsigned int);
void v29 (unsigned int, signed int);
void (*v30) (unsigned int, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v88 = 6;
unsigned char v87 = 6;
signed short v86 = -4;

void v29 (unsigned int v89, signed int v90)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
signed char v93 = 3;
signed short v92 = 1;
signed short v91 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v25 (signed int v94, signed char v95, unsigned short v96)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
signed char v99 = 3;
unsigned short v98 = 6;
unsigned char v97 = 7;
trace++;
switch (trace)
{
case 2: 
return v97;
case 4: 
return v97;
case 7: 
return v97;
case 9: 
return v97;
default: abort ();
}
}
}
}
