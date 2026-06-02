#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern signed int v3 (signed short, unsigned int, unsigned int, signed char);
extern signed int (*v4) (signed short, unsigned int, unsigned int, signed char);
unsigned short v5 (void);
unsigned short (*v6) (void) = v5;
extern unsigned char v7 (signed int, unsigned int, signed char);
extern unsigned char (*v8) (signed int, unsigned int, signed char);
signed short v9 (signed int, unsigned char);
signed short (*v10) (signed int, unsigned char) = v9;
extern signed int v11 (void);
extern signed int (*v12) (void);
void v13 (signed char, signed char, signed int, unsigned short);
void (*v14) (signed char, signed char, signed int, unsigned short) = v13;
extern unsigned char v15 (signed short, signed short, unsigned short);
extern unsigned char (*v16) (signed short, signed short, unsigned short);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern signed char v23 (unsigned char, unsigned char, signed char);
extern signed char (*v24) (unsigned char, unsigned char, signed char);
extern signed char v25 (unsigned char);
extern signed char (*v26) (unsigned char);
extern signed short v27 (unsigned short);
extern signed short (*v28) (unsigned short);
signed short v29 (unsigned short, signed int);
signed short (*v30) (unsigned short, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v71 = 3U;
signed char v70 = 3;
unsigned int v69 = 5U;

signed short v29 (unsigned short v72, signed int v73)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
signed short v76 = 3;
unsigned int v75 = 4U;
unsigned short v74 = 1;
trace++;
switch (trace)
{
case 6: 
return v76;
default: abort ();
}
}
}
}

void v13 (signed char v77, signed char v78, signed int v79, unsigned short v80)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
unsigned char v83 = 0;
signed char v82 = -2;
unsigned short v81 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (signed int v84, unsigned char v85)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
unsigned int v88 = 6U;
unsigned char v87 = 7;
unsigned int v86 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (void)
{
{
for (;;) {
signed char v91 = -3;
signed int v90 = 2;
signed int v89 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
