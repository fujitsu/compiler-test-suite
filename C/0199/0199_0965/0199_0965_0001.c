#include <stdlib.h>
extern unsigned char v3 (unsigned int, signed char, signed short);
extern unsigned char (*v4) (unsigned int, signed char, signed short);
extern signed short v5 (signed int, signed short, unsigned char);
extern signed short (*v6) (signed int, signed short, unsigned char);
extern signed short v7 (unsigned char, unsigned char, signed char);
extern signed short (*v8) (unsigned char, unsigned char, signed char);
extern signed char v9 (signed int, signed char, unsigned short, signed char);
extern signed char (*v10) (signed int, signed char, unsigned short, signed char);
unsigned int v13 (unsigned int, signed char, signed short);
unsigned int (*v14) (unsigned int, signed char, signed short) = v13;
extern signed char v15 (signed int, unsigned char);
extern signed char (*v16) (signed int, unsigned char);
unsigned int v17 (unsigned char, unsigned char, signed short, signed short);
unsigned int (*v18) (unsigned char, unsigned char, signed short, signed short) = v17;
extern signed int v19 (unsigned int);
extern signed int (*v20) (unsigned int);
unsigned int v21 (signed short);
unsigned int (*v22) (signed short) = v21;
extern signed short v23 (unsigned short);
extern signed short (*v24) (unsigned short);
void v25 (unsigned short, unsigned short);
void (*v26) (unsigned short, unsigned short) = v25;
extern signed char v27 (signed char, unsigned char);
extern signed char (*v28) (signed char, unsigned char);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v73 = 3U;
signed short v72 = -3;
unsigned char v71 = 2;

void v25 (unsigned short v74, unsigned short v75)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
unsigned char v78 = 7;
signed int v77 = -4;
unsigned short v76 = 7;
trace++;
switch (trace)
{
case 2: 
return;
case 4: 
return;
case 6: 
return;
case 8: 
return;
default: abort ();
}
}
}
}

unsigned int v21 (signed short v79)
{
history[history_index++] = (int)v79;
{
for (;;) {
signed char v82 = -1;
signed char v81 = 1;
unsigned int v80 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (unsigned char v83, unsigned char v84, signed short v85, signed short v86)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
unsigned short v89 = 7;
signed short v88 = 3;
signed char v87 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (unsigned int v90, signed char v91, signed short v92)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
unsigned char v95 = 7;
signed char v94 = 1;
signed short v93 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
