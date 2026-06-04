#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern unsigned short v3 (unsigned short, unsigned char, unsigned char, signed char);
extern unsigned short (*v4) (unsigned short, unsigned char, unsigned char, signed char);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned short v11 (unsigned int, unsigned char);
extern unsigned short (*v12) (unsigned int, unsigned char);
extern void v13 (void);
extern void (*v14) (void);
extern signed char v15 (unsigned char, signed char, signed short, unsigned char);
extern signed char (*v16) (unsigned char, signed char, signed short, unsigned char);
unsigned int v17 (void);
unsigned int (*v18) (void) = v17;
extern signed int v19 (void);
extern signed int (*v20) (void);
signed short v21 (void);
signed short (*v22) (void) = v21;
signed int v23 (unsigned int, unsigned int, unsigned char, unsigned short);
signed int (*v24) (unsigned int, unsigned int, unsigned char, unsigned short) = v23;
extern signed short v25 (void);
extern signed short (*v26) (void);
extern void v27 (void);
extern void (*v28) (void);
unsigned short v29 (signed short, unsigned char, signed short);
unsigned short (*v30) (signed short, unsigned char, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v88 = 3;
unsigned char v87 = 4;
unsigned char v86 = 3;

unsigned short v29 (signed short v89, unsigned char v90, signed short v91)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
unsigned short v94 = 5;
unsigned int v93 = 3U;
unsigned char v92 = 6;
trace++;
switch (trace)
{
case 5: 
return v94;
default: abort ();
}
}
}
}

signed int v23 (unsigned int v95, unsigned int v96, unsigned char v97, unsigned short v98)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
signed char v101 = 1;
unsigned char v100 = 1;
signed short v99 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v21 (void)
{
{
for (;;) {
unsigned short v104 = 2;
signed char v103 = -2;
unsigned int v102 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (void)
{
{
for (;;) {
signed char v107 = -4;
unsigned short v106 = 6;
unsigned char v105 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
