#include <stdlib.h>
extern unsigned short v1 (unsigned int, signed short);
extern unsigned short (*v2) (unsigned int, signed short);
extern signed char v3 (unsigned int, signed char);
extern signed char (*v4) (unsigned int, signed char);
void v5 (unsigned char, signed short);
void (*v6) (unsigned char, signed short) = v5;
extern unsigned short v7 (unsigned short, unsigned short, unsigned short, signed char);
extern unsigned short (*v8) (unsigned short, unsigned short, unsigned short, signed char);
unsigned char v9 (unsigned char, unsigned char, signed char);
unsigned char (*v10) (unsigned char, unsigned char, signed char) = v9;
extern void v11 (signed short, signed char);
extern void (*v12) (signed short, signed char);
extern unsigned char v13 (unsigned short, signed int);
extern unsigned char (*v14) (unsigned short, signed int);
extern signed short v15 (unsigned int, unsigned char);
extern signed short (*v16) (unsigned int, unsigned char);
extern unsigned char v17 (signed int);
extern unsigned char (*v18) (signed int);
extern unsigned char v19 (signed short, unsigned int);
extern unsigned char (*v20) (signed short, unsigned int);
extern void v23 (void);
extern void (*v24) (void);
signed char v25 (signed int);
signed char (*v26) (signed int) = v25;
extern unsigned int v27 (signed char, unsigned char, signed char, unsigned char);
extern unsigned int (*v28) (signed char, unsigned char, signed char, unsigned char);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v89 = 2;
signed short v88 = -4;
signed short v87 = -1;

signed char v25 (signed int v90)
{
history[history_index++] = (int)v90;
{
for (;;) {
unsigned char v93 = 2;
unsigned char v92 = 5;
unsigned int v91 = 7U;
trace++;
switch (trace)
{
case 2: 
return -1;
case 6: 
return 2;
case 8: 
return -2;
default: abort ();
}
}
}
}

unsigned char v9 (unsigned char v94, unsigned char v95, signed char v96)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
signed char v99 = -3;
unsigned short v98 = 4;
signed short v97 = -2;
trace++;
switch (trace)
{
case 11: 
return v94;
default: abort ();
}
}
}
}

void v5 (unsigned char v100, signed short v101)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
signed short v104 = 1;
signed char v103 = 2;
unsigned int v102 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
